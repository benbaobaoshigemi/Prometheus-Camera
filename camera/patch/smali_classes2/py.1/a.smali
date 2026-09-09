.class public final Lpy/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static o:Z

.field public static p:[I

.field public static q:[I

.field public static r:I


# instance fields
.field public final a:Z

.field public volatile b:Z

.field public final c:Landroid/view/Display;

.field public final d:Landroid/view/Window;

.field public e:Z

.field public f:I

.field public g:J

.field public h:I

.field public i:J

.field public j:Z

.field public k:I

.field public l:I

.field public final m:Lmiuix/recyclerview/widget/RecyclerView;

.field public n:Lpy/c;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;)V
    .locals 10

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpy/a;->b:Z

    iput-boolean v1, p0, Lpy/a;->e:Z

    iput v1, p0, Lpy/a;->f:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lpy/a;->g:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lpy/a;->i:J

    iput-boolean v1, p0, Lpy/a;->j:Z

    iput v1, p0, Lpy/a;->k:I

    const/4 v2, -0x1

    iput v2, p0, Lpy/a;->l:I

    iput-object p1, p0, Lpy/a;->m:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/app/Activity;

    goto :goto_1

    :cond_0
    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, LW5/c;->b(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    iput-object v3, p0, Lpy/a;->c:Landroid/view/Display;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    iput-object v2, p0, Lpy/a;->d:Landroid/view/Window;

    const-string v2, ","

    const-string v3, "dynamic params is "

    sget-boolean v5, Lpy/a;->o:Z

    const-string v6, "DynamicRefreshRate recy"

    if-eqz v5, :cond_4

    sget-object v2, Lpy/a;->p:[I

    if-eqz v2, :cond_d

    sget-object v2, Lpy/a;->q:[I

    if-eqz v2, :cond_d

    goto/16 :goto_9

    :cond_4
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "get"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "ro.vendor.display.dynamic_refresh_rate"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lpy/a;->p:[I

    if-eqz v3, :cond_5

    sget-object v3, Lpy/a;->q:[I

    if-eqz v3, :cond_5

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lpy/a;->o:Z

    goto/16 :goto_c

    :cond_6
    :try_start_1
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lpy/a;->p:[I

    if-eqz v3, :cond_5

    sget-object v3, Lpy/a;->q:[I

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_7
    :try_start_2
    aget-object v7, v5, v1

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    array-length v8, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v8, v0

    if-eq v5, v8, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lpy/a;->p:[I

    if-eqz v3, :cond_5

    sget-object v3, Lpy/a;->q:[I

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_8
    :try_start_3
    array-length v5, v7

    new-array v5, v5, [I

    sput-object v5, Lpy/a;->p:[I

    move v5, v1

    :goto_6
    array-length v8, v7

    if-ge v5, v8, :cond_9

    sget-object v8, Lpy/a;->p:[I

    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    add-int/2addr v5, v0

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :catch_0
    move-exception v2

    goto :goto_a

    :cond_9
    array-length v5, v2

    new-array v5, v5, [I

    sput-object v5, Lpy/a;->q:[I

    move v5, v1

    :goto_7
    array-length v7, v2

    if-ge v5, v7, :cond_a

    sget-object v7, Lpy/a;->q:[I

    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v5, v0

    goto :goto_7

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lpy/a;->p:[I

    if-eqz v3, :cond_b

    sget-object v3, Lpy/a;->q:[I

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_8

    :cond_b
    move v3, v1

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lpy/a;->o:Z

    :goto_9
    iget-object v2, p0, Lpy/a;->c:Landroid/view/Display;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lpy/a;->d:Landroid/view/Window;

    if-eqz v2, :cond_d

    goto :goto_d

    :goto_a
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lpy/a;->p:[I

    if-eqz v3, :cond_c

    sget-object v3, Lpy/a;->q:[I

    if-eqz v3, :cond_c

    move v3, v0

    goto :goto_b

    :cond_c
    move v3, v1

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lpy/a;->o:Z

    sput-object v4, Lpy/a;->p:[I

    sput-object v4, Lpy/a;->q:[I

    :cond_d
    :goto_c
    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lpy/a;->a:Z

    if-nez v0, :cond_e

    const-string v0, "dynamic is not enable"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lpy/a;->c:Landroid/view/Display;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lpy/a;->d:Landroid/view/Window;

    if-nez v0, :cond_f

    goto :goto_e

    :cond_f
    sget-boolean v0, LRx/b;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Lpy/c;

    invoke-direct {v0}, Lpy/c;-><init>()V

    iput-object v0, p0, Lpy/a;->n:Lpy/c;

    invoke-virtual {v0, p1}, Lpy/c;->b(Lmiuix/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_10

    iput-object v4, p0, Lpy/a;->n:Lpy/c;

    :cond_10
    sget-object p1, Lpy/a;->p:[I

    if-eqz p1, :cond_11

    array-length v0, p1

    if-lez v0, :cond_11

    aget p1, p1, v1

    iput p1, p0, Lpy/a;->h:I

    :cond_11
    :goto_e
    return-void

    :goto_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lpy/a;->p:[I

    if-eqz v2, :cond_12

    sget-object v2, Lpy/a;->q:[I

    if-eqz v2, :cond_12

    move v1, v0

    :cond_12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lpy/a;->o:Z

    throw p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 8

    iget-object v0, p0, Lpy/a;->c:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    iget-object v1, p0, Lpy/a;->d:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Lpy/a;->l:I

    if-eq p1, v3, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Lpy/a;->l:I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    int-to-float v7, p1

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    sget v0, Lpy/a;->r:I

    if-eq p2, v0, :cond_2

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    iget v0, p0, Lpy/a;->l:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sput p0, Lpy/a;->r:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lpy/a;->r:I

    const-string v0, " set Refresh rate to: "

    const-string v3, ", mode is: "

    invoke-static {p0, p2, v0, p1, v3}, LS0/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DynamicRefreshRate recy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method
