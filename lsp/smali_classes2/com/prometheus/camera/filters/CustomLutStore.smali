.class public final Lcom/prometheus/camera/filters/CustomLutStore;
.super Ljava/lang/Object;
.source "CustomLutStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/filters/CustomLutStore$Cube;,
        Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;
    }
.end annotation


# static fields
.field private static final EFFECT_NAMES:[Ljava/lang/String;

.field private static final ID_PREFIX:Ljava/lang/String; = "GALLERY_91"

.field private static final MAX_INPUT_BYTES:I = 0x1000000

.field private static final OUTPUT_SIZE:I = 0x40

.field private static final PREFS:Ljava/lang/String; = "prometheus_custom_luts"

.field public static final SLOT_COUNT:I = 0x42

.field private static final TAG:Ljava/lang/String; = "PrometheusCustomLut"

.field private static final TOKEN_PREFIX:Ljava/lang/String; = "prometheus_gallery_filter_"

.field private static final USER_ID_PREFIX:Ljava/lang/String; = "user-lut:"

.field private static volatile firstCustomOrdinal:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    const-string v4, "\u9ed1\u67d4"

    const-string v5, "\u767d\u67d4"

    const-string v0, "\u65e0"

    const-string v1, "\u9897\u7c92 \u00b7 \u8f7b"

    const-string v2, "\u9897\u7c92 \u00b7 \u4e2d"

    const-string v3, "\u9897\u7c92 \u00b7 \u5f3a"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/CustomLutStore;->EFFECT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableSlotCount(Landroid/content/Context;)I
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->configuredSlots(Landroid/content/Context;)[I

    move-result-object p0

    array-length p0, p0

    rsub-int/lit8 p0, p0, 0x42

    return p0
.end method

.method private static checkSlot(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x42

    if-gt p0, v0, :cond_0

    return-void

    .line 870
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u65e0\u6548\u69fd\u4f4d"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static cleanName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 832
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 833
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u81ea\u5b9a\u4e49 "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 834
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x18

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static declared-synchronized cloneLut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-class v0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter v0

    if-eqz p1, :cond_e

    .line 212
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 215
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x42

    const/4 v5, 0x0

    if-gt v3, v4, :cond_1

    .line 217
    const-string v4, "clone_key"

    invoke-static {v3, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v4

    goto :goto_3

    .line 228
    :cond_2
    invoke-static {p2}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForStableId(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    .line 230
    :cond_3
    invoke-static {v4}, Lcom/prometheus/camera/filters/PresetLutStore;->pathForRuntimeSlot(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_4

    goto :goto_2

    .line 231
    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_d

    .line 233
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 237
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->nextAvailableSlot(Landroid/content/Context;)I

    move-result v5

    .line 238
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 239
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 240
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u521b\u5efa LUT \u5b58\u50a8\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 242
    :cond_6
    :goto_4
    invoke-static {p0, v5}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v7

    .line 243
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ".png.clone.tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v9, v2, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4, v6, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 246
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 249
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x200

    if-ne v6, v9, :cond_9

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v9, :cond_9

    .line 252
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v9, v2, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v11

    invoke-static {v4, v6, v9}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    const/16 v4, 0x40

    if-nez v3, :cond_7

    goto :goto_5

    .line 255
    :cond_7
    const-string v6, "size"

    invoke-static {v3, v6}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 256
    :goto_5
    invoke-static {p3, v5}, Lcom/prometheus/camera/filters/CustomLutStore;->cleanName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "configured"

    .line 258
    invoke-static {v5, v6}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "name"

    .line 259
    invoke-static {v5, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v2, "source"

    .line 260
    invoke-static {v5, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "clone_key"

    .line 261
    invoke-static {v5, p3}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "size"

    .line 262
    invoke-static {v5, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "sha256"

    .line 263
    invoke-static {v5, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v7}, Lcom/prometheus/camera/filters/CustomLutStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "updated"

    .line 264
    invoke-static {v5, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 268
    invoke-static {p0, v5}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V

    .line 269
    invoke-static {v5}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    monitor-exit v0

    return-object p0

    .line 266
    :cond_8
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u63d0\u4ea4 LUT \u526f\u672c\u5143\u6570\u636e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u526f\u672c LUT \u8d44\u4ea7\u5b8c\u6574\u6027\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception p0

    .line 271
    :try_start_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 272
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 273
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "slot_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_a
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    .line 278
    :cond_b
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_c

    .line 280
    check-cast p0, Ljava/lang/RuntimeException;

    goto :goto_7

    .line 281
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u65e0\u6cd5\u521b\u5efa LUT \u526f\u672c"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_7
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 283
    :goto_8
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 284
    throw p0

    .line 234
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u6ee4\u955c\u4e0d\u662f\u53ef\u72ec\u7acb\u590d\u5236\u7684\u5355 LUT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u526f\u672c\u4e8b\u52a1\u6807\u8bc6\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static configuredSlots(Landroid/content/Context;)[I
    .locals 5

    .line 179
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->reconcile(Landroid/content/Context;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    const/16 v4, 0x42

    if-gt v2, v4, :cond_1

    .line 182
    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    new-array v2, v3, [I

    :goto_1
    if-gt v1, v4, :cond_3

    .line 187
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    aput v1, v2, v0

    move v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public static delete(Landroid/content/Context;I)V
    .locals 1

    .line 604
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    const/4 v0, 0x0

    .line 605
    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->setCatalogVisibility(Landroid/content/Context;IZ)V

    .line 606
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteOrphaned(Landroid/content/Context;I)V

    return-void
.end method

.method static deleteOrphaned(Landroid/content/Context;I)V
    .locals 5

    .line 610
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 611
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 614
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 616
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u5220\u9664 LUT \u6587\u4ef6"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 619
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V

    return-void

    .line 616
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u6e05\u9664 LUT \u5143\u6570\u636e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static deleteTree(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 851
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 852
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 853
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u65e0\u6cd5\u6e05\u7406\u4e34\u65f6\u8d44\u6e90"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static diffusionForGalleryId(I)I
    .locals 3

    .line 438
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GALLERY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->stableIdForRuntimeIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->diffusion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static diffusionForStableId(Ljava/lang/String;)I
    .locals 1

    .line 424
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    .line 425
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->stableIdForRuntimeIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->diffusion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static displayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 816
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 817
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 818
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 819
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    .line 817
    :cond_2
    :goto_0
    const-string p0, "\u81ea\u5b9a\u4e49 LUT"

    return-object p0
.end method

.method public static effect(Landroid/content/Context;I)I
    .locals 0

    .line 393
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEffectStore;->effect(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static effectForCatalogIndex(I)I
    .locals 3

    const/4 v0, 0x0

    .line 170
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->ids()[Ljava/lang/String;

    move-result-object v1

    if-ltz p0, :cond_1

    .line 171
    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    aget-object p0, v1, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->effectForGalleryId(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static effectForGalleryId(I)I
    .locals 1

    .line 397
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->effectForGalleryId(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static effectForStableId(Ljava/lang/String;)I
    .locals 3

    .line 402
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_2

    .line 404
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->runtimeSlotForId(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    invoke-static {v2}, Lcom/prometheus/camera/filters/PresetLutStore;->stableIdForRuntimeSlot(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 408
    invoke-static {v2}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 409
    :cond_1
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    goto :goto_1

    .line 411
    :cond_3
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->effect(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    .line 413
    :cond_4
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->effect(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public static effectNames()[Ljava/lang/String;
    .locals 1

    .line 502
    invoke-static {}, Lcom/prometheus/camera/filters/FilterEffectStore;->names()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized exportMetadata(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter v0

    .line 288
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 289
    const-string v2, "schema"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 291
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 292
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->configuredSlots(Landroid/content/Context;)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget v8, v4, v7

    .line 293
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 294
    const-string v10, "slot"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string v10, "name"

    invoke-static {p0, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v10, "source"

    const-string v11, "source"

    invoke-static {v8, v11}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v10, "size"

    const-string v11, "size"

    invoke-static {v8, v11}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v10, "effect"

    invoke-static {p0, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->effect(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v10, "sha256"

    invoke-static {p0, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lcom/prometheus/camera/filters/CustomLutStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v10, "updated"

    const-string v11, "updated"

    invoke-static {v8, v11}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v11, 0x0

    invoke-interface {v3, v8, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 303
    :cond_0
    const-string p0, "slots"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static fileForBackup(Landroid/content/Context;I)Ljava/io/File;
    .locals 0

    .line 308
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 309
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static firstCustomGalleryName()Ljava/lang/String;
    .locals 1

    const-string v0, "GALLERY_9101"

    return-object v0
.end method

.method private static firstCustomOrdinal()I
    .locals 7

    sget v0, Lcom/prometheus/camera/filters/CustomLutStore;->firstCustomOrdinal:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "o3.d"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "values"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/Enum;

    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->firstCustomGalleryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/prometheus/camera/filters/CustomLutStore;->firstCustomOrdinal:I

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/16 v0, 0x2a

    return v0
.end method

.method private static globalContext()Landroid/content/Context;
    .locals 1

    .line 782
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->applicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static grainForGalleryId(I)I
    .locals 3

    .line 431
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GALLERY_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->stableIdForRuntimeIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->grain(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static grainForStableId(Ljava/lang/String;)I
    .locals 1

    .line 417
    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->globalContext()Landroid/content/Context;

    move-result-object v0

    .line 418
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->stableIdForRuntimeIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->grain(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static idForSlot(I)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user-lut:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importCube(Landroid/content/Context;ILandroid/net/Uri;)Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 536
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 540
    :try_start_0
    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutStore;->parse(Ljava/io/InputStream;)Lcom/prometheus/camera/filters/CustomLutStore$Cube;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 543
    :cond_0
    invoke-static {v1}, Lcom/prometheus/camera/filters/CustomLutStore;->render(Lcom/prometheus/camera/filters/CustomLutStore$Cube;)[I

    move-result-object v0

    .line 544
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 546
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u521b\u5efa LUT \u5b58\u50a8\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 548
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v3

    .line 549
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "slot_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".png.tmp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 550
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".png.bak"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u6e05\u7406\u4e34\u65f6\u6587\u4ef6"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :cond_4
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x200

    invoke-static {v0, v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 554
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 555
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 558
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 560
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 562
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 563
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 565
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v7, v6, :cond_b

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v0, v6, :cond_b

    .line 570
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 571
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 572
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u6e05\u7406\u65e7\u5907\u4efd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 574
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v2, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v6

    invoke-static {v0, v7, v8}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 578
    :cond_7
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v2, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v6

    invoke-static {v0, v7, v8}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 579
    invoke-static {p2}, Lcom/prometheus/camera/filters/CustomLutStore;->displayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 580
    invoke-static {p2}, Lcom/prometheus/camera/filters/CustomLutStore;->stripCubeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "configured"

    .line 582
    invoke-static {p1, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "name"

    .line 583
    invoke-static {p1, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "source"

    .line 584
    invoke-static {p1, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v7, "size"

    .line 585
    invoke-static {p1, v7}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v7, "sha256"

    .line 586
    invoke-static {p1, v7}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Lcom/prometheus/camera/filters/CustomLutStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v7, "updated"

    .line 587
    invoke-static {p1, v7}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 588
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 589
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V

    .line 590
    invoke-static {p0, p1, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->setCatalogVisibility(Landroid/content/Context;IZ)V

    .line 591
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 592
    :cond_8
    new-instance p0, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;

    iget p1, v1, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    invoke-direct {p0, p1, v0}, Lcom/prometheus/camera/filters/CustomLutStore$ImportResult;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 599
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-object p0

    .line 588
    :cond_9
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58 LUT \u5143\u6570\u636e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 594
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 595
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 596
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v2, [Ljava/nio/file/CopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v1, v0, v6

    .line 595
    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 597
    :cond_a
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 599
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 600
    throw p0

    .line 566
    :cond_b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 567
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LUT PNG \u5b8c\u6574\u6027\u6821\u9a8c\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 556
    :cond_c
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LUT PNG \u7f16\u7801\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    .line 554
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p0

    .line 560
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    throw p0

    :catchall_4
    move-exception p0

    goto :goto_5

    .line 539
    :cond_d
    :try_start_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u65e0\u6cd5\u8bfb\u53d6\u6240\u9009\u6587\u4ef6"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_5
    if-eqz v0, :cond_e

    .line 538
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    throw p0
.end method

.method public static isConfigured(Landroid/content/Context;I)Z
    .locals 3

    .line 66
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 67
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "configured"

    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isConfiguredId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 94
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForStableId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCustomId(Ljava/lang/String;)Z
    .locals 1

    .line 100
    invoke-static {p0}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForStableId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

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

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slot_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static legacyDiffusion(Landroid/content/Context;I)I
    .locals 0

    .line 517
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->legacyEffect(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_0

    const/4 p1, 0x6

    if-gt p0, p1, :cond_0

    add-int/lit8 p0, p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static legacyEffect(Landroid/content/Context;I)I
    .locals 1

    .line 506
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 507
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "effect"

    invoke-static {p1, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    .line 508
    sget-object p1, Lcom/prometheus/camera/filters/CustomLutStore;->EFFECT_NAMES:[Ljava/lang/String;

    array-length p1, p1

    if-ge p0, p1, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method static legacyGrain(Landroid/content/Context;I)I
    .locals 0

    .line 512
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->legacyEffect(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    const/4 p1, 0x3

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lutFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    .line 797
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static mirrorLegacyEffect(Landroid/content/Context;II)V
    .locals 1

    .line 529
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 530
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "effect"

    invoke-static {p1, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 531
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u540c\u6b65\u7528\u6237 LUT \u9644\u52a0\u6548\u679c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static mirrorLegacyEffects(Landroid/content/Context;III)V
    .locals 0

    .line 523
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    if-eqz p3, :cond_0

    add-int/lit8 p2, p3, 0x3

    .line 525
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorLegacyEffect(Landroid/content/Context;II)V

    return-void
.end method

.method static mirrorName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 489
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 490
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 493
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V

    return-void

    .line 491
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u540c\u6b65\u6ee4\u955c\u540d\u79f0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mix(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static name(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 80
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 81
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u81ea\u5b9a\u4e49 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nameForEffectValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "diag-effect-label ordinal="

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 136
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x238d

    .line 137
    const-string v4, " result="

    const-string v5, "PrometheusCustomLut"

    if-lt v2, v3, :cond_4

    const/16 v3, 0x23ef

    if-gt v2, v3, :cond_4

    add-int/lit16 v2, v2, -0x238c

    .line 139
    :try_start_1
    invoke-static {v2}, Lcom/prometheus/camera/filters/PresetLutStore;->nameForRuntimeSlot(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    const-string v3, " runtimeSlot="

    const-string v6, "diag-effect-label value="

    if-eqz v0, :cond_1

    .line 141
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " preset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 145
    :cond_1
    invoke-static {v2}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v1

    .line 147
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userSlot="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " configured="

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 149
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {v5, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_4
    const p0, 0xffff

    and-int/2addr p0, v2

    .line 153
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->nameForOrdinal(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " value="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-object v2

    :catch_0
    :cond_6
    :goto_2
    return-object v1
.end method

.method public static nameForEffectValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/CustomLutStore;->nameForEffectValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nameForGalleryId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    add-int/lit16 p1, p1, -0x238c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->nameForRuntimeSlot(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 89
    :cond_1
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static nameForOrdinal(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/prometheus/camera/filters/CustomLutStore;->firstCustomOrdinal()I

    move-result v0

    sub-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prometheus/camera/filters/FilterRuntimePort;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 p0, p0, 0x238d

    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/CustomLutStore;->nameForGalleryId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static nextAvailableSlot(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x42

    if-gt v0, v1, :cond_1

    .line 194
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u81ea\u5b9a\u4e49 LUT \u6570\u91cf\u5df2\u8fbe\u5230\u76f8\u673a\u6ce8\u518c\u4e0a\u9650"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parse(Ljava/io/InputStream;)Lcom/prometheus/camera/filters/CustomLutStore$Cube;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    const-string v0, "DOMAIN_MIN"

    const/4 v1, 0x3

    .line 666
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v6, 0x2

    aput v4, v2, v6

    .line 667
    new-array v7, v1, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v3

    aput v8, v7, v5

    aput v8, v7, v6

    .line 668
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 670
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v13, p0

    invoke-direct {v11, v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const v12, 0x8000

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move v11, v3

    move v12, v11

    .line 673
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 674
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v5

    add-int/2addr v11, v14

    const/high16 v14, 0x1000000

    if-gt v11, v14, :cond_f

    .line 676
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 677
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "TITLE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto/16 :goto_5

    .line 680
    :cond_0
    const-string v14, "\\s+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 681
    aget-object v14, v13, v3

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 682
    const-string v15, "LUT_3D_SIZE"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 683
    array-length v14, v13

    if-ne v14, v6, :cond_2

    if-nez v12, :cond_2

    .line 684
    aget-object v12, v13, v5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x11

    if-eq v12, v13, :cond_e

    const/16 v13, 0x21

    if-eq v12, v13, :cond_e

    const/16 v13, 0x41

    if-ne v12, v13, :cond_1

    goto/16 :goto_5

    .line 686
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4ec5\u652f\u6301 17\u300133 \u6216 65 \u9636 3D LUT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LUT_3D_SIZE \u683c\u5f0f\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "DOMAIN_MAX"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    .line 692
    :cond_4
    const-string v15, "LUT_1D"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v12, :cond_9

    .line 696
    array-length v14, v13

    if-ne v14, v1, :cond_8

    .line 697
    array-length v14, v13

    move v15, v3

    :goto_1
    if-ge v15, v14, :cond_6

    aget-object v16, v13, v15

    .line 698
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 699
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isFinite(F)Z

    move-result v17

    if-eqz v17, :cond_5

    cmpg-float v17, v16, v4

    if-ltz v17, :cond_5

    cmpl-float v17, v16, v8

    if-gtz v17, :cond_5

    .line 702
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 700
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rec.709 LUT \u8f93\u51fa\u5fc5\u987b\u4f4d\u4e8e 0 \u5230 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int v13, v12, v12

    mul-int/2addr v13, v12

    mul-int/2addr v13, v1

    if-gt v3, v13, :cond_7

    goto :goto_5

    .line 705
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUBE \u6570\u636e\u884c\u8fc7\u591a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUBE \u6570\u636e\u884c\u683c\u5f0f\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6570\u636e\u51fa\u73b0\u5728 LUT_3D_SIZE \u4e4b\u524d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301 1D shaper LUT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_b
    :goto_2
    array-length v3, v13

    const/4 v15, 0x4

    if-ne v3, v15, :cond_d

    .line 690
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    goto :goto_3

    :cond_c
    move-object v3, v7

    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v1, :cond_e

    add-int/lit8 v15, v14, 0x1

    .line 691
    aget-object v16, v13, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    aput v16, v3, v14

    move v14, v15

    goto :goto_4

    .line 689
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 675
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUBE \u6587\u4ef6\u8d85\u8fc7 16 MB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :cond_10
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_12

    .line 711
    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_11

    aget v3, v7, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 712
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4ec5\u652f\u6301 DOMAIN 0\u20131 \u7684 Rec.709 LUT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    mul-int v0, v12, v12

    mul-int/2addr v0, v12

    mul-int/2addr v0, v1

    if-eqz v12, :cond_14

    .line 716
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_14

    .line 719
    new-array v1, v0, [F

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_13

    .line 720
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 721
    :cond_13
    new-instance v0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;

    invoke-direct {v0, v12, v1}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;-><init>(I[F)V

    return-object v0

    .line 717
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CUBE \u6570\u636e\u91cf\u4e0d\u5b8c\u6574"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 670
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1
.end method

.method public static pathForToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Resolved custom LUT slot "

    const/4 v1, 0x0

    const/16 v2, 0x1a

    .line 457
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p1, p1, -0x238c

    .line 461
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->pathForRuntimeSlot(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 463
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 464
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 467
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 469
    :cond_2
    const-string v2, "PrometheusCustomLut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "prometheus_custom_luts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized publishCatalog(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x42

    if-gt v1, v2, :cond_0

    .line 76
    :try_start_0
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 77
    :cond_0
    monitor-exit v0

    return-void
.end method

.method private static publishSlot(Landroid/content/Context;I)V
    .locals 9

    .line 623
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutStore;->runtimeIdForStableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterRuntimePort;->invalidateRuntimeLut(Ljava/lang/String;)V

    .line 624
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u521b\u5efa LUT \u63d0\u4ea4\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 628
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "slot_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".name"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".name.tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".commit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 631
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".commit.tmp"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    :try_start_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 634
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :try_start_1
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->name(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 636
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 639
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 640
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v7, v6, [Ljava/nio/file/CopyOption;

    sget-object v8, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v8, v7, v3

    .line 638
    invoke-static {v0, v1, v7}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 634
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 643
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 644
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 646
    :goto_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 647
    :try_start_5
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->lutFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 649
    :cond_3
    const-string p0, "deleted"

    .line 650
    :goto_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 651
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 652
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 654
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    .line 655
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v6, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v1, v3

    .line 653
    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_2
    move-exception p0

    .line 646
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 659
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 660
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e0\u6cd5\u53d1\u5e03 LUT \u4e8b\u52a1 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized reconcile(Landroid/content/Context;)I
    .locals 0

    const-class p0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter p0

    .line 72
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method private static render(Lcom/prometheus/camera/filters/CustomLutStore$Cube;)[I
    .locals 13

    const/high16 v0, 0x40000

    .line 725
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    int-to-float v4, v2

    .line 727
    iget v5, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x427c0000    # 63.0f

    div-float/2addr v4, v5

    move v7, v1

    :goto_1
    if-ge v7, v3, :cond_1

    int-to-float v8, v7

    .line 729
    iget v9, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    int-to-float v9, v9

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    div-float/2addr v8, v5

    move v9, v1

    :goto_2
    if-ge v9, v3, :cond_0

    int-to-float v10, v9

    .line 731
    iget v11, p0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    mul-float/2addr v10, v11

    div-float/2addr v10, v5

    .line 732
    invoke-static {p0, v10, v8, v4}, Lcom/prometheus/camera/filters/CustomLutStore;->sample(Lcom/prometheus/camera/filters/CustomLutStore$Cube;FFF)I

    move-result v10

    .line 733
    rem-int/lit8 v11, v2, 0x8

    mul-int/2addr v11, v3

    add-int/2addr v11, v9

    .line 734
    div-int/lit8 v12, v2, 0x8

    mul-int/2addr v12, v3

    add-int/2addr v12, v7

    mul-int/lit16 v12, v12, 0x200

    add-int/2addr v12, v11

    .line 735
    aput v10, v0, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static declared-synchronized restoreBackup(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-static {p1, p2}, Lcom/prometheus/camera/filters/CustomLutStore;->validateBackup(Lorg/json/JSONObject;Ljava/io/File;)V

    .line 315
    const-string v1, "slots"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 317
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 322
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "custom_luts.restore.bak"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-static {v2}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    .line 324
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v5, [Ljava/nio/file/CopyOption;

    invoke-static {v4, v6, v7}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v6, v5, [Ljava/nio/file/CopyOption;

    invoke-static {p2, v4, v6}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 328
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    move v4, v5

    .line 329
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_2

    .line 330
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 331
    const-string v8, "slot"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 332
    const-string v9, "configured"

    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "name"

    .line 333
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/prometheus/camera/filters/CustomLutStore;->cleanName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "source"

    .line 334
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "source"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "size"

    .line 335
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "size"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "effect"

    .line 336
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "effect"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "sha256"

    .line 337
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sha256"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "updated"

    .line 338
    invoke-static {v8, v9}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "updated"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 340
    :cond_2
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 341
    invoke-static {v2}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    :goto_1
    const/16 p1, 0x42

    if-gt v7, p1, :cond_3

    .line 343
    invoke-static {p0, v7}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 351
    :cond_3
    monitor-exit v0

    return-void

    .line 340
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u65e0\u6cd5\u6062\u590d LUT \u5143\u6570\u636e"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    .line 346
    :try_start_3
    invoke-static {v1}, Lcom/prometheus/camera/filters/CustomLutStore;->deleteTree(Ljava/io/File;)V

    .line 347
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v5, [Ljava/nio/file/CopyOption;

    invoke-static {p2, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 348
    :cond_5
    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->restorePreferences(Landroid/content/Context;Ljava/util/Map;)V

    .line 349
    throw p1

    .line 320
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u521b\u5efa LUT \u5b58\u50a8\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static restorePreferences(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 838
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 839
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 840
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 841
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 842
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 843
    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 844
    :cond_3
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 845
    :cond_4
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 847
    :cond_5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PrometheusCustomLut"

    const-string p1, "Cannot roll back LUT metadata"

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private static root(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 793
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "prometheus/custom_luts"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static runtimeIdForStableId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 105
    invoke-static {p0}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForStableId(Ljava/lang/String;)I

    move-result v0

    .line 106
    const-string v1, "GALLERY_"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x238c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForUserSlot(I)I

    move-result p0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 p0, p0, 0x238c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Custom LUT exceeds Camera runtime ABI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static runtimeSlotForId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 805
    const-string v1, "GALLERY_91"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 807
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, -0x238c

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/16 v1, 0x63

    if-gt p0, v1, :cond_1

    move v0, p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private static sample(Lcom/prometheus/camera/filters/CustomLutStore$Cube;FFF)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    float-to-int v4, v1

    float-to-int v5, v2

    float-to-int v6, v3

    add-int/lit8 v7, v4, 0x1

    .line 744
    iget v8, v0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    .line 745
    iget v9, v0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    .line 746
    iget v10, v0, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->size:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v10, v4

    sub-float/2addr v1, v10

    int-to-float v10, v5

    sub-float/2addr v2, v10

    int-to-float v10, v6

    sub-float/2addr v3, v10

    const/high16 v10, -0x1000000

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x3

    if-ge v12, v13, :cond_0

    .line 750
    invoke-virtual {v0, v4, v5, v6, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v13

    invoke-virtual {v0, v7, v5, v6, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v14

    invoke-static {v13, v14, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v13

    .line 751
    invoke-virtual {v0, v4, v8, v6, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v14

    invoke-virtual {v0, v7, v8, v6, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v15

    invoke-static {v14, v15, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v14

    .line 752
    invoke-virtual {v0, v4, v5, v9, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v15

    invoke-virtual {v0, v7, v5, v9, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v11

    invoke-static {v15, v11, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v11

    .line 753
    invoke-virtual {v0, v4, v8, v9, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v15

    move/from16 v16, v4

    invoke-virtual {v0, v7, v8, v9, v12}, Lcom/prometheus/camera/filters/CustomLutStore$Cube;->at(IIII)F

    move-result v4

    invoke-static {v15, v4, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v4

    .line 754
    invoke-static {v13, v14, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v13

    invoke-static {v11, v4, v2}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v4

    invoke-static {v13, v4, v3}, Lcom/prometheus/camera/filters/CustomLutStore;->mix(FFF)F

    move-result v4

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v4, v11

    .line 755
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v11, 0xff

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v11, 0x0

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v13, v12, 0x8

    rsub-int/lit8 v13, v13, 0x10

    shl-int/2addr v4, v13

    or-int/2addr v10, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    goto :goto_0

    :cond_0
    return v10
.end method

.method private static setCatalogVisibility(Landroid/content/Context;IZ)V
    .locals 4

    .line 766
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 767
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 770
    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 771
    iput-boolean p2, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    .line 777
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u5237\u65b0\u6ee4\u955c\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 776
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u81ea\u5b9a\u4e49\u6ee4\u955c\u69fd\u4f4d\u672a\u6ce8\u518c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEffect(Landroid/content/Context;II)V
    .locals 0

    .line 497
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 498
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/FilterEffectStore;->setEffect(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setName(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 477
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    if-nez p2, :cond_0

    .line 478
    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 479
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u81ea\u5b9a\u4e49 "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 480
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 481
    :cond_2
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 484
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->publishSlot(Landroid/content/Context;I)V

    .line 485
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->refreshRuntimeCatalog()Z

    return-void

    .line 482
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u6ee4\u955c\u540d\u79f0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 858
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const v1, 0x8000

    .line 859
    new-array v1, v1, [B

    .line 860
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 862
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    const/4 v3, 0x0

    if-ltz p0, :cond_0

    invoke-virtual {v0, v1, v3, p0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 864
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 865
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-byte v2, v0, v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%02x"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 866
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 860
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static slotForStableId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 117
    const-string v1, "user-lut:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 119
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_1

    const/16 v1, 0x42

    if-gt p0, v1, :cond_1

    move v0, p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static slotForToken(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 55
    const-string v1, "prometheus_gallery_filter_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    .line 58
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, -0x238c

    .line 59
    invoke-static {p0}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private static stableIdForRuntimeIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->runtimeSlotForId(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    .line 448
    :cond_1
    invoke-static {v1}, Lcom/prometheus/camera/filters/PresetLutStore;->stableIdForRuntimeSlot(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    .line 450
    :cond_2
    invoke-static {v1}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static stripCubeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 823
    const-string v0, "\u81ea\u5b9a\u4e49 LUT"

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 824
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".cube"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 825
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 827
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 828
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x18

    if-le p0, v1, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static summary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 386
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->isConfigured(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "\u672a\u914d\u7f6e"

    return-object p0

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "size"

    invoke-static {p1, v1}, Lcom/prometheus/camera/filters/CustomLutStore;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 388
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/CustomLutStore;->effect(Landroid/content/Context;I)I

    move-result p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u00b3 \u00b7 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/prometheus/camera/filters/CustomLutStore;->EFFECT_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tokenForSlot(I)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-static {p0}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prometheus_gallery_filter_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/prometheus/camera/filters/PresetLutStore;->runtimeSlotForUserSlot(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x238c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized validateBackup(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/filters/CustomLutStore;

    monitor-enter v0

    .line 355
    :try_start_0
    const-string v1, "schema"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 358
    const-string v1, "slots"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/16 v1, 0x43

    .line 359
    new-array v1, v1, [Z

    const/4 v3, 0x0

    .line 360
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 361
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 362
    const-string v5, "slot"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 363
    invoke-static {v5}, Lcom/prometheus/camera/filters/CustomLutStore;->checkSlot(I)V

    .line 364
    aget-boolean v6, v1, v5

    if-nez v6, :cond_4

    .line 365
    aput-boolean v2, v1, v5

    .line 366
    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 367
    const-string v7, "effect"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x11

    if-eq v6, v8, :cond_0

    const/16 v8, 0x21

    if-eq v6, v8, :cond_0

    const/16 v8, 0x41

    if-ne v6, v8, :cond_3

    :cond_0
    if-ltz v7, :cond_3

    .line 368
    sget-object v6, Lcom/prometheus/camera/filters/CustomLutStore;->EFFECT_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_3

    .line 372
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/prometheus/camera/filters/CustomLutStore;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sha256"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 377
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 379
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v7, 0x200

    if-ne v6, v7, :cond_1

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 380
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LUT \u56fe\u7247\u5c3a\u5bf8\u65e0\u6548\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LUT \u6587\u4ef6\u7f3a\u5931\u6216\u6821\u9a8c\u5931\u8d25\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5907\u4efd\u4e2d\u7684 LUT \u5143\u6570\u636e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5907\u4efd\u4e2d\u5b58\u5728\u91cd\u590d LUT \u69fd\u4f4d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_5
    monitor-exit v0

    return-void

    .line 356
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e0d\u652f\u6301\u7684\u81ea\u5b9a\u4e49\u8d44\u6e90\u7248\u672c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
