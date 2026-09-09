.class final Lcom/prometheus/camera/rev/GalleryV24043Bridge;
.super Ljava/lang/Object;
.source "GalleryV24043Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;
    }
.end annotation


# static fields
.field private static final FILTER_PATHS:Ljava/lang/String; = "Ob.l"

.field private static final FINAL_CATALOG_WRITER:Ljava/lang/String; = "Bd.i$a"

.field private static final LOCAL_CATALOG:Ljava/lang/String; = "qd.i"

.field private static final LOCAL_CATEGORY:Ljava/lang/String; = "ud.b"

.field private static final LOCAL_FILTER:Ljava/lang/String; = "ud.h"

.field private static final LOCAL_FILTER_ENTRY:Ljava/lang/String; = "ud.e"

.field private static volatile installed:Z

.field private static volatile registry:Lcom/prometheus/camera/rev/ContentRegistry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->ensureCustomCategory(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->ensureViewModelFilterEntries(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->isCustomCategory(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)Ljava/io/File;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->lutForId(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static countCustomFilterEntries(Ljava/util/List;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 532
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 533
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 534
    invoke-virtual {p2, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 535
    invoke-static {v1}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->lutForId(I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static ensureCustomCategory(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 292
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 294
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->requireRegistry()Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object v3

    .line 295
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 296
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v7, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    if-ne v5, v7, :cond_0

    return v6

    .line 300
    :cond_1
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const-class v15, Ljava/lang/String;

    const-class v16, Ljava/lang/String;

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->mediaEditorContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v4

    .line 305
    invoke-static {v4}, Lcom/prometheus/camera/rev/UnifiedFilterState;->read(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 306
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 307
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;

    .line 308
    iget-boolean v9, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->visible:Z

    if-nez v9, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    iget-object v9, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->sourceId:Ljava/lang/String;

    .line 310
    invoke-static {v3, v9}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->presetForStableId(Lcom/prometheus/camera/rev/ContentRegistry;Ljava/lang/String;)Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 315
    iget v10, v9, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->id:I

    .line 316
    invoke-static {v10}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->lutForId(I)Ljava/io/File;

    move-result-object v11

    .line 317
    iget-object v9, v9, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->label:Ljava/lang/String;

    goto :goto_1

    .line 319
    :cond_4
    iget-object v9, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->sourceId:Ljava/lang/String;

    invoke-static {v9}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->userSlot(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    .line 321
    :cond_5
    iget v10, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorFirstUserImportId:I

    add-int/2addr v10, v9

    sub-int/2addr v10, v2

    .line 322
    invoke-static {v10}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->lutForId(I)Ljava/io/File;

    move-result-object v11

    .line 323
    new-instance v12, Ljava/io/File;

    iget-object v13, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorUserImportRoot:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "slot_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x100

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    goto :goto_0

    .line 328
    :cond_6
    invoke-static {v3, v9}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->userImportLabel(Lcom/prometheus/camera/rev/ContentRegistry;I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    if-eqz v11, :cond_9

    .line 330
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 334
    invoke-static {v8}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->renderer(Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    .line 336
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PrometheusRev: MediaEditor projection withheld for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->id:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " because its configured native stages are not verified"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 344
    iget-object v14, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->label:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    iget-object v9, v8, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->label:Ljava/lang/String;

    :goto_2
    move-object v8, v9

    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v9, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 346
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    aget-object v18, v12, v6

    aget-object v19, v12, v2

    move-object v9, v10

    move-object v10, v13

    move-object v11, v8

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    filled-new-array/range {v9 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    .line 342
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 331
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate or missing MediaEditor runtime filter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return v6

    .line 350
    :cond_b
    const-class v1, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const-class v8, Ljava/util/List;

    filled-new-array {v1, v4, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 352
    iget-object v1, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryLabel:Ljava/lang/String;

    iget-object v4, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryStringResource:Ljava/lang/String;

    iget v3, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, ""

    filled-new-array {v1, v4, v3, v6, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private static ensureViewModelFilterEntries(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 459
    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 460
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 461
    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 464
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->requireRegistry()Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object v6

    .line 465
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 466
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    iget v11, v6, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    if-eqz v8, :cond_7

    .line 476
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 477
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 478
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v3, p0

    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 480
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_6

    .line 484
    check-cast v2, Ljava/util/Map;

    .line 485
    const-string v6, "filter_list"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2

    .line 487
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v6, "ud.a"

    const/4 v8, 0x0

    invoke-static {v6, v8, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Class;

    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 493
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 495
    invoke-static {v6, v8, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 496
    const-string v5, "d"

    invoke-virtual {v4, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 498
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 497
    invoke-static {v6, v8, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "e"

    .line 498
    invoke-virtual {v3, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v8

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 501
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v5, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 503
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 504
    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 505
    invoke-virtual {v4, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-ne v13, v10, :cond_3

    goto :goto_1

    .line 512
    :cond_4
    invoke-virtual {v3, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 514
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v10, 0x11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v10

    .line 513
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 518
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PrometheusRev: MediaEditor published filter_list contains "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-static {v7, v1, v4}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->countCustomFilterEntries(Ljava/util/List;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " custom LUTs (added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-object v7

    .line 481
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEditor filter repository is not a Map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEditor final catalog has no custom LUT category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static grainStrength(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 414
    const-string p0, "0.4"

    return-object p0

    .line 415
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MediaEditor grain strength"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_1
    const-string p0, "0.3"

    return-object p0

    .line 412
    :cond_2
    const-string p0, "0.2"

    return-object p0
.end method

.method static declared-synchronized install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge;

    monitor-enter v1

    .line 138
    :try_start_0
    sget-boolean v2, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->installed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    .line 139
    :cond_0
    :try_start_1
    sput-object p1, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->registry:Lcom/prometheus/camera/rev/ContentRegistry;

    .line 140
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->installUiProbe()V

    move-object/from16 v3, p1

    invoke-static {v0, v3}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->tryInstallStableFilterHook(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->installed:Z

    const-string v2, "PrometheusNRV: MediaEditor stable filter hook installed"

    invoke-static {v2}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    .line 141
    :cond_1
    const-string v2, "Ob.l"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 142
    const-string v4, "abi classes begin paths=Ob.l catalog=qd.i writer=Bd.i$a"

    invoke-static {v4}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 144
    const-string v4, "b"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    if-ne v2, v4, :cond_4

    .line 148
    const-string v2, "ud.b"

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 149
    const-string v2, "ud.h"

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 150
    const-string v2, "ud.e"

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 151
    const-string v2, "qd.i"

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 152
    const-string v4, "a"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 153
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    const-string v4, "Bd.i$a"

    .line 157
    invoke-static {v4, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 158
    const-string v4, "b"

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 159
    const-class v4, Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const-string v4, "invokeSuspend"

    const-class v10, Ljava/lang/Object;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    .line 163
    invoke-virtual {v8, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 164
    const-class v4, Ljava/lang/String;

    const-class v11, Ljava/lang/String;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    const-class v14, Ljava/util/List;

    filled-new-array {v4, v11, v12, v13, v14}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 166
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v17, Ljava/lang/String;

    const-class v18, Ljava/lang/String;

    const-class v19, Ljava/lang/String;

    filled-new-array/range {v11 .. v19}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 169
    const-string v4, "ud.a"

    .line 170
    invoke-static {v4, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Class;

    move-result-object v3

    .line 169
    invoke-virtual {v9, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 172
    new-instance v3, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;

    invoke-direct {v3, v6, v7}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 188
    new-instance v2, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v10, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 249
    const-string v2, "Ob.l"

    const-string v3, "b"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/prometheus/camera/rev/GalleryV24043Bridge$3;

    invoke-direct {v5}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$3;-><init>()V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v0, 0x1

    .line 267
    sput-boolean v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->installed:Z

    .line 268
    const-string v0, "filter bridge installed hooks=localCatalog,finalWriter,pathResolver"

    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    .line 269
    const-string v0, "PrometheusRev: installed MediaEditor 2.4.0.4.3 custom LUT adapter"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit v1

    return-void

    .line 160
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v2, "Bd.i$a#b:List"

    invoke-direct {v0, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v2, "qd.i#a():ArrayList"

    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v2, "Ob.l#b(int):String"

    invoke-direct {v0, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isCustomCategory(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 446
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 448
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 449
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 450
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->requireRegistry()Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object p1

    iget p1, p1, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private static lutForId(I)Ljava/io/File;
    .locals 4

    .line 273
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->requireRegistry()Lcom/prometheus/camera/rev/ContentRegistry;

    move-result-object v0

    .line 274
    iget-object v1, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorPresets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;

    .line 275
    iget v3, v2, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->id:I

    if-ne v3, p0, :cond_0

    .line 276
    new-instance p0, Ljava/io/File;

    iget-object v0, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorPresetRoot:Ljava/lang/String;

    iget-object v1, v2, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->file:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 279
    :cond_1
    iget v1, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorFirstUserImportId:I

    if-lt p0, v1, :cond_3

    iget v1, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorLastUserImportId:I

    if-le p0, v1, :cond_2

    goto :goto_0

    .line 281
    :cond_2
    iget v1, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorFirstUserImportId:I

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    .line 282
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorUserImportRoot:Ljava/lang/String;

    iget-object v0, v0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorUserImportFilePattern:Ljava/lang/String;

    const-string v3, "{slot}"

    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 284
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mediaEditorContext(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 362
    const-string v0, "qd.i"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 363
    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 366
    instance-of v0, p0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Landroid/content/Context;

    return-object p0

    .line 367
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaEditor context ABI unavailable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static presetForStableId(Lcom/prometheus/camera/rev/ContentRegistry;Ljava/lang/String;)Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;
    .locals 2

    .line 374
    iget-object p0, p0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorPresets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;

    .line 375
    iget-object v1, v0, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->stableId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static renderer(Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;)[Ljava/lang/String;
    .locals 4

    .line 394
    iget v0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->diffusion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    iget v1, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->grain:I

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "Leica;NoiseStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->grain:I

    .line 398
    invoke-static {v1}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->grainStrength(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    iget v1, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->diffusion:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    :cond_2
    iget p0, p0, Lcom/prometheus/camera/rev/UnifiedFilterState$Entry;->diffusion:I

    if-ne p0, v2, :cond_3

    const-string p0, "BlackMist"

    goto :goto_0

    :cond_3
    const-string p0, "WhiteMist"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";MixRatio=%f"

    .line 403
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-nez p0, :cond_5

    .line 406
    new-array p0, v3, [Ljava/lang/String;

    const-string v0, "LUT"

    aput-object v0, p0, v1

    const-string v0, ""

    aput-object v0, p0, v2

    goto :goto_1

    .line 407
    :cond_5
    new-array p0, v3, [Ljava/lang/String;

    const-string v3, "ADJUSTABLE"

    aput-object v3, p0, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    :goto_1
    return-object p0
.end method

.method private static requireRegistry()Lcom/prometheus/camera/rev/ContentRegistry;
    .locals 2

    .line 541
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->registry:Lcom/prometheus/camera/rev/ContentRegistry;

    if-eqz v0, :cond_0

    return-object v0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEditor content registry unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static tryInstallStableFilterHook(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)Z
    .locals 7

    :try_start_0
    const-string v0, "ms.k"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v1, "a"

    new-instance v3, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-static {v0, v3, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v0, 0x1

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static userImportLabel(Lcom/prometheus/camera/rev/ContentRegistry;I)Ljava/lang/String;
    .locals 5

    .line 420
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorUserImportRoot:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "slot_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x100

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    .line 423
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sub-int v4, v1, v0

    .line 426
    :try_start_1
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-ne v0, v1, :cond_2

    .line 431
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 434
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 423
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    .line 434
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrometheusRev: cannot read LUT label slot "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 436
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    .line 439
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorUserImportLabelPattern:Ljava/lang/String;

    const-string v0, "{slot}"

    .line 440
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static userSlot(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 381
    const-string v1, "user-lut:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 383
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

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
