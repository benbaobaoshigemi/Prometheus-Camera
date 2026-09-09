.class public final Ls/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appfunctions/internal/SchemaAppFunctionInventory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lxw/a;->a:I

    sget-object v0, Lxw/c;->d:Lxw/c;

    const-string/jumbo v1, "unit"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    int-to-long v1, v2

    sget-object v3, Lxw/c;->b:Lxw/c;

    invoke-static {v1, v2, v0, v3}, LIv/c;->g(JLxw/c;Lxw/c;)J

    sget v0, Lxw/b;->a:I

    goto :goto_0

    :cond_0
    int-to-long v1, v2

    invoke-static {v1, v2, v0}, LEw/x;->e(JLxw/c;)J

    :goto_0
    new-instance v0, Lx/o$a;

    invoke-direct {v0}, Lx/o$a;-><init>()V

    const-string v1, "app_functions_runtime"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lx/o$a;->c()V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lx/o$a;->c()V

    iget-object v2, v0, Lx/o$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-class v1, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lx/o$a;->c()V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lx/o$a;->c()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lx/e;->a()Lx/e;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lx/e;->b(Ljava/lang/Class;)Lx/d;

    move-result-object v4

    invoke-interface {v4}, Lx/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lx/o$a;->c()V

    iget-object v1, v0, Lx/o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lx/o$a;->c()V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lx/o$a;->c()V

    iget-object v2, v0, Lx/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "VERBATIM_SEARCH"

    invoke-virtual {v0, v1}, Lx/o$a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lx/o$a;->a()Lx/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appfunctions/internal/SchemaAppFunctionInventory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/f;->a:Landroid/content/Context;

    iput-object p2, p0, Ls/f;->b:Landroidx/appfunctions/internal/SchemaAppFunctionInventory;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;LVu/c;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-class v2, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;

    const-string v3, " to "

    const-string v4, "Failed to convert search result "

    const-class v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;

    const-string v6, "AppFunctions"

    instance-of v7, v0, Ls/d;

    if-eqz v7, :cond_0

    move-object v7, v0

    check-cast v7, Ls/d;

    iget v8, v7, Ls/d;->n:I

    const/high16 v9, -0x80000000

    and-int v10, v8, v9

    if-eqz v10, :cond_0

    sub-int/2addr v8, v9

    iput v8, v7, Ls/d;->n:I

    goto :goto_0

    :cond_0
    new-instance v7, Ls/d;

    invoke-direct {v7, v1, v0}, Ls/d;-><init>(Ls/f;LVu/c;)V

    :goto_0
    iget-object v0, v7, Ls/d;->l:Ljava/lang/Object;

    sget-object v8, LUu/a;->a:LUu/a;

    iget v9, v7, Ls/d;->n:I

    const/4 v10, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v9, :cond_5

    if-eq v9, v10, :cond_4

    if-eq v9, v14, :cond_3

    if-eq v9, v13, :cond_2

    if-ne v9, v12, :cond_1

    iget-object v1, v7, Ls/d;->k:Lu/r;

    iget-object v2, v7, Ls/d;->j:Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;

    iget-object v3, v7, Ls/d;->i:Ljava/lang/String;

    iget-object v4, v7, Ls/d;->h:Ls/f;

    iget-object v5, v7, Ls/d;->g:Lu/q;

    iget-object v6, v7, Ls/d;->f:Ljava/util/List;

    iget-object v8, v7, Ls/d;->e:Ljava/lang/Object;

    check-cast v8, Lu/r;

    iget-object v9, v7, Ls/d;->d:Ljava/lang/Object;

    check-cast v9, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;

    iget-object v12, v7, Ls/d;->c:Ljava/lang/Object;

    check-cast v12, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;

    iget-object v13, v7, Ls/d;->b:Ljava/lang/String;

    iget-object v7, v7, Ls/d;->a:Ljava/lang/String;

    invoke-static {v0}, LPu/l;->b(Ljava/lang/Object;)V

    move-object/from16 p3, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v12

    move-object/from16 v12, p3

    move-object v11, v6

    move-object v10, v8

    move-object v8, v13

    const/16 p3, 0x0

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v9, v7, Ls/d;->e:Ljava/lang/Object;

    check-cast v9, Lx/a;

    iget-object v13, v7, Ls/d;->d:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/16 p3, 0x0

    iget-object v15, v7, Ls/d;->c:Ljava/lang/Object;

    check-cast v15, Lx/j;

    iget-object v11, v7, Ls/d;->b:Ljava/lang/String;

    iget-object v12, v7, Ls/d;->a:Ljava/lang/String;

    invoke-static {v0}, LPu/l;->b(Ljava/lang/Object;)V

    move-object v1, v9

    move-object v9, v12

    move-object v12, v11

    goto/16 :goto_4

    :cond_3
    const/16 p3, 0x0

    iget-object v9, v7, Ls/d;->d:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v11, v7, Ls/d;->c:Ljava/lang/Object;

    check-cast v11, Lx/j;

    iget-object v12, v7, Ls/d;->b:Ljava/lang/String;

    iget-object v15, v7, Ls/d;->a:Ljava/lang/String;

    invoke-static {v0}, LPu/l;->b(Ljava/lang/Object;)V

    move-object v13, v9

    move-object v9, v15

    :goto_1
    move-object v15, v11

    goto/16 :goto_3

    :cond_4
    const/16 p3, 0x0

    iget-object v9, v7, Ls/d;->b:Ljava/lang/String;

    iget-object v11, v7, Ls/d;->a:Ljava/lang/String;

    invoke-static {v0}, LPu/l;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move-object v11, v0

    move-object/from16 v0, v18

    goto :goto_2

    :cond_5
    const/16 p3, 0x0

    invoke-static {v0}, LPu/l;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    iput-object v0, v7, Ls/d;->a:Ljava/lang/String;

    move-object/from16 v9, p2

    iput-object v9, v7, Ls/d;->b:Ljava/lang/String;

    iput v10, v7, Ls/d;->n:I

    iget-object v11, v1, Ls/f;->a:Landroid/content/Context;

    invoke-static {v11, v7}, Ls/j;->a(Landroid/content/Context;LVu/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v8, :cond_6

    goto/16 :goto_f

    :cond_6
    :goto_2
    check-cast v11, Lx/j;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2f

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v13, Lx/i;

    const-string v14, "app_functions"

    invoke-direct {v13, v14, v15, v10}, Lx/i;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    const-string v10, "apps-db"

    invoke-interface {v11, v10, v13}, Lx/j;->n(Ljava/lang/String;Lx/i;)LL/f;

    move-result-object v10

    iput-object v0, v7, Ls/d;->a:Ljava/lang/String;

    iput-object v9, v7, Ls/d;->b:Ljava/lang/String;

    iput-object v11, v7, Ls/d;->c:Ljava/lang/Object;

    iput-object v12, v7, Ls/d;->d:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v7, Ls/d;->n:I

    invoke-static {v10, v7}, LDw/b;->a(Lle/b;LVu/c;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_7

    goto/16 :goto_f

    :cond_7
    move-object v13, v12

    move-object v12, v9

    move-object v9, v0

    move-object v0, v10

    goto :goto_1

    :goto_3
    check-cast v0, Lx/a;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v14, Lx/i;

    const-string v1, "app_functions_runtime"

    invoke-direct {v14, v1, v10, v11}, Lx/i;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    const-string v1, "appfunctions-db"

    invoke-interface {v15, v1, v14}, Lx/j;->n(Ljava/lang/String;Lx/i;)LL/f;

    move-result-object v1

    iput-object v9, v7, Ls/d;->a:Ljava/lang/String;

    iput-object v12, v7, Ls/d;->b:Ljava/lang/String;

    iput-object v15, v7, Ls/d;->c:Ljava/lang/Object;

    iput-object v13, v7, Ls/d;->d:Ljava/lang/Object;

    iput-object v0, v7, Ls/d;->e:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v7, Ls/d;->n:I

    invoke-static {v1, v7}, LDw/b;->a(Lle/b;LVu/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_8

    goto/16 :goto_f

    :cond_8
    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    :goto_4
    check-cast v0, Lx/a;

    iget-object v1, v1, Lx/a;->a:LJ/a;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/h;

    const-string v10, " is not available under "

    const-string v11, "Function "

    if-eqz v1, :cond_27

    iget-object v0, v0, Lx/a;->a:LJ/a;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lx/h;

    if-eqz v13, :cond_26

    :try_start_0
    sget-object v0, Lx/f;->c:Lx/f;

    invoke-virtual {v1, v5, v0}, Lx/h;->k(Ljava/lang/Class;Lx/f;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v11, v11, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lfv/C;->a:Lfv/D;

    invoke-virtual {v11, v5}, Lfv/D;->b(Ljava/lang/Class;)Lmv/c;

    move-result-object v5

    invoke-interface {v5}, Lmv/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p3

    :goto_5
    move-object v5, v0

    check-cast v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;

    if-nez v5, :cond_9

    goto/16 :goto_13

    :cond_9
    :try_start_1
    sget-object v0, Lx/f;->c:Lx/f;

    invoke-virtual {v13, v2, v0}, Lx/h;->k(Ljava/lang/Class;Lx/f;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v13, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v4, v4, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lfv/C;->a:Lfv/D;

    invoke-virtual {v3, v2}, Lfv/D;->b(Ljava/lang/Class;)Lmv/c;

    move-result-object v2

    invoke-interface {v2}, Lmv/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p3

    :goto_6
    check-cast v0, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;

    if-nez v0, :cond_a

    goto/16 :goto_13

    :cond_a
    const-string/jumbo v2, "schemaName"

    invoke-virtual {v1, v2}, Lx/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "schemaCategory"

    invoke-virtual {v1, v3}, Lx/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "schemaVersion"

    invoke-virtual {v1, v4}, Lx/h;->f(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    cmp-long v1, v10, v13

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    new-instance v1, Lu/r;

    invoke-direct {v1, v3, v2, v10, v11}, Lu/r;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_8

    :cond_c
    :goto_7
    if-nez v2, :cond_d

    if-nez v3, :cond_d

    cmp-long v1, v10, v13

    if-eqz v1, :cond_e

    :cond_d
    const-string v1, "Unexpected state: schemaName="

    const-string v4, ", schemaCategory="

    const-string v13, ", schemaVersion="

    invoke-static {v1, v2, v4, v3, v13}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v1, p3

    :goto_8
    iget-object v2, v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;->h:Landroidx/appfunctions/metadata/AppFunctionResponseMetadataDocument;

    if-eqz v2, :cond_f

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v2, p0

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    goto :goto_9

    :goto_a
    iget-object v4, v2, Ls/f;->b:Landroidx/appfunctions/internal/SchemaAppFunctionInventory;

    const-string v6, ""

    if-eqz v3, :cond_13

    iget-object v3, v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_12

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v3}, LQu/n;->V(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appfunctions/metadata/AppFunctionParameterMetadataDocument;

    new-instance v13, Lu/n;

    iget-object v14, v11, Landroidx/appfunctions/metadata/AppFunctionParameterMetadataDocument;->e:Landroidx/appfunctions/metadata/AppFunctionDataTypeMetadataDocument;

    invoke-virtual {v14}, Landroidx/appfunctions/metadata/AppFunctionDataTypeMetadataDocument;->a()Lu/f;

    move-result-object v14

    move-object/from16 p1, v3

    iget-object v3, v11, Landroidx/appfunctions/metadata/AppFunctionParameterMetadataDocument;->f:Ljava/lang/String;

    if-nez v3, :cond_10

    move-object v3, v6

    :cond_10
    move-object/from16 v17, v4

    iget-object v4, v11, Landroidx/appfunctions/metadata/AppFunctionParameterMetadataDocument;->c:Ljava/lang/String;

    iget-boolean v11, v11, Landroidx/appfunctions/metadata/AppFunctionParameterMetadataDocument;->d:Z

    invoke-direct {v13, v4, v11, v14, v3}, Lu/n;-><init>(Ljava/lang/String;ZLu/f;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move-object/from16 v4, v17

    goto :goto_b

    :cond_11
    move-object/from16 v17, v4

    move-object v3, v10

    goto :goto_c

    :cond_12
    move-object/from16 v17, v4

    sget-object v3, LQu/w;->a:LQu/w;

    goto :goto_c

    :cond_13
    move-object/from16 v17, v4

    if-nez v1, :cond_15

    :cond_14
    move-object/from16 v3, p3

    goto :goto_c

    :cond_15
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Landroidx/appfunctions/internal/SchemaAppFunctionInventory;->getSchemaFunctionsMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/u;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lu/u;->d:Ljava/util/List;

    :goto_c
    if-nez v3, :cond_16

    goto/16 :goto_13

    :cond_16
    iget-object v4, v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;->h:Landroidx/appfunctions/metadata/AppFunctionResponseMetadataDocument;

    if-eqz v4, :cond_19

    if-eqz v4, :cond_18

    new-instance v10, Lu/q;

    iget-object v11, v4, Landroidx/appfunctions/metadata/AppFunctionResponseMetadataDocument;->c:Landroidx/appfunctions/metadata/AppFunctionDataTypeMetadataDocument;

    invoke-virtual {v11}, Landroidx/appfunctions/metadata/AppFunctionDataTypeMetadataDocument;->a()Lu/f;

    move-result-object v11

    iget-object v4, v4, Landroidx/appfunctions/metadata/AppFunctionResponseMetadataDocument;->d:Ljava/lang/String;

    if-nez v4, :cond_17

    goto :goto_d

    :cond_17
    move-object v6, v4

    :goto_d
    invoke-direct {v10, v11, v6}, Lu/q;-><init>(Lu/f;Ljava/lang/String;)V

    move-object v4, v10

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-nez v1, :cond_1b

    :cond_1a
    move-object/from16 v4, p3

    goto :goto_e

    :cond_1b
    if-eqz v17, :cond_1a

    invoke-virtual/range {v17 .. v17}, Landroidx/appfunctions/internal/SchemaAppFunctionInventory;->getSchemaFunctionsMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu/u;

    if-eqz v4, :cond_1a

    iget-object v4, v4, Lu/u;->e:Lu/q;

    :goto_e
    if-nez v4, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-static {v12}, LGz/c;->h(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    iput-object v9, v7, Ls/d;->a:Ljava/lang/String;

    iput-object v12, v7, Ls/d;->b:Ljava/lang/String;

    iput-object v5, v7, Ls/d;->c:Ljava/lang/Object;

    iput-object v0, v7, Ls/d;->d:Ljava/lang/Object;

    iput-object v1, v7, Ls/d;->e:Ljava/lang/Object;

    iput-object v3, v7, Ls/d;->f:Ljava/util/List;

    iput-object v4, v7, Ls/d;->g:Lu/q;

    iput-object v2, v7, Ls/d;->h:Ls/f;

    iput-object v12, v7, Ls/d;->i:Ljava/lang/String;

    iput-object v5, v7, Ls/d;->j:Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;

    iput-object v1, v7, Ls/d;->k:Lu/r;

    const/4 v10, 0x4

    iput v10, v7, Ls/d;->n:I

    invoke-virtual {v2, v15, v6, v7}, Ls/f;->b(Lx/j;Ljava/util/Set;LVu/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_1d

    :goto_f
    return-object v8

    :cond_1d
    move-object v10, v1

    move-object v11, v3

    move-object v7, v9

    move-object v3, v12

    move-object v8, v3

    move-object v9, v0

    move-object v12, v4

    move-object v4, v5

    move-object v0, v6

    :goto_10
    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;->h:Landroidx/appfunctions/metadata/AppFunctionResponseMetadataDocument;

    if-eqz v5, :cond_1f

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/e;

    if-nez v0, :cond_1e

    new-instance v0, Lu/e;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lu/e;-><init>(I)V

    :goto_11
    move-object v13, v0

    goto :goto_12

    :cond_1e
    const/4 v3, 0x0

    goto :goto_11

    :cond_1f
    const/4 v3, 0x0

    if-nez v1, :cond_21

    :cond_20
    move-object/from16 v13, p3

    goto :goto_12

    :cond_21
    iget-object v0, v2, Ls/f;->b:Landroidx/appfunctions/internal/SchemaAppFunctionInventory;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroidx/appfunctions/internal/SchemaAppFunctionInventory;->getComponentsMetadata()Lu/e;

    move-result-object v0

    goto :goto_11

    :goto_12
    if-nez v13, :cond_22

    :goto_13
    return-object p3

    :cond_22
    new-instance v6, Lu/k;

    iget-wide v0, v9, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;->e:J

    long-to-int v0, v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    move v9, v3

    goto :goto_14

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AppFunction state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v9, Landroidx/appfunctions/metadata/AppFunctionRuntimeMetadata;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move v9, v1

    goto :goto_14

    :cond_25
    iget-boolean v0, v4, Landroidx/appfunctions/metadata/AppFunctionMetadataDocument;->c:Z

    move v9, v0

    :goto_14
    const/16 v15, 0x180

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v15}, Lu/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZLu/r;Ljava/util/List;Lu/q;Lu/e;Ljava/lang/String;I)V

    return-object v6

    :cond_26
    new-instance v0, Lr/j;

    invoke-static {v11, v9, v10, v12}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Lr/j;

    invoke-static {v11, v9, v10, v12}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lx/j;Ljava/util/Set;LVu/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Ls/e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ls/e;

    iget v1, v0, Ls/e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ls/e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ls/e;

    invoke-direct {v0, p0, p3}, Ls/e;-><init>(Ls/f;LVu/c;)V

    :goto_0
    iget-object p3, v0, Ls/e;->b:Ljava/lang/Object;

    sget-object v1, LUu/a;->a:LUu/a;

    iget v2, v0, Ls/e;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ls/e;->a:Ljava/util/LinkedHashMap;

    invoke-static {p3}, LPu/l;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LPu/l;->b(Ljava/lang/Object;)V

    new-instance p3, Lx/o$a;

    invoke-direct {p3}, Lx/o$a;-><init>()V

    const-string v2, "app_functions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lx/o$a;->c()V

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lx/o$a;->c()V

    iget-object v4, p3, Lx/o$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez p2, :cond_3

    sget-object p2, LQu/y;->a:LQu/y;

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AppFunctionComponentMetadataDocument-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, LQu/r;->g0(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lx/o$a;->c()V

    iget-object p2, p3, Lx/o$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p2, "android"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lx/o$a;->c()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lx/o$a;->c()V

    iget-object v2, p3, Lx/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p2, "VERBATIM_SEARCH"

    invoke-virtual {p3, p2}, Lx/o$a;->b(Ljava/lang/String;)V

    const-string p2, "NUMERIC_SEARCH"

    invoke-virtual {p3, p2}, Lx/o$a;->b(Ljava/lang/String;)V

    const-string p2, "LIST_FILTER_QUERY_LANGUAGE"

    invoke-virtual {p3, p2}, Lx/o$a;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lx/o$a;->a()Lx/o;

    move-result-object p2

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1, p2}, Lx/j;->R(Lx/o;)Lz/f;

    move-result-object p1

    new-instance p2, Ls/c;

    const/4 v2, 0x0

    invoke-direct {p2, v2, p0, p3}, Ls/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, v0, Ls/e;->a:Ljava/util/LinkedHashMap;

    iput v3, v0, Ls/e;->d:I

    invoke-static {p1, p2, v0}, Ls/j;->b(Lx/n;Ls/c;LVu/c;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    return-object p3
.end method
