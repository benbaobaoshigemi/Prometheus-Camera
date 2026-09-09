.class public final Lj/g;
.super Lj/f;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/f$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/g$f;,
        Lj/g$g;,
        Lj/g$i;,
        Lj/g$l;,
        Lj/g$c;,
        Lj/g$k;,
        Lj/g$m;,
        Lj/g$b;,
        Lj/g$d;,
        Lj/g$e;,
        Lj/g$j;,
        Lj/g$h;
    }
.end annotation


# static fields
.field public static final w0:LJ/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final x0:[I

.field public static final y0:Z


# instance fields
.field public I:Lo/a;

.field public J:Landroidx/appcompat/widget/ActionBarContextView;

.field public K:Landroid/widget/PopupWindow;

.field public L:Lj/i;

.field public M:Li0/N;

.field public final N:Z

.field public O:Z

.field public P:Landroid/view/ViewGroup;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/view/View;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:[Lj/g$l;

.field public b0:Lj/g$l;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Landroid/content/res/Configuration;

.field public final h0:I

.field public i0:I

.field public final j:Ljava/lang/Object;

.field public j0:I

.field public final k:Landroid/content/Context;

.field public k0:Z

.field public l:Landroid/view/Window;

.field public l0:Lj/g$j;

.field public m:Lj/g$g;

.field public m0:Lj/g$h;

.field public final n:Ljava/lang/Object;

.field public n0:Z

.field public o:Lj/w;

.field public o0:I

.field public p:Lo/f;

.field public final p0:Lj/g$a;

.field public q:Ljava/lang/CharSequence;

.field public q0:Z

.field public r:Lq/v;

.field public r0:Landroid/graphics/Rect;

.field public s:Lj/g$b;

.field public s0:Landroid/graphics/Rect;

.field public t:Lj/g$m;

.field public t0:Lj/s;

.field public u0:Landroid/window/OnBackInvokedDispatcher;

.field public v0:Landroid/window/OnBackInvokedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ/g;

    invoke-direct {v0}, LJ/g;-><init>()V

    sput-object v0, Lj/g;->w0:LJ/g;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lj/g;->x0:[I

    const-string/jumbo v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lj/g;->y0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lj/e;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lj/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/g;->M:Li0/N;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj/g;->N:Z

    const/16 v1, -0x64

    iput v1, p0, Lj/g;->h0:I

    new-instance v2, Lj/g$a;

    invoke-direct {v2, p0}, Lj/g$a;-><init>(Lj/g;)V

    iput-object v2, p0, Lj/g;->p0:Lj/g$a;

    iput-object p1, p0, Lj/g;->k:Landroid/content/Context;

    iput-object p3, p0, Lj/g;->n:Ljava/lang/Object;

    iput-object p4, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Lj/d;

    if-eqz p3, :cond_0

    move-object v0, p1

    check-cast v0, Lj/d;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj/d;->Jo()Lj/f;

    move-result-object p1

    check-cast p1, Lj/g;

    iget p1, p1, Lj/g;->h0:I

    iput p1, p0, Lj/g;->h0:I

    :cond_2
    iget p1, p0, Lj/g;->h0:I

    if-ne p1, v1, :cond_3

    sget-object p1, Lj/g;->w0:LJ/g;

    iget-object p3, p0, Lj/g;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LJ/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lj/g;->h0:I

    iget-object p3, p0, Lj/g;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LJ/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lj/g;->t(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lq/g;->d()V

    return-void
.end method

.method public static u(Landroid/content/Context;)Le0/g;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj/f;->c:Le0/g;

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lj/g$e;->b(Landroid/content/res/Configuration;)Le0/g;

    move-result-object p0

    iget-object v0, v0, Le0/g;->a:Le0/i;

    iget-object v0, v0, Le0/i;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Le0/g;->b:Le0/g;

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    iget-object v4, p0, Le0/g;->a:Le0/i;

    iget-object v4, v4, Le0/i;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Le0/g;->a:Le0/i;

    iget-object v4, v4, Le0/i;->a:Landroid/os/LocaleList;

    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-static {v0}, Le0/g$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Le0/g;

    new-instance v2, Le0/i;

    invoke-direct {v2, v0}, Le0/i;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, Le0/g;-><init>(Le0/i;)V

    move-object v0, v1

    :goto_3
    iget-object v1, v0, Le0/g;->a:Le0/i;

    iget-object v1, v1, Le0/i;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static y(Landroid/content/Context;ILe0/g;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p4, 0x0

    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p0, p3

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p2, :cond_4

    invoke-static {p1, p2}, Lj/g$e;->d(Landroid/content/res/Configuration;Le0/g;)V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-object v1, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/f;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lj/g$l;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->w()V

    iget-object v1, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lj/g$l;->o:Z

    iput-boolean v1, v0, Lj/g$l;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lj/g;->r:Lq/v;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iput-boolean p1, v0, Lj/g$l;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final B()V
    .locals 11

    const/4 v0, 0x1

    iget-boolean v1, p0, Lj/g;->O:Z

    if-nez v1, :cond_1b

    sget-object v1, Li/j;->AppCompatTheme:[I

    iget-object v2, p0, Lj/g;->k:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Li/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget v4, Li/j;->AppCompatTheme_windowNoTitle:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v6, 0x6c

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Lj/g;->n(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6}, Lj/g;->n(I)Z

    :cond_1
    :goto_0
    sget v3, Li/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v4, 0x6d

    if-eqz v3, :cond_2

    invoke-virtual {p0, v4}, Lj/g;->n(I)Z

    :cond_2
    sget v3, Li/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lj/g;->n(I)Z

    :cond_3
    sget v3, Li/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lj/g;->X:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lj/g;->C()V

    iget-object v1, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v3, p0, Lj/g;->Y:Z

    const/4 v7, 0x0

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lj/g;->X:Z

    if-eqz v3, :cond_4

    sget v3, Li/g;->abc_dialog_title_material:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-boolean v5, p0, Lj/g;->V:Z

    iput-boolean v5, p0, Lj/g;->U:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v1, p0, Lj/g;->U:Z

    if-eqz v1, :cond_8

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v8, Li/a;->actionBarTheme:I

    invoke-virtual {v3, v8, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    new-instance v3, Lo/c;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v2, v1}, Lo/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Li/g;->abc_screen_toolbar:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v3, Li/f;->decor_content_parent:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lq/v;

    iput-object v3, p0, Lj/g;->r:Lq/v;

    iget-object v8, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v3, v8}, Lq/v;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v3, p0, Lj/g;->V:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lj/g;->r:Lq/v;

    invoke-interface {v3, v4}, Lq/v;->h(I)V

    :cond_6
    iget-boolean v3, p0, Lj/g;->S:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lj/g;->r:Lq/v;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lq/v;->h(I)V

    :cond_7
    iget-boolean v3, p0, Lj/g;->T:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lj/g;->r:Lq/v;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lq/v;->h(I)V

    goto :goto_2

    :cond_8
    move-object v1, v7

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lj/g;->W:Z

    if-eqz v3, :cond_a

    sget v3, Li/g;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    sget v3, Li/g;->abc_screen_simple:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v1, :cond_19

    new-instance v3, Lfd/v;

    invoke-direct {v3, p0, v0}, Lfd/v;-><init>(Ljava/lang/Object;I)V

    sget-object v4, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v3}, Li0/E$d;->u(Landroid/view/View;Li0/r;)V

    iget-object v3, p0, Lj/g;->r:Lq/v;

    if-nez v3, :cond_c

    sget v3, Li/f;->title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lj/g;->Q:Landroid/widget/TextView;

    :cond_c
    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v4, "ViewUtils"

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "makeOptionalFitsSystemWindows"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_4

    :catch_1
    move-exception v8

    goto :goto_5

    :cond_d
    :goto_3
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v4, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v4, v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget v3, Li/f;->action_bar_activity_content:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v4, p0, Lj/g;->l:Landroid/view/Window;

    const v8, 0x1020002

    invoke-virtual {v4, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    :goto_7
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_e
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    instance-of v9, v4, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_f

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v4, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v4, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v4, Lj/h;

    invoke-direct {v4, p0}, Lj/h;-><init>(Lj/g;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    iput-object v1, p0, Lj/g;->P:Landroid/view/ViewGroup;

    iget-object v1, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_10

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lj/g;->q:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lj/g;->r:Lq/v;

    if-eqz v3, :cond_11

    invoke-interface {v3, v1}, Lq/v;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lj/g;->o:Lj/w;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v1}, Lj/w;->o(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v3, p0, Lj/g;->Q:Landroid/widget/TextView;

    if-eqz v3, :cond_13

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_9
    iget-object v1, p0, Lj/g;->P:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v3, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v9, v1, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_14
    sget-object v3, Li/j;->AppCompatTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Li/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Li/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Li/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    sget v3, Li/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    sget v3, Li/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    sget v3, Li/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Lj/g;->O:Z

    invoke-virtual {p0, v5}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-boolean v1, p0, Lj/g;->f0:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-nez v0, :cond_1b

    invoke-virtual {p0, v6}, Lj/g;->G(I)V

    goto :goto_a

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lj/g;->U:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lj/g;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lj/g;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lj/g;->W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lj/g;->Y:Z

    const-string v2, " }"

    invoke-static {v1, p0, v2}, LF1/E;->d(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_a
    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj/g;->t(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D(Landroid/content/Context;)Lj/g$i;
    .locals 3

    iget-object v0, p0, Lj/g;->l0:Lj/g$j;

    if-nez v0, :cond_1

    new-instance v0, Lj/g$j;

    sget-object v1, Lj/v;->d:Lj/v;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lj/v;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lj/v;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lj/v;->d:Lj/v;

    :cond_0
    sget-object p1, Lj/v;->d:Lj/v;

    invoke-direct {v0, p0, p1}, Lj/g$j;-><init>(Lj/g;Lj/v;)V

    iput-object v0, p0, Lj/g;->l0:Lj/g$j;

    :cond_1
    iget-object p0, p0, Lj/g;->l0:Lj/g$j;

    return-object p0
.end method

.method public final E(I)Lj/g$l;
    .locals 4

    iget-object v0, p0, Lj/g;->a0:[Lj/g$l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Lj/g$l;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lj/g;->a0:[Lj/g$l;

    move-object v0, v2

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Lj/g$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj/g$l;->a:I

    iput-boolean v1, p0, Lj/g$l;->n:Z

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final F()V
    .locals 3

    invoke-virtual {p0}, Lj/g;->B()V

    iget-boolean v0, p0, Lj/g;->U:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj/g;->o:Lj/w;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lj/w;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lj/g;->V:Z

    invoke-direct {v1, v0, v2}, Lj/w;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lj/g;->o:Lj/w;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lj/w;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lj/w;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lj/g;->o:Lj/w;

    :cond_2
    :goto_0
    iget-object v0, p0, Lj/g;->o:Lj/w;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lj/g;->q0:Z

    invoke-virtual {v0, p0}, Lj/w;->m(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final G(I)V
    .locals 2

    iget v0, p0, Lj/g;->o0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lj/g;->o0:I

    iget-boolean p1, p0, Lj/g;->n0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object v0, Li0/E;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lj/g;->p0:Lj/g$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lj/g;->n0:Z

    :cond_0
    return-void
.end method

.method public final H(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lj/g;->m0:Lj/g$h;

    if-nez p2, :cond_0

    new-instance p2, Lj/g$h;

    invoke-direct {p2, p0, p1}, Lj/g$h;-><init>(Lj/g;Landroid/content/Context;)V

    iput-object p2, p0, Lj/g;->m0:Lj/g$h;

    :cond_0
    iget-object p0, p0, Lj/g;->m0:Lj/g$h;

    invoke-virtual {p0}, Lj/g$h;->c()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lj/g;->D(Landroid/content/Context;)Lj/g$i;

    move-result-object p0

    invoke-virtual {p0}, Lj/g$i;->c()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    :goto_0
    return v1
.end method

.method public final I()Z
    .locals 5

    iget-boolean v0, p0, Lj/g;->c0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj/g;->c0:Z

    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v2

    iget-boolean v3, v2, Lj/g$l;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Lj/g;->x(Lj/g$l;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lj/g;->I:Lo/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/a;->d()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lj/g;->F()V

    iget-object p0, p0, Lj/g;->o:Lj/w;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lj/w;->e:Lq/w;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lq/w;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lj/w;->e:Lq/w;

    invoke-interface {p0}, Lq/w;->collapseActionView()V

    return v4

    :cond_3
    return v1
.end method

.method public final J(Lj/g$l;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lj/g$l;->m:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Lj/g;->f0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Lj/g$l;->a:I

    iget-object v3, v0, Lj/g;->k:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v4, v0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Lj/g;->x(Lj/g$l;Z)V

    return-void

    :cond_2
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-virtual/range {p0 .. p2}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v6, v1, Lj/g$l;->e:Lj/g$k;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Lj/g$l;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Lj/g$l;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual {v0}, Lj/g;->F()V

    iget-object v6, v0, Lj/g;->o:Lj/w;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lj/w;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v10, Li/a;->actionBarPopupTheme:I

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    sget v10, Li/a;->panelMenuListTheme:I

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    sget v6, Li/i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Lo/c;

    invoke-direct {v6, v3, v7}, Lo/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Lo/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Lj/g$l;->j:Lo/c;

    sget-object v3, Li/j;->AppCompatTheme:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v6, Li/j;->AppCompatTheme_panelBackground:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lj/g$l;->b:I

    sget v6, Li/j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Lj/g$l;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Lj/g$k;

    iget-object v6, v1, Lj/g$l;->j:Lo/c;

    invoke-direct {v3, v0, v6}, Lj/g$k;-><init>(Lj/g;Lo/c;)V

    iput-object v3, v1, Lj/g$l;->e:Lj/g$k;

    const/16 v3, 0x51

    iput v3, v1, Lj/g$l;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Lj/g$l;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Lj/g$l;->e:Lj/g$k;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Lj/g$l;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Lj/g;->t:Lj/g$m;

    if-nez v3, :cond_f

    new-instance v3, Lj/g$m;

    invoke-direct {v3, v0}, Lj/g$m;-><init>(Lj/g;)V

    iput-object v3, v0, Lj/g;->t:Lj/g$m;

    :cond_f
    iget-object v3, v0, Lj/g;->t:Lj/g$m;

    iget-object v6, v1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    if-nez v6, :cond_10

    new-instance v6, Landroidx/appcompat/view/menu/d;

    iget-object v9, v1, Lj/g$l;->j:Lo/c;

    sget v10, Li/g;->abc_list_menu_item_layout:I

    invoke-direct {v6, v9, v10}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;I)V

    iput-object v6, v1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    iput-object v3, v6, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/j$a;

    iget-object v3, v1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    iget-object v9, v3, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    iget-object v6, v1, Lj/g$l;->e:Lj/g$k;

    iget-object v9, v3, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Landroidx/appcompat/view/menu/d;->b:Landroid/view/LayoutInflater;

    sget v10, Li/g;->abc_expanded_menu_layout:I

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    if-nez v6, :cond_11

    new-instance v6, Landroidx/appcompat/view/menu/d$a;

    invoke-direct {v6, v3}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v6, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    :cond_11
    iget-object v6, v3, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    if-eqz v3, :cond_19

    :goto_5
    iget-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Lj/g$l;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    iget-object v6, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    if-nez v6, :cond_15

    new-instance v6, Landroidx/appcompat/view/menu/d$a;

    invoke-direct {v6, v3}, Landroidx/appcompat/view/menu/d$a;-><init>(Landroidx/appcompat/view/menu/d;)V

    iput-object v6, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    :cond_15
    iget-object v3, v3, Landroidx/appcompat/view/menu/d;->g:Landroidx/appcompat/view/menu/d$a;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/d$a;->getCount()I

    move-result v3

    if-lez v3, :cond_19

    :goto_6
    iget-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Lj/g$l;->b:I

    iget-object v9, v1, Lj/g$l;->e:Lj/g$k;

    invoke-virtual {v9, v6}, Lj/g$k;->setBackgroundResource(I)V

    iget-object v6, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Lj/g$l;->e:Lj/g$k;

    iget-object v9, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Lj/g$l;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Lj/g$l;->l:Z

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v3, v1, Lj/g$l;->c:I

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v1, Lj/g$l;->d:I

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, v1, Lj/g$l;->e:Lj/g$k;

    invoke-interface {v4, v3, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Lj/g$l;->m:Z

    if-nez v2, :cond_1a

    invoke-virtual {v0}, Lj/g;->N()V

    return-void

    :cond_19
    :goto_8
    iput-boolean v5, v1, Lj/g$l;->n:Z

    :cond_1a
    :goto_9
    return-void
.end method

.method public final K(Lj/g$l;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lj/g$l;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Landroidx/appcompat/view/menu/f;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final L(Lj/g$l;Landroid/view/KeyEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lj/g;->f0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p1, Lj/g$l;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lj/g;->b0:Lj/g$l;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lj/g;->x(Lj/g$l;Z)V

    :cond_2
    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Lj/g$l;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lj/g$l;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Lj/g;->r:Lq/v;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lq/v;->f()V

    :cond_6
    iget-object v6, p1, Lj/g$l;->g:Landroid/view/View;

    if-nez v6, :cond_1d

    iget-object v6, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-boolean v8, p1, Lj/g$l;->o:Z

    if-eqz v8, :cond_17

    :cond_7
    if-nez v6, :cond_10

    iget-object v6, p0, Lj/g;->k:Landroid/content/Context;

    if-eqz v3, :cond_8

    if-ne v3, v4, :cond_c

    :cond_8
    iget-object v4, p0, Lj/g;->r:Lq/v;

    if-eqz v4, :cond_c

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Li/a;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v10, Li/a;->actionBarWidgetTheme:I

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_9
    sget v9, Li/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_b

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_a
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    if-eqz v9, :cond_c

    new-instance v4, Lo/c;

    invoke-direct {v4, v6, v1}, Lo/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lo/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_c
    new-instance v4, Landroidx/appcompat/view/menu/f;

    invoke-direct {v4, v6}, Landroidx/appcompat/view/menu/f;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Landroidx/appcompat/view/menu/f;->e:Landroidx/appcompat/view/menu/f$a;

    iget-object v6, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-ne v4, v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    iget-object v8, p1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/f;->r(Landroidx/appcompat/view/menu/j;)V

    :cond_e
    iput-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    iget-object v6, p1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    if-eqz v6, :cond_f

    iget-object v8, v4, Landroidx/appcompat/view/menu/f;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    :cond_f
    :goto_3
    iget-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-nez v4, :cond_10

    goto :goto_5

    :cond_10
    if-eqz v5, :cond_12

    iget-object v4, p0, Lj/g;->r:Lq/v;

    if-eqz v4, :cond_12

    iget-object v6, p0, Lj/g;->s:Lj/g$b;

    if-nez v6, :cond_11

    new-instance v6, Lj/g$b;

    invoke-direct {v6, p0}, Lj/g$b;-><init>(Lj/g;)V

    iput-object v6, p0, Lj/g;->s:Lj/g$b;

    :cond_11
    iget-object v6, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    iget-object v8, p0, Lj/g;->s:Lj/g$b;

    invoke-interface {v4, v6, v8}, Lq/v;->b(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/j$a;)V

    :cond_12
    iget-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/f;->w()V

    iget-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object p2, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-nez p2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_14

    iget-object v0, p1, Lj/g$l;->i:Landroidx/appcompat/view/menu/d;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/f;->r(Landroidx/appcompat/view/menu/j;)V

    :cond_14
    iput-object v7, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    :goto_4
    if-eqz v5, :cond_15

    iget-object p1, p0, Lj/g;->r:Lq/v;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lj/g;->s:Lj/g$b;

    invoke-interface {p1, v7, p0}, Lq/v;->b(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/j$a;)V

    :cond_15
    :goto_5
    return v1

    :cond_16
    iput-boolean v1, p1, Lj/g$l;->o:Z

    :cond_17
    iget-object v3, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/f;->w()V

    iget-object v3, p1, Lj/g$l;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_18

    iget-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/f;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Lj/g$l;->p:Landroid/os/Bundle;

    :cond_18
    iget-object v3, p1, Lj/g$l;->g:Landroid/view/View;

    iget-object v4, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v5, :cond_19

    iget-object p2, p0, Lj/g;->r:Lq/v;

    if-eqz p2, :cond_19

    iget-object p0, p0, Lj/g;->s:Lj/g$b;

    invoke-interface {p2, v7, p0}, Lq/v;->b(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/j$a;)V

    :cond_19
    iget-object p0, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/f;->v()V

    return v1

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_6

    :cond_1b
    const/4 p2, -0x1

    :goto_6
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1c

    move p2, v2

    goto :goto_7

    :cond_1c
    move p2, v1

    :goto_7
    iget-object v0, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f;->setQwertyMode(Z)V

    iget-object p2, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/f;->v()V

    :cond_1d
    iput-boolean v2, p1, Lj/g$l;->k:Z

    iput-boolean v1, p1, Lj/g$l;->l:Z

    iput-object p1, p0, Lj/g;->b0:Lj/g$l;

    return v2
.end method

.method public final M()V
    .locals 1

    iget-boolean p0, p0, Lj/g;->O:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final N()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-boolean v0, v0, Lj/g$l;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lj/g;->I:Lo/a;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Lj/g$f;->b(Ljava/lang/Object;Lj/g;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    return-void

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v1, v0}, Lj/g$f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    :cond_4
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/f;Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lj/g;->f0:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->k()Landroidx/appcompat/view/menu/f;

    move-result-object p1

    iget-object p0, p0, Lj/g;->a0:[Lj/g$l;

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget p0, v4, Lj/g$l;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final b(Landroidx/appcompat/view/menu/f;)V
    .locals 5

    iget-object p1, p0, Lj/g;->r:Lq/v;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lq/v;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lj/g;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/g;->r:Lq/v;

    invoke-interface {p1}, Lq/v;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget-object p1, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lj/g;->r:Lq/v;

    invoke-interface {v2}, Lq/v;->e()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lj/g;->r:Lq/v;

    invoke-interface {v0}, Lq/v;->c()Z

    iget-boolean v0, p0, Lj/g;->f0:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object p0

    iget-object p0, p0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lj/g;->f0:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lj/g;->n0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lj/g;->o0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lj/g;->p0:Lj/g$a;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Lj/g$a;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-object v2, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    if-eqz v2, :cond_3

    iget-boolean v4, v0, Lj/g$l;->o:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lj/g$l;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Lj/g;->r:Lq/v;

    invoke-interface {p0}, Lq/v;->d()Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object p1

    iput-boolean v0, p1, Lj/g$l;->n:Z

    invoke-virtual {p0, p1, v1}, Lj/g;->x(Lj/g$l;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj/g;->J(Lj/g$l;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lj/g;->B()V

    iget-object v0, p0, Lj/g;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lj/g;->m:Lj/g$g;

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lj/g$g;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lj/g;->t0:Lj/s;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget-object v3, Li/j;->AppCompatTheme:[I

    iget-object v5, p0, Lj/g;->k:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v6, Li/j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v6, :cond_0

    new-instance v3, Lj/s;

    invoke-direct {v3}, Lj/s;-><init>()V

    iput-object v3, p0, Lj/g;->t0:Lj/s;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/s;

    iput-object v3, p0, Lj/g;->t0:Lj/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to instantiate custom view inflater "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Falling back to default."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppCompatDelegate"

    invoke-static {v6, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Lj/s;

    invoke-direct {v3}, Lj/s;-><init>()V

    iput-object v3, p0, Lj/g;->t0:Lj/s;

    :cond_1
    :goto_0
    iget-object p0, p0, Lj/g;->t0:Lj/s;

    sget v3, Lq/T;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Li/j;->View:[I

    invoke-virtual {p2, p3, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v5, Li/j;->View_theme:I

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v6, "AppCompatViewInflater"

    const-string v7, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_4

    instance-of v3, p2, Lo/c;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lo/c;

    iget v3, v3, Lo/c;->a:I

    if-eq v3, v5, :cond_4

    :cond_3
    new-instance v3, Lo/c;

    invoke-direct {v3, p2, v5}, Lo/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v3, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v6, v1

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "Button"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "EditText"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/16 v6, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "CheckBox"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v6, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "AutoCompleteTextView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "ImageView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/16 v6, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "ToggleButton"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    const/16 v6, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "RadioButton"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    :cond_b
    const/4 v6, 0x7

    goto :goto_3

    :sswitch_7
    const-string v6, "Spinner"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    const/4 v6, 0x6

    goto :goto_3

    :sswitch_8
    const-string v6, "SeekBar"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_2

    :cond_d
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_9
    const-string v6, "ImageButton"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_2

    :cond_e
    const/4 v6, 0x4

    goto :goto_3

    :sswitch_a
    const-string v6, "TextView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_2

    :cond_f
    move v6, v0

    goto :goto_3

    :sswitch_b
    const-string v6, "MultiAutoCompleteTextView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_c
    const-string v6, "CheckedTextView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_2

    :cond_11
    move v6, v2

    goto :goto_3

    :sswitch_d
    const-string v6, "RatingBar"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto/16 :goto_2

    :cond_12
    move v6, v4

    :goto_3
    packed-switch v6, :pswitch_data_0

    move-object v6, v5

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0, v3, p3}, Lj/s;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v6

    goto :goto_4

    :pswitch_1
    new-instance v6, Lq/h;

    invoke-direct {v6, v3, p3}, Lq/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v3, p3}, Lj/s;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v6

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0, v3, p3}, Lj/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lq/c;

    move-result-object v6

    goto :goto_4

    :pswitch_4
    new-instance v6, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v6, v3, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_5
    new-instance v6, Lq/u;

    invoke-direct {v6, v3, p3}, Lq/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0, v3, p3}, Lj/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v6

    goto :goto_4

    :pswitch_7
    new-instance v6, Landroidx/appcompat/widget/AppCompatSpinner;

    sget v7, Li/a;->spinnerStyle:I

    invoke-direct {v6, v3, p3, v7}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    :pswitch_8
    new-instance v6, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v6, v3, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_9
    new-instance v6, Lq/j;

    invoke-direct {v6, v3, p3}, Lq/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0, v3, p3}, Lj/s;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v6

    goto :goto_4

    :pswitch_b
    new-instance v6, Lq/l;

    invoke-direct {v6, v3, p3}, Lq/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_c
    new-instance v6, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v6, v3, p3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_d
    new-instance v6, Lq/o;

    invoke-direct {v6, v3, p3}, Lq/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v6, :cond_17

    if-eq p2, v3, :cond_17

    iget-object p2, p0, Lj/s;->a:[Ljava/lang/Object;

    const-string/jumbo v6, "view"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string p1, "class"

    invoke-interface {p3, v5, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    :try_start_1
    aput-object v3, p2, v4

    aput-object p3, p2, v2

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v1, v6, :cond_16

    move v1, v4

    :goto_5
    sget-object v6, Lj/s;->d:[Ljava/lang/String;

    if-ge v1, v0, :cond_15

    aget-object v6, v6, v1

    invoke-virtual {p0, v3, p1, v6}, Lj/s;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_14

    aput-object v5, p2, v4

    aput-object v5, p2, v2

    move-object v5, v6

    goto :goto_7

    :cond_14
    add-int/2addr v1, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_15
    aput-object v5, p2, v4

    aput-object v5, p2, v2

    goto :goto_7

    :cond_16
    :try_start_2
    invoke-virtual {p0, v3, p1, v5}, Lj/s;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v5, p2, v4

    aput-object v5, p2, v2

    move-object v5, p0

    goto :goto_7

    :goto_6
    aput-object v5, p2, v4

    aput-object v5, p2, v2

    throw p0

    :catch_0
    aput-object v5, p2, v4

    aput-object v5, p2, v2

    :goto_7
    move-object v6, v5

    :cond_17
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_8

    :cond_18
    sget-object p1, Lj/s;->c:[I

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance p2, Lj/s$a;

    invoke-direct {p2, v6, p1}, Lj/s$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_8
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lj/g;->B()V

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lj/g;->k:Landroid/content/Context;

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lj/g;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Lj/g;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lj/g;->o:Lj/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj/g;->F()V

    iget-object v0, p0, Lj/g;->o:Lj/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj/g;->G(I)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/g;->d0:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lj/g;->s(ZZ)Z

    invoke-virtual {p0}, Lj/g;->C()V

    iget-object v1, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, LW/h;->c(Landroid/app/Activity;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lj/g;->o:Lj/w;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lj/g;->q0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lj/w;->m(Z)V

    :cond_1
    :goto_1
    sget-object v1, Lj/f;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lj/f;->m(Lj/g;)V

    sget-object v2, Lj/f;->g:LJ/b;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LJ/b;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Lj/g;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lj/g;->g0:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Lj/g;->e0:Z

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lj/f;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lj/f;->m(Lj/g;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lj/g;->n0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lj/g;->p0:Lj/g$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/g;->f0:Z

    iget v0, p0, Lj/g;->h0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lj/g;->w0:LJ/g;

    iget-object v1, p0, Lj/g;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj/g;->h0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LJ/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lj/g;->w0:LJ/g;

    iget-object v1, p0, Lj/g;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lj/g;->l0:Lj/g$j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lj/g$i;->a()V

    :cond_3
    iget-object p0, p0, Lj/g;->m0:Lj/g$h;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lj/g$i;->a()V

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Lj/g;->F()V

    iget-object p0, p0, Lj/g;->o:Lj/w;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/w;->t:Z

    iget-object p0, p0, Lj/w;->s:Lo/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lo/g;->a()V

    :cond_0
    return-void
.end method

.method public final n(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lj/g;->Y:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Lj/g;->U:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Lj/g;->U:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->V:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->U:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->W:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->T:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->S:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lj/g;->M()V

    iput-boolean v4, p0, Lj/g;->Y:Z

    return v4
.end method

.method public final o(I)V
    .locals 2

    invoke-virtual {p0}, Lj/g;->B()V

    iget-object v0, p0, Lj/g;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lj/g;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lj/g;->m:Lj/g$g;

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lj/g$g;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lj/g;->d(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lj/g;->B()V

    iget-object v0, p0, Lj/g;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lj/g;->m:Lj/g$g;

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lj/g$g;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lj/g;->B()V

    iget-object v0, p0, Lj/g;->P:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lj/g;->m:Lj/g$g;

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lj/g$g;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final r(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lj/g;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Lj/g;->r:Lq/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lq/v;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lj/g;->o:Lj/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lj/w;->o(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p0, p0, Lj/g;->Q:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final s(ZZ)Z
    .locals 12

    iget-boolean v0, p0, Lj/g;->f0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lj/g;->h0:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lj/f;->b:I

    :goto_0
    iget-object v2, p0, Lj/g;->k:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lj/g;->H(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    invoke-static {v2}, Lj/g;->u(Landroid/content/Context;)Le0/g;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez p2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-static {p2}, Lj/g$e;->b(Landroid/content/res/Configuration;)Le0/g;

    move-result-object v4

    :cond_3
    invoke-static {v2, v3, v4, v6, v1}, Lj/g;->y(Landroid/content/Context;ILe0/g;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object p2

    iget-boolean v3, p0, Lj/g;->k0:Z

    iget-object v5, p0, Lj/g;->j:Ljava/lang/Object;

    const/4 v7, 0x1

    if-nez v3, :cond_5

    instance-of v3, v5, Landroid/app/Activity;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v9, 0x100c0000

    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v3, p0, Lj/g;->j0:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v8, "AppCompatDelegate"

    const-string v9, "Exception while getting ActivityInfo"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Lj/g;->j0:I

    :cond_5
    :goto_2
    iput-boolean v7, p0, Lj/g;->k0:Z

    iget v3, p0, Lj/g;->j0:I

    :goto_3
    iget-object v8, p0, Lj/g;->g0:Landroid/content/res/Configuration;

    if-nez v8, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    :cond_6
    iget v9, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    iget v10, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, 0x30

    invoke-static {v8}, Lj/g$e;->b(Landroid/content/res/Configuration;)Le0/g;

    move-result-object v8

    if-nez v4, :cond_7

    move-object v4, v6

    goto :goto_4

    :cond_7
    invoke-static {p2}, Lj/g$e;->b(Landroid/content/res/Configuration;)Le0/g;

    move-result-object v4

    :goto_4
    if-eq v9, v10, :cond_8

    const/16 v9, 0x200

    goto :goto_5

    :cond_8
    move v9, v1

    :goto_5
    if-eqz v4, :cond_9

    invoke-virtual {v8, v4}, Le0/g;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    or-int/lit16 v9, v9, 0x2004

    :cond_9
    not-int v8, v3

    and-int/2addr v8, v9

    if-eqz v8, :cond_c

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lj/g;->d0:Z

    if-eqz p1, :cond_c

    sget-boolean p1, Lj/g;->y0:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lj/g;->e0:Z

    if-eqz p1, :cond_c

    :cond_a
    instance-of p1, v5, Landroid/app/Activity;

    if-eqz p1, :cond_c

    move-object p1, v5

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v8

    if-nez v8, :cond_c

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1f

    if-lt v8, v11, :cond_b

    and-int/lit16 v8, v9, 0x2000

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    invoke-virtual {v8, p2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    move p1, v7

    goto :goto_6

    :cond_c
    move p1, v1

    :goto_6
    if-nez p1, :cond_11

    if-eqz v9, :cond_11

    and-int p1, v9, v3

    if-ne p1, v9, :cond_d

    move v1, v7

    :cond_d
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, -0x31

    or-int/2addr v3, v10

    iput v3, p2, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v4, :cond_e

    invoke-static {p2, v4}, Lj/g$e;->d(Landroid/content/res/Configuration;Le0/g;)V

    :cond_e
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p1, p0, Lj/g;->i0:I

    if-eqz p1, :cond_f

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v3, p0, Lj/g;->i0:I

    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_f
    if-eqz v1, :cond_12

    instance-of p1, v5, Landroid/app/Activity;

    if-eqz p1, :cond_12

    move-object p1, v5

    check-cast p1, Landroid/app/Activity;

    instance-of v1, p1, Landroidx/lifecycle/x;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/x;

    invoke-interface {v1}, Landroidx/lifecycle/x;->getLifecycle()Landroidx/lifecycle/n;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/n;->b()Landroidx/lifecycle/n$b;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/n$b;->c:Landroidx/lifecycle/n$b;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_12

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_10
    iget-boolean v1, p0, Lj/g;->e0:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lj/g;->f0:Z

    if-nez v1, :cond_12

    invoke-virtual {p1, p2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7

    :cond_11
    move v7, p1

    :cond_12
    :goto_7
    if-eqz v7, :cond_14

    instance-of p1, v5, Lj/d;

    if-eqz p1, :cond_14

    and-int/lit16 p1, v9, 0x200

    if-eqz p1, :cond_13

    move-object p1, v5

    check-cast p1, Lj/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_13
    and-int/lit8 p1, v9, 0x4

    if-eqz p1, :cond_14

    check-cast v5, Lj/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lj/g$e;->b(Landroid/content/res/Configuration;)Le0/g;

    move-result-object p1

    invoke-static {p1}, Lj/g$e;->c(Le0/g;)V

    :cond_15
    if-nez v0, :cond_16

    invoke-virtual {p0, v2}, Lj/g;->D(Landroid/content/Context;)Lj/g$i;

    move-result-object p1

    invoke-virtual {p1}, Lj/g$i;->e()V

    goto :goto_8

    :cond_16
    iget-object p1, p0, Lj/g;->l0:Lj/g$j;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lj/g$i;->a()V

    :cond_17
    :goto_8
    const/4 p1, 0x3

    if-ne v0, p1, :cond_19

    iget-object p1, p0, Lj/g;->m0:Lj/g$h;

    if-nez p1, :cond_18

    new-instance p1, Lj/g$h;

    invoke-direct {p1, p0, v2}, Lj/g$h;-><init>(Lj/g;Landroid/content/Context;)V

    iput-object p1, p0, Lj/g;->m0:Lj/g$h;

    :cond_18
    iget-object p0, p0, Lj/g;->m0:Lj/g$h;

    invoke-virtual {p0}, Lj/g$i;->e()V

    goto :goto_9

    :cond_19
    iget-object p0, p0, Lj/g;->m0:Lj/g$h;

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lj/g$i;->a()V

    :cond_1a
    :goto_9
    return v7
.end method

.method public final t(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Lj/g$g;

    if-nez v2, :cond_5

    new-instance v1, Lj/g$g;

    invoke-direct {v1, p0, v0}, Lj/g$g;-><init>(Lj/g;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lj/g;->m:Lj/g$g;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lj/g;->k:Landroid/content/Context;

    sget-object v1, Lj/g;->x0:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lq/g;->a()Lq/g;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lq/g;->a:Lq/F;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v3, v6}, Lq/F;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lj/g;->l:Landroid/view/Window;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lj/g$f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lj/g;->v0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lj/g$f;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lj/g;->u0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Lj/g;->N()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v(ILj/g$l;Landroidx/appcompat/view/menu/f;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lj/g;->a0:[Lj/g$l;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lj/g$l;->m:Z

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lj/g;->f0:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lj/g;->m:Lj/g$g;

    iget-object p0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Lj/g$g;->d:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Lj/g$g;->d:Z

    return-void

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Lj/g$g;->d:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final w(Landroidx/appcompat/view/menu/f;)V
    .locals 2

    iget-boolean v0, p0, Lj/g;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/g;->Z:Z

    iget-object v0, p0, Lj/g;->r:Lq/v;

    invoke-interface {v0}, Lq/v;->l()V

    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lj/g;->f0:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj/g;->Z:Z

    return-void
.end method

.method public final x(Lj/g$l;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lj/g$l;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/g;->r:Lq/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lq/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lj/g$l;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p0, p1}, Lj/g;->w(Landroidx/appcompat/view/menu/f;)V

    return-void

    :cond_0
    iget-object v0, p0, Lj/g;->k:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lj/g$l;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lj/g$l;->e:Lj/g$k;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lj/g$l;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lj/g;->v(ILj/g$l;Landroidx/appcompat/view/menu/f;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lj/g$l;->k:Z

    iput-boolean p2, p1, Lj/g$l;->l:Z

    iput-boolean p2, p1, Lj/g$l;->m:Z

    iput-object v1, p1, Lj/g$l;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lj/g$l;->n:Z

    iget-object p2, p0, Lj/g;->b0:Lj/g$l;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lj/g;->b0:Lj/g$l;

    :cond_2
    iget p1, p1, Lj/g$l;->a:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lj/g;->N()V

    :cond_3
    return-void
.end method

.method public final z(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lj/g;->j:Ljava/lang/Object;

    instance-of v1, v0, Li0/g;

    if-nez v1, :cond_0

    instance-of v0, v0, Lj/r;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Li0/E;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x52

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lj/g;->m:Lj/g$g;

    iget-object v4, p0, Lj/g;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v3, v0, Lj/g$g;->c:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, v0, Lj/g$g;->c:Z

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    iput-boolean v1, v0, Lj/g$g;->c:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-boolean v1, v0, Lj/g$l;->m:Z

    if-nez v1, :cond_11

    invoke-virtual {p0, v0, p1}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lj/g;->c0:Z

    return v1

    :cond_6
    if-eq v0, v5, :cond_10

    if-eq v0, v2, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lj/g;->I:Lo/a;

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0, v1}, Lj/g;->E(I)Lj/g$l;

    move-result-object v0

    iget-object v2, p0, Lj/g;->r:Lq/v;

    iget-object v4, p0, Lj/g;->k:Landroid/content/Context;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lq/v;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lj/g;->r:Lq/v;

    invoke-interface {v2}, Lq/v;->e()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lj/g;->f0:Z

    if-nez v2, :cond_d

    invoke-virtual {p0, v0, p1}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lj/g;->r:Lq/v;

    invoke-interface {p0}, Lq/v;->d()Z

    move-result p0

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lj/g;->r:Lq/v;

    invoke-interface {p0}, Lq/v;->c()Z

    move-result p0

    goto :goto_3

    :cond_a
    iget-boolean v2, v0, Lj/g$l;->m:Z

    if-nez v2, :cond_e

    iget-boolean v5, v0, Lj/g$l;->l:Z

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    iget-boolean v2, v0, Lj/g$l;->k:Z

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lj/g$l;->o:Z

    if-eqz v2, :cond_c

    iput-boolean v1, v0, Lj/g$l;->k:Z

    invoke-virtual {p0, v0, p1}, Lj/g;->L(Lj/g$l;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    :cond_c
    move v2, v3

    :goto_1
    if-eqz v2, :cond_d

    invoke-virtual {p0, v0, p1}, Lj/g;->J(Lj/g$l;Landroid/view/KeyEvent;)V

    move p0, v3

    goto :goto_3

    :cond_d
    move p0, v1

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {p0, v0, v3}, Lj/g;->x(Lj/g$l;Z)V

    move p0, v2

    :goto_3
    if-eqz p0, :cond_11

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return v3

    :cond_f
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_10
    invoke-virtual {p0}, Lj/g;->I()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_11
    :goto_4
    return v3

    :cond_12
    :goto_5
    return v1
.end method
