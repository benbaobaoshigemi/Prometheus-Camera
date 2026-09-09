.class public Li0/f0$e;
.super Li0/f0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static h:Z

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[LZ/d;

.field public e:LZ/d;

.field public f:Li0/f0;

.field public g:LZ/d;


# direct methods
.method public constructor <init>(Li0/f0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Li0/f0$j;-><init>(Li0/f0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Li0/f0$e;->e:LZ/d;

    iput-object p2, p0, Li0/f0$e;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private s(IZ)LZ/d;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, LZ/d;->e:LZ/d;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Li0/f0$e;->t(IZ)LZ/d;

    move-result-object v2

    invoke-static {v0, v2}, LZ/d;->a(LZ/d;LZ/d;)LZ/d;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private u()LZ/d;
    .locals 0

    iget-object p0, p0, Li0/f0$e;->f:Li0/f0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Li0/f0;->a:Li0/f0$j;

    invoke-virtual {p0}, Li0/f0$j;->i()LZ/d;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LZ/d;->e:LZ/d;

    return-object p0
.end method

.method private v(Landroid/view/View;)LZ/d;
    .locals 3

    const-string p0, "WindowInsetsCompat"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    sget-boolean v0, Li0/f0$e;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Li0/f0$e;->x()V

    :cond_0
    sget-object v0, Li0/f0$e;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Li0/f0$e;->j:Ljava/lang/Class;

    if-eqz v2, :cond_4

    sget-object v2, Li0/f0$e;->k:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    sget-object v0, Li0/f0$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Li0/f0$e;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    invoke-static {p1}, LZ/d;->c(Landroid/graphics/Rect;)LZ/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static x()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Li0/f0$e;->i:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Li0/f0$e;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Li0/f0$e;->k:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Li0/f0$e;->l:Ljava/lang/reflect/Field;

    sget-object v1, Li0/f0$e;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Li0/f0$e;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v0, Li0/f0$e;->h:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Li0/f0$e;->v(Landroid/view/View;)LZ/d;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, LZ/d;->e:LZ/d;

    :cond_0
    invoke-virtual {p0, p1}, Li0/f0$e;->y(LZ/d;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Li0/f0$j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Li0/f0$e;

    iget-object p0, p0, Li0/f0$e;->g:LZ/d;

    iget-object p1, p1, Li0/f0$e;->g:LZ/d;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(I)LZ/d;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li0/f0$e;->s(IZ)LZ/d;

    move-result-object p0

    return-object p0
.end method

.method public g(I)LZ/d;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Li0/f0$e;->s(IZ)LZ/d;

    move-result-object p0

    return-object p0
.end method

.method public final k()LZ/d;
    .locals 4

    iget-object v0, p0, Li0/f0$e;->e:LZ/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/f0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LZ/d;->b(IIII)LZ/d;

    move-result-object v0

    iput-object v0, p0, Li0/f0$e;->e:LZ/d;

    :cond_0
    iget-object p0, p0, Li0/f0$e;->e:LZ/d;

    return-object p0
.end method

.method public m(IIII)Li0/f0;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Li0/f0$e;->c:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Li0/f0;->h(Landroid/view/View;Landroid/view/WindowInsets;)Li0/f0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, Li0/f0$c;

    invoke-direct {v1, v0}, Li0/f0$c;-><init>(Li0/f0;)V

    goto :goto_0

    :cond_0
    new-instance v1, Li0/f0$b;

    invoke-direct {v1, v0}, Li0/f0$b;-><init>(Li0/f0;)V

    :goto_0
    invoke-virtual {p0}, Li0/f0$e;->k()LZ/d;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Li0/f0;->e(LZ/d;IIII)LZ/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Li0/f0$d;->g(LZ/d;)V

    invoke-virtual {p0}, Li0/f0$j;->i()LZ/d;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Li0/f0;->e(LZ/d;IIII)LZ/d;

    move-result-object p0

    invoke-virtual {v1, p0}, Li0/f0$d;->e(LZ/d;)V

    invoke-virtual {v1}, Li0/f0$d;->b()Li0/f0;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Li0/f0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result p0

    return p0
.end method

.method public p(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Li0/f0$e;->w(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public q([LZ/d;)V
    .locals 0

    iput-object p1, p0, Li0/f0$e;->d:[LZ/d;

    return-void
.end method

.method public r(Li0/f0;)V
    .locals 0

    iput-object p1, p0, Li0/f0$e;->f:Li0/f0;

    return-void
.end method

.method public t(IZ)LZ/d;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    const/16 p2, 0x8

    sget-object v0, LZ/d;->e:LZ/d;

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Li0/f0$e;->f:Li0/f0;

    if-eqz p1, :cond_1

    iget-object p0, p1, Li0/f0;->a:Li0/f0$j;

    invoke-virtual {p0}, Li0/f0$j;->e()Li0/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li0/f0$j;->e()Li0/e;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Li0/e;->a:Landroid/view/DisplayCutout;

    invoke-static {p0}, Li0/e$a;->d(Landroid/view/DisplayCutout;)I

    move-result p1

    invoke-static {p0}, Li0/e$a;->f(Landroid/view/DisplayCutout;)I

    move-result p2

    invoke-static {p0}, Li0/e$a;->e(Landroid/view/DisplayCutout;)I

    move-result v0

    invoke-static {p0}, Li0/e$a;->c(Landroid/view/DisplayCutout;)I

    move-result p0

    invoke-static {p1, p2, v0, p0}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0}, Li0/f0$j;->l()LZ/d;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Li0/f0$j;->h()LZ/d;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Li0/f0$j;->j()LZ/d;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Li0/f0$e;->d:[LZ/d;

    if-eqz p1, :cond_7

    invoke-static {p2}, Li0/f0$k;->a(I)I

    move-result p2

    aget-object v2, p1, p2

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p0}, Li0/f0$e;->k()LZ/d;

    move-result-object p1

    invoke-direct {p0}, Li0/f0$e;->u()LZ/d;

    move-result-object p2

    iget p1, p1, LZ/d;->d:I

    iget v2, p2, LZ/d;->d:I

    if-le p1, v2, :cond_9

    invoke-static {v1, v1, v1, p1}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p1, p0, Li0/f0$e;->g:LZ/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, LZ/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Li0/f0$e;->g:LZ/d;

    iget p0, p0, LZ/d;->d:I

    iget p1, p2, LZ/d;->d:I

    if-le p0, p1, :cond_a

    invoke-static {v1, v1, v1, p0}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Li0/f0$e;->u()LZ/d;

    move-result-object p1

    invoke-virtual {p0}, Li0/f0$j;->i()LZ/d;

    move-result-object p0

    iget p2, p1, LZ/d;->a:I

    iget v0, p0, LZ/d;->a:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p1, LZ/d;->c:I

    iget v2, p0, LZ/d;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, LZ/d;->d:I

    iget p0, p0, LZ/d;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, v1, v0, p0}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Li0/f0$e;->k()LZ/d;

    move-result-object p1

    iget-object p0, p0, Li0/f0$e;->f:Li0/f0;

    if-eqz p0, :cond_d

    iget-object p0, p0, Li0/f0;->a:Li0/f0$j;

    invoke-virtual {p0}, Li0/f0$j;->i()LZ/d;

    move-result-object v2

    :cond_d
    iget p0, p1, LZ/d;->d:I

    if-eqz v2, :cond_e

    iget p2, v2, LZ/d;->d:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_e
    iget p2, p1, LZ/d;->a:I

    iget p1, p1, LZ/d;->c:I

    invoke-static {p2, v1, p1, p0}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz p2, :cond_10

    invoke-direct {p0}, Li0/f0$e;->u()LZ/d;

    move-result-object p1

    iget p1, p1, LZ/d;->b:I

    invoke-virtual {p0}, Li0/f0$e;->k()LZ/d;

    move-result-object p0

    iget p0, p0, LZ/d;->b:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0, v1, v1}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Li0/f0$e;->k()LZ/d;

    move-result-object p0

    iget p0, p0, LZ/d;->b:I

    invoke-static {v1, p0, v1, v1}, LZ/d;->b(IIII)LZ/d;

    move-result-object p0

    return-object p0
.end method

.method public w(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v2, 0x80

    if-eq p1, v2, :cond_1

    return v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Li0/f0$e;->t(IZ)LZ/d;

    move-result-object p0

    sget-object p1, LZ/d;->e:LZ/d;

    invoke-virtual {p0, p1}, LZ/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public y(LZ/d;)V
    .locals 0

    iput-object p1, p0, Li0/f0$e;->g:LZ/d;

    return-void
.end method
