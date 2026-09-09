.class public abstract Lo5/M;
.super Lcom/android/camera/fragment/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements LQ6/r1;
.implements LQ6/c0;
.implements Lcom/android/camera/ui/SlideSwitchButton$b;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public I:Z

.field public J:Z

.field public K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

.field public L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

.field public M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

.field public N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

.field public O:Lp5/a;

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Landroid/view/GestureDetector;

.field public V:Z

.field public W:Z

.field public X:Lo5/S;

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Z

.field public b0:Le2/h;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Landroid/view/View;

.field public d:LV9/n0;

.field public d0:Landroid/os/Handler;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La5/i;",
            ">;"
        }
    .end annotation
.end field

.field public e0:Ljy/f;

.field public f:I

.field public f0:Landroid/widget/FrameLayout;

.field public g:I

.field public g0:Landroid/widget/TextView;

.field public h:Z

.field public h0:Landroid/animation/ValueAnimator;

.field public i:Z

.field public i0:I

.field public j:Z

.field public final j0:Lo5/M$b;

.field public k:Z

.field public final k0:Lg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lmiuix/appcompat/app/h;

.field public final l0:Lo5/M$a;

.field public m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

.field public n:Landroid/widget/FrameLayout;

.field public o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

.field public p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

.field public q:Landroid/view/ViewGroup;

.field public r:Lo5/c;

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo5/M;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lo5/M;->l:Lmiuix/appcompat/app/h;

    const/16 v1, 0xb0

    iput v1, p0, Lo5/M;->Y:I

    iput v0, p0, Lo5/M;->i0:I

    new-instance v0, Lo5/M$b;

    invoke-direct {v0, p0}, Lo5/M$b;-><init>(Lo5/M;)V

    iput-object v0, p0, Lo5/M;->j0:Lo5/M$b;

    new-instance v0, LFs/i;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LFs/i;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, LDf/d;->k(Landroidx/fragment/app/Fragment;Lg/a;)Lg/b;

    move-result-object v0

    iput-object v0, p0, Lo5/M;->k0:Lg/b;

    new-instance v0, Lo5/M$a;

    invoke-direct {v0, p0}, Lo5/M$a;-><init>(Lo5/M;)V

    iput-object v0, p0, Lo5/M;->l0:Lo5/M$a;

    return-void
.end method

.method public static Br()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/data/data/A;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/data/data/A;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/data/E;->k0()Z

    move-result v1

    invoke-static {v1}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "attr_timer_burst"

    invoke-static {v0, v2, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Mq(Lo5/M;Lu2/t;)Ljava/util/ArrayList;
    .locals 2

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p0}, Lu2/t;->W(I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, LV9/M5;->D(I)La5/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static Nq(Lo5/M;Lcom/android/camera/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick startActivity Settings.ACTION_APPLICATION_DETAILS_SETTINGS positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo5/M;->J:Z

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LS6/g;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v0

    check-cast v0, LS6/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LS6/g;->L3()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lo5/M;->l:Lmiuix/appcompat/app/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/h;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo5/M;->l:Lmiuix/appcompat/app/h;

    :cond_1
    return-void
.end method

.method public static synthetic Oq(Lo5/M;Lu2/t;)Ljava/lang/Boolean;
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p0}, Lu2/t;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu2/t;->P(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Pq(Lo5/M;La5/i$c;)La5/j;
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-interface {p1, p0}, La5/i$c;->b(I)La5/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Qq(Lo5/M;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "onClick startActivity Settings.ACTION_APPLICATION_DETAILS_SETTINGS negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo5/M;->J:Z

    iget-object v0, p0, Lo5/M;->l:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/h;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo5/M;->l:Lmiuix/appcompat/app/h;

    :cond_0
    return-void
.end method

.method public static synthetic Rq(Lo5/M;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;ILandroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showFirstMenuAnimation: "

    invoke-static {p4, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x1

    if-ge p4, v1, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    iget-object p1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    if-eq p4, p3, :cond_2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lo5/M;->W:Z

    return-void
.end method

.method public static synthetic Sq(Lo5/M;Lr2/s;)Ljava/lang/Boolean;
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static nr()V
    .locals 4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_common_menu_root_hint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_common_menu_root_hint_temp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, LF1/K2;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Ar()V
    .locals 4

    iget-boolean v0, p0, Lo5/M;->I:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lo5/M;->I:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lo5/M;->ur()Z

    invoke-virtual {p0}, Lo5/M;->W3()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Li7/a;->f:Li7/a$a;

    :cond_1
    invoke-static {}, LK2/b;->R()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lo5/M;->Uq(ZZ)V

    :goto_0
    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lo5/M;->I:Z

    const/16 v3, 0x10a

    invoke-virtual {p0, v0, v1, v2, v3}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    iget-boolean v0, p0, Lo5/M;->I:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo5/M;->Tq()V

    :cond_2
    return-void
.end method

.method public final C9([Ljava/lang/String;[I)V
    .locals 2

    invoke-static {p1, p2}, LH6/d;->m([Ljava/lang/String;[I)Z

    move-result p1

    iget-object p2, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {p2}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkViewController()Lo5/f0;

    move-result-object p2

    iget-object p2, p2, Lo5/f0;->i:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPermissionsResult: is location granted = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2}, LWh/a;->g()LWh/a;

    const-string v0, "pref_cv_watermark_location"

    invoke-virtual {p2, v0, p1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {p2}, LWh/a;->c()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo5/M;->J:Z

    return-void
.end method

.method public final Cr()V
    .locals 3

    invoke-static {}, Lxx/d;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxx/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxx/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setVisibility(I)V

    iget-object p0, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    sget-object v0, Lf2/a;->f:Lf2/a;

    iget-boolean v0, v0, Lf2/a;->b:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->d(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setEnableBlur(Z)V

    sget-object v0, Lf2/a;->f:Lf2/a;

    iget-boolean v0, v0, Lf2/a;->b:Z

    if-eqz v0, :cond_2

    sget-object v1, LIy/c;->a:[I

    goto :goto_0

    :cond_2
    sget-object v1, LIy/b;->a:[I

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, LIy/e;->a:[I

    goto :goto_1

    :cond_3
    sget-object v0, LIy/d;->a:[I

    :goto_1
    iget-object v2, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->g([I[I)V

    iget-object p0, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setBlurRadius(I)V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, LY/g;->a:Ljava/lang/ThreadLocal;

    const v1, 0x7f080aee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LY/g$a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x7f06019d

    invoke-static {v2}, Lf2/b;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_5
    iget-object p0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final Dd(F)V
    .locals 0

    iget-object p0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setLayoutCountOpacity(F)V

    return-void
.end method

.method public final Dr()V
    .locals 1

    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo5/M;->Gk(Z)Z

    :cond_0
    invoke-virtual {p0}, Lo5/M;->dr()V

    invoke-virtual {p0}, Lo5/M;->ur()Z

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lo5/M;->I:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->a()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public Er()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    iget-object v0, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_0

    sget v1, LK2/e;->f:I

    const/4 v2, 0x4

    invoke-static {v2}, LK2/b;->s(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f071790

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/e;->j()I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_0
    const/16 p0, 0x50

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    return-void
.end method

.method public final Fp()Z
    .locals 0

    iget-object p0, p0, Lo5/M;->d:LV9/n0;

    if-eqz p0, :cond_0

    iget-object p0, p0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Fr()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-static {}, Lf2/b;->e()Z

    move-result v0

    iget-object v1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-static {}, Lf2/b;->e()Z

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;

    iget-object v6, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->a:LV9/k0;

    iget v8, v6, LV9/k0;->g:I

    if-ne v8, v2, :cond_0

    iget v8, v6, LV9/k0;->h:I

    :cond_0
    const/4 v6, 0x1

    if-ne v8, v5, :cond_1

    sget-object v8, Lo9/a;->a:Lo9/b;

    invoke-interface {v8}, Lo9/b;->e()Lp9/t;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v9, v10}, Lp9/t;->C(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->setActiveBg(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v8}, Lo9/b;->e()Lp9/t;

    move-result-object v9

    invoke-interface {v9, v3, v6}, Lp9/t;->s(ZZ)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->setImgColorAndRefresh(I)V

    invoke-interface {v8}, Lo9/b;->e()Lp9/t;

    move-result-object v8

    invoke-interface {v8, v3, v6}, Lp9/t;->b(ZZ)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->setTextColorAndRefresh(I)V

    goto :goto_1

    :cond_1
    sget-object v8, Lo9/a;->a:Lo9/b;

    invoke-interface {v8}, Lo9/b;->e()Lp9/t;

    move-result-object v9

    invoke-interface {v9, v3, v4}, Lp9/t;->s(ZZ)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->setImgColorAndRefresh(I)V

    invoke-interface {v8}, Lo9/b;->e()Lp9/t;

    move-result-object v8

    invoke-interface {v8, v3, v4}, Lp9/t;->b(ZZ)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->setTextColorAndRefresh(I)V

    :goto_1
    iget-object v8, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->a:LV9/k0;

    iget-object v8, v8, LV9/k0;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/camera/data/data/d;

    sget-object v8, LJe/c$b;->a:LJe/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->a:LV9/k0;

    iget-object v8, v8, LV9/k0;->a:Lcom/android/camera/data/data/c;

    invoke-virtual {v8}, Lcom/android/camera/data/data/c;->isShowText()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v6

    :goto_3
    iget v10, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->o:I

    iget-object v11, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->p:Landroid/graphics/drawable/Drawable;

    iget-object v12, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->q:La5/i;

    invoke-virtual/range {v7 .. v12}, Lcom/android/camera2/compat/theme/custom/mm/top/LabelItemViewMM;->a(ZLcom/android/camera/data/data/d;ILandroid/graphics/drawable/Drawable;La5/i;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lo5/M;->r:Lo5/c;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    iput v3, v1, Lo5/c;->h:I

    iget-object v1, p0, Lo5/M;->r:Lo5/c;

    iput-boolean v0, v1, Lo5/c;->i:Z

    invoke-virtual {p0}, Lo5/M;->Yq()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lo5/c;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_5
    iget-boolean v1, p0, Lo5/M;->i:Z

    const v3, 0x7f060b74

    if-eqz v1, :cond_a

    iget-object v1, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->d()V

    iget-object v2, v1, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    if-eqz v2, :cond_6

    iput-boolean v0, v2, Lo5/c;->i:Z

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_7
    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->e(Z)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMImageViewBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v4, Lf2/e;->c:Lf2/e;

    invoke-virtual {v4, v3, v0}, Lf2/e;->a(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMSeekBarIntervalWraper()LE8/h;

    move-result-object v2

    const v3, 0x7f150150

    const v4, 0x7f150151

    if-eqz v0, :cond_8

    move v5, v4

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_4
    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v6

    invoke-virtual {v2, v5, v6}, LE8/h;->p(II)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMSeekBarCountWraper()LE8/h;

    move-result-object v1

    if-eqz v0, :cond_9

    move v3, v4

    :cond_9
    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    invoke-virtual {v1, v3, v0}, LE8/h;->p(II)V

    goto/16 :goto_7

    :cond_a
    iget-boolean v1, p0, Lo5/M;->t:Z

    const v4, 0x7f06042c

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lo5/M;->s:Z

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v1, p0, Lo5/M;->I:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleTitle()Landroid/widget/TextView;

    move-result-object v2

    sget-object v5, Lf2/e;->c:Lf2/e;

    invoke-virtual {v5, v4, v0}, Lf2/e;->a(IZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleBack()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v4, Lf2/e;->c:Lf2/e;

    invoke-virtual {v4, v3, v0}, Lf2/e;->a(IZ)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->e:Li7/a;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto/16 :goto_7

    :cond_c
    iget-boolean v1, p0, Lo5/M;->k:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->a()V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFMExtraAdapter()Lo5/c;

    move-result-object v2

    iput-boolean v0, v2, Lo5/c;->i:Z

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFMExtraAdapter()Lo5/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionSpeed()Landroid/widget/TextView;

    move-result-object v2

    sget-object v5, Lf2/e;->c:Lf2/e;

    invoke-virtual {v5, v4, v0}, Lf2/e;->a(IZ)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionDuration()Landroid/widget/TextView;

    move-result-object v2

    sget-object v5, Lf2/e;->c:Lf2/e;

    invoke-virtual {v5, v4, v0}, Lf2/e;->a(IZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMMotionImageViewBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lf2/e;->c:Lf2/e;

    invoke-virtual {v2, v3, v0}, Lf2/e;->a(IZ)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_7

    :cond_d
    :goto_5
    iget-object v1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v3, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->k:Lo5/c;

    const/high16 v5, -0x1000000

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v3

    sget-object v6, Lf2/a;->f:Lf2/a;

    iget-boolean v6, v6, Lf2/a;->b:Z

    if-eqz v6, :cond_e

    move v6, v5

    goto :goto_6

    :cond_e
    move v6, v2

    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v3, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->k:Lo5/c;

    if-eqz v3, :cond_f

    iput-boolean v0, v3, Lo5/c;->i:Z

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_10
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuTitle()Landroid/widget/TextView;

    move-result-object v3

    sget-object v6, Lf2/e;->c:Lf2/e;

    invoke-virtual {v6, v4, v0}, Lf2/e;->a(IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    sget-object v4, Lf2/e;->c:Lf2/e;

    const v6, 0x7f060bd4

    invoke-virtual {v4, v6, v0}, Lf2/e;->a(IZ)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v3, Lf2/a;->f:Lf2/a;

    iget-boolean v3, v3, Lf2/a;->b:Z

    if-eqz v3, :cond_12

    move v2, v5

    :cond_12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->m:Lo5/e0;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Lo5/e0;->b:Lr5/f;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_13
    iget-object v0, v0, Lo5/e0;->c:Lr5/i;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_14
    :goto_7
    invoke-virtual {p0}, Lo5/M;->Cr()V

    return-void
.end method

.method public final G3()Z
    .locals 0

    iget-object p0, p0, Lo5/M;->d:LV9/n0;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, LV9/n0;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Gk(Z)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lo5/M;->d:LV9/n0;

    iget-object v1, v0, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->c:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v1, p0, Lo5/M;->Y:I

    const/16 v2, 0xb0

    iput v2, p0, Lo5/M;->Y:I

    iget-boolean v2, p0, Lo5/M;->a:Z

    new-instance v3, LF1/W1;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, LF1/W1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1, v2, v3}, LV9/n0;->e(ZZLF1/W1;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iput v1, p0, Lo5/M;->Y:I

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lo5/M;->P:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lo5/M;->pr(III)V

    :cond_3
    return p1
.end method

.method public final K0()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onConfigItemsUpdate: "

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lo5/M;->dr()V

    return-void
.end method

.method public final Lo(II)Z
    .locals 1

    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0}, Lo5/M;->onBackEvent(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lo5/M;->onBackEvent(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x6

    goto :goto_0
.end method

.method public final Oe()[[I
    .locals 11

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [I

    aput v4, p0, v3

    aput v4, p0, v4

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v5, v2, [I

    const/4 v6, 0x5

    aput v6, v5, v3

    aput v0, v5, v4

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_3

    iget-object v6, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La5/i;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget v6, v8, Landroid/graphics/Rect;->left:I

    iget v9, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    filled-new-array {v6, v9, v10, v8}, [I

    move-result-object v6

    goto :goto_1

    :cond_2
    new-array v8, v2, [I

    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, v8, v4

    aget v8, v8, v3

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    filled-new-array {v9, v8, v10, v6}, [I

    move-result-object v6

    :goto_1
    aget-object v8, v1, v5

    iget v7, v7, La5/i;->c:I

    aput v7, v8, v4

    aget v7, v6, v4

    aput v7, v8, v3

    aget v7, v6, v3

    aput v7, v8, v2

    aget v7, v6, v2

    const/4 v9, 0x3

    aput v7, v8, v9

    const/4 v7, 0x4

    aget v6, v6, v9

    aput v6, v8, v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final P4(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final Pe(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo5/M;->vr(Landroid/view/View;Z)V

    return-void
.end method

.method public final R0(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    invoke-virtual {v0}, LA2/a$a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14022b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, LF1/C4;->b(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lr2/w;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const-string v3, "attr_feature_name"

    const-string v4, "flash_out_button"

    invoke-static {v4, v3, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lr2/w;->disableUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lr2/w;->I(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xc1

    invoke-virtual {p0, v0, p1, v1}, Lo5/M;->w3(Lcom/android/camera/data/data/c;Landroid/view/View;I)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lr2/w;->getDisableReasonString()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/h1;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, LF1/h1;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "ignore click flash for disable update"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final varargs T0([I)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateConfigItem configItem = "

    invoke-static {v3, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lo5/M;->Zq(I)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lo5/M;->r:Lo5/c;

    iget-object v4, v4, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final Tg()Z
    .locals 0

    iget-boolean p0, p0, Lo5/M;->h:Z

    return p0
.end method

.method public final Tq()V
    .locals 3

    iget-object v0, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    new-instance v1, Lo5/M$f;

    invoke-direct {v1, p0}, Lo5/M$f;-><init>(Lo5/M;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LC4/o;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, LC4/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Uq(ZZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lo5/M;->Z9()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x7f0717b0

    const/4 v5, 0x3

    const/high16 v6, 0x43fa0000    # 500.0f

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lo5/M;->h:Z

    iget-object p1, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    iget p2, p0, Lo5/M;->P:I

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v0, [F

    aput v6, v8, v1

    invoke-virtual {v7, v5, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    new-instance v6, Lo5/O;

    invoke-direct {v6, p1}, Lo5/O;-><init>(Landroid/view/View;)V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object v6, v0, v1

    invoke-virtual {v5, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    invoke-static {p1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2, v7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1, v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2, v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const-wide/16 v7, 0x50

    invoke-static {v7, v8}, Lmiuix/animation/FolmeEase;->linear(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    invoke-virtual {p2, v7}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-instance v8, Lo5/P;

    invoke-direct {v8, p0}, Lo5/P;-><init>(Lo5/M;)V

    new-array v9, v0, [Lmiuix/animation/listener/TransitionListener;

    aput-object v8, v9, v1

    invoke-virtual {v7, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [F

    aput v6, v0, v1

    invoke-virtual {v7, v5, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lo5/M;->Z9()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lo5/M;->O:Lp5/a;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v4, v1}, Lo5/M;->jr(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lo5/M;->ir(Z)V

    :goto_1
    invoke-static {p1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public final Vh()V
    .locals 5

    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo5/M;->t:Z

    invoke-static {}, LK2/b;->R()Z

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lo5/M;->Vq()V

    iget-object v1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, p0, Lo5/M;->t:Z

    const/16 v4, 0xdf

    invoke-virtual {p0, v1, v2, v3, v4}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo5/M;->Uq(ZZ)V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result p0

    iput p0, v0, Lo5/c;->h:I

    return-void
.end method

.method public final Vi(F)V
    .locals 0

    iget-object p0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final Vq()V
    .locals 2

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkTopMenu()Lo5/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkTopMenu()Lo5/e0;

    move-result-object p0

    invoke-virtual {p0}, Lo5/e0;->b()V

    :cond_0
    return-void
.end method

.method public final W3()V
    .locals 1

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo5/M;->e0:Ljy/f;

    invoke-virtual {p0}, Ljy/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public final W8()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-boolean v0, p0, Lo5/M;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    iget-object v1, v0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(IILjava/lang/Object;)V

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->b()V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->a()V

    :cond_0
    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lo5/M;->Gk(Z)Z

    :cond_2
    invoke-virtual {p0}, Lo5/M;->tr()V

    return-void
.end method

.method public final Wk()V
    .locals 0

    iget-object p0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->b()V

    return-void
.end method

.method public final Wq()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v1, "TopMenu directHidden"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lo5/M;->Vq()V

    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, LQ6/n1;->ri()V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo5/M;->h:Z

    sget-object v1, Lf2/a;->f:Lf2/a;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v0, v0, v0}, Lf2/a;->j(IZZZZ)V

    iget-boolean v1, p0, Lo5/M;->i:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lo5/M;->Br()V

    :cond_7
    iput-boolean v0, p0, Lo5/M;->t:Z

    iput-boolean v0, p0, Lo5/M;->i:Z

    iput-boolean v0, p0, Lo5/M;->s:Z

    iput-boolean v0, p0, Lo5/M;->I:Z

    iget-boolean v1, p0, Lo5/M;->k:Z

    if-eqz v1, :cond_8

    iput-boolean v0, p0, Lo5/M;->k:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    invoke-static {}, LQ6/r1;->fq()V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/y2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LF1/y2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public Xq(Lcom/android/camera/data/data/c;La5/i;II)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged",
            "RtlHardcoded"
        }
    .end annotation

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lo5/M;->I:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo5/M;->Gk(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reverseExpandView \uff0creturn"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "componentData == null \uff0creturn"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v1, v0}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setExpendAnimRunning(Z)V

    iget-boolean v1, p0, Lo5/M;->V:Z

    if-eqz v1, :cond_3

    iget v2, p0, Lo5/M;->a0:I

    rem-int v2, p4, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lo5/M;->Z:I

    div-int v2, p4, v2

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Lo5/M;->a0:I

    div-int v1, p4, v1

    goto :goto_1

    :cond_4
    iget v1, p0, Lo5/M;->Z:I

    rem-int v1, p4, v1

    :goto_1
    invoke-static {}, LK2/b;->b0()Z

    move-result v3

    const v4, 0x7f0717cc

    if-eqz v3, :cond_5

    iget-object v3, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_5
    iget v3, p0, Lo5/M;->Q:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    :goto_2
    iget v5, p0, Lo5/M;->P:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    new-instance v6, LV9/k0;

    invoke-direct {v6, p1, p0}, LV9/k0;-><init>(Lcom/android/camera/data/data/c;Lo5/M;)V

    iget-object v7, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iput v5, v7, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->j:I

    iput v3, v7, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->k:I

    iget v5, p0, Lo5/M;->S:I

    mul-int/2addr v5, v1

    iput v5, v6, LV9/k0;->e:I

    iget v5, p0, Lo5/M;->i0:I

    iput v5, v6, LV9/k0;->j:I

    invoke-static {}, Lf2/b;->e()Z

    invoke-virtual {p0}, Lo5/M;->Yq()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v6, LV9/k0;->k:Landroid/graphics/drawable/Drawable;

    iput-object p2, v6, LV9/k0;->l:La5/i;

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iget v7, p0, Lo5/M;->R:I

    iput v7, v5, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->l:I

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setVerticalExpandView(Z)V

    iget v5, p2, La5/i;->c:I

    iput v5, v6, LV9/k0;->i:I

    iget v5, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v8, 0xe5

    if-ne v5, v8, :cond_6

    move v5, v7

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v5

    :goto_3
    iget-object v8, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v8, v5}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setRotation(I)V

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v5, v6}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setAdapter(LV9/k0;)V

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v5}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v5}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v5

    add-int/2addr v5, p1

    sub-int/2addr v5, v0

    iget-object p1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result p1

    div-int p1, v5, p1

    :goto_4
    iget v5, p0, Lo5/M;->f:I

    if-le v5, v0, :cond_8

    sub-int/2addr v5, v0

    if-ne v2, v5, :cond_8

    if-le p1, v0, :cond_8

    iget v0, p0, Lo5/M;->R:I

    mul-int/2addr v0, v2

    iput v0, v6, LV9/k0;->f:I

    iget v0, p0, Lo5/M;->Z:I

    sub-int/2addr p4, v0

    add-int/lit8 v2, v2, -0x1

    :cond_8
    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v5, v7}, Landroid/widget/GridLayout;->setOrientation(I)V

    iget-object v5, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v5, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->setTouchRow(I)V

    const/4 v5, -0x2

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, LK2/b;->b0()Z

    move-result v3

    const v5, 0x7f0717ef

    if-eqz v3, :cond_d

    invoke-static {}, LK2/b;->Z()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x33

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_5

    :cond_9
    const/16 v3, 0x35

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lo5/M;->R:I

    mul-int/2addr v4, p1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v4

    iget-object v3, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-static {}, LK2/b;->a0()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v7

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0714d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_6
    add-int/2addr p4, v3

    add-int v3, p4, v6

    iget v4, p0, Lo5/M;->P:I

    if-le v3, v4, :cond_c

    iget-boolean v8, p0, Lo5/M;->V:Z

    if-nez v8, :cond_b

    sub-int/2addr v3, v4

    iget-object v4, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    sub-int/2addr p4, v3

    invoke-static {v7, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_7

    :cond_b
    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result p4

    :cond_c
    :goto_7
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_d
    const/16 p4, 0x31

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p4, p0, Lo5/M;->R:I

    mul-int/2addr p4, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    mul-int/2addr p4, v2

    add-int/2addr p4, v3

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_8
    iget-object p4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    new-instance v0, Lo5/C;

    invoke-direct {v0, p0}, Lo5/C;-><init>(Lo5/M;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p4, p0, Lo5/M;->d:LV9/n0;

    if-eqz p4, :cond_f

    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iput-object v0, p4, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p4, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lo5/M;->S:I

    iput v0, p4, LV9/n0;->g:I

    iput-object p2, p4, LV9/n0;->a:La5/i;

    iget-boolean p2, p0, Lo5/M;->V:Z

    iput-boolean p2, p4, LV9/n0;->i:Z

    iput v1, p4, LV9/n0;->c:I

    iget-boolean p2, p0, Lo5/M;->a:Z

    invoke-virtual {p0, v2, p1}, Lo5/M;->ar(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p4, v0, p2}, LV9/n0;->c(Ljava/util/ArrayList;Z)V

    iget p2, p0, Lo5/M;->f:I

    if-le p1, p2, :cond_e

    iget-object p2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p4, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    iget v0, p0, Lo5/M;->f:I

    sub-int/2addr p1, v0

    iget v0, p0, Lo5/M;->R:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, p1

    add-int/2addr v1, p4

    const/16 p1, 0x14a

    invoke-virtual {p0, p2, v1, p1}, Lo5/M;->pr(III)V

    :cond_e
    iget-object p1, p0, Lo5/M;->d:LV9/n0;

    iget-object p2, p1, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz p2, :cond_f

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p2

    invoke-virtual {p2}, LBr/e;->g()V

    iget-object p2, p1, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, LV9/n0;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_f
    iput p3, p0, Lo5/M;->Y:I

    invoke-virtual {p0}, Lo5/M;->W3()V

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "showExpendView"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_9
    return-void
.end method

.method public Yq()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final Z9()Z
    .locals 1

    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo5/M;->I:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lo5/M;->k:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final Zq(I)I
    .locals 3

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La5/i;

    if-eqz v2, :cond_0

    iget v2, v2, La5/i;->c:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final addExtraExclusionRequest(LQ6/i0;Lf6/z;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/camera/base/ui/fragments/d;->addExtraExclusionRequest(LQ6/i0;Lf6/z;Z)V

    invoke-static {}, LK2/e;->x()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x18

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-interface {p1, p3}, LQ6/i0;->k(I)I

    move-result p1

    const/16 v0, 0xd

    add-int/2addr p1, p3

    invoke-virtual {p2, v0, p1, p0}, Lf6/z;->e(III)Lf6/x;

    return-void

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p2, p1, p1, p0}, Lf6/z;->e(III)Lf6/x;

    :cond_1
    return-void
.end method

.method public final ar(II)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    add-int v2, p1, v1

    iget-boolean v3, p0, Lo5/M;->V:Z

    if-eqz v3, :cond_0

    :goto_1
    iget-object v3, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lo5/M;->a0:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    iget v3, p0, Lo5/M;->Z:I

    mul-int/2addr v3, v2

    :goto_2
    iget-object v4, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lo5/M;->Z:I

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final br()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La5/i;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->l()Ljava/util/Optional;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {v1, v0}, LW9/O;->b(ILjava/util/Optional;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_0

    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, LK2/b;->a0()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const-class v3, Lu2/t;

    invoke-virtual {v2, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LDn/i;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, LDn/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v5

    invoke-virtual {v5, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LF1/x;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, LF1/x;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH4/m;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LH4/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, LX9/b;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, LX9/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LF1/Q1;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LF1/Q1;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2}, Lr2/v;->a(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, LW9/O;->f(II)Z

    move-result v4

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LV9/M5;->D(I)La5/i;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object p0, Lo9/a;->a:Lo9/b;

    invoke-interface {p0}, Lo9/b;->e()Lp9/t;

    move-result-object p0

    invoke-interface {p0}, Lp9/t;->z()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xe0

    invoke-static {p0}, LV9/M5;->D(I)La5/i;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    new-instance p0, LH4/c0;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, LH4/c0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_7
    :goto_2
    new-instance p0, LH4/c0;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, LH4/c0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final c2()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportTimerBurst"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->a()V

    iget-object v0, p0, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    if-eqz v0, :cond_4

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v1, Lt2/d;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    const-string v3, "OFF"

    invoke-virtual {v0, v2, v3}, Lt2/d;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMSeekBarIntervalWraper()LE8/h;

    move-result-object v2

    const v3, 0x7f060be4

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :goto_1
    invoke-virtual {v2, v4, v0}, LE8/h;->n(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMSeekBarCountWraper()LE8/h;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :goto_2
    invoke-virtual {v2, v1, v0}, LE8/h;->n(IZ)V

    iget-object p0, p0, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public final configFragmentData(LZ1/b;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->configFragmentData(LZ1/b;)V

    const/4 p0, 0x0

    new-array v0, p0, [I

    iget-object v1, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, p0, [I

    iget-object v1, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, p0, [I

    iget-object v1, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, p0, [I

    iget-object v1, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, p0, [I

    iget-object v1, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf1

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v2, p1, LZ1/b;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, p0, [I

    iget-object v2, p1, LZ1/b;->a:Ljava/util/HashMap;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, LK2/b;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf4

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v2, p1, LZ1/b;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LK2/b;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, p0, [I

    iget-object v2, p1, LZ1/b;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, LK2/b;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p0, p0, [I

    iget-object p1, p1, LZ1/b;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final cr(IZ)V
    .locals 5

    const/16 v0, 0xd

    iget-boolean v1, p0, Lo5/M;->h:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lo5/M;->J:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "config hideTopMenu"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkTopMenu()Lo5/e0;

    move-result-object v1

    invoke-virtual {v1}, Lo5/e0;->c()V

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v2, 0x0

    const/16 v3, 0xa7

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, LQ6/l1;->tf(Z)V

    invoke-static {}, LQ6/U0;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v2}, LQ6/l1;->Jl(Z)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->m1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LZh/b$c;->g:LZh/b$c;

    invoke-virtual {v0, v2}, LZh/b$c;->c(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LEs/b;

    invoke-direct {v3, v0}, LEs/b;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LE3/n;

    invoke-direct {v3, v0}, LE3/n;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v0, Lv2/h;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/h;

    iget-boolean p1, p1, Lv2/h;->V:Z

    if-eqz p1, :cond_3

    invoke-static {}, LR6/a;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/C;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LF1/C;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object p1, p0, Lo5/M;->d:LV9/n0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LV9/n0;->d()V

    :cond_4
    invoke-virtual {p0}, Lo5/M;->W3()V

    invoke-static {}, Lo5/M;->nr()V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lo5/M;->Wq()V

    return-void

    :cond_5
    invoke-virtual {p0, v4, v2}, Lo5/M;->Uq(ZZ)V

    iput-boolean v2, p0, Lo5/M;->h:Z

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LHs/c;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, LHs/c;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dr()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    invoke-virtual {p0}, Lo5/M;->br()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo5/M;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTopMenu: mSupportedExtraConfigs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo5/M;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/t;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/s4;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, LF1/s4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, p0

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    invoke-virtual {p0}, Lo5/M;->lr()V

    new-instance v3, Lo5/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lo5/M;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v9

    move-object v8, p0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lo5/c;-><init>(Landroid/content/Context;Ljava/util/List;Lo5/M;Lo5/M;Lo5/M;I)V

    iput-object v3, v6, Lo5/M;->r:Lo5/c;

    invoke-static {}, Lf2/b;->e()Z

    move-result p0

    iget-object v0, v6, Lo5/M;->r:Lo5/c;

    iput-boolean p0, v0, Lo5/c;->i:Z

    invoke-virtual {v6}, Lo5/M;->Yq()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lo5/c;->j:Landroid/graphics/drawable/Drawable;

    iget-object p0, v6, Lo5/M;->r:Lo5/c;

    iget p0, p0, Lo5/c;->m:I

    iput p0, v6, Lo5/M;->i0:I

    invoke-static {}, LK2/b;->N()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {}, LK2/b;->R()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, v6, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lo5/c;->u()I

    move-result p0

    :goto_1
    iput p0, v6, Lo5/M;->a0:I

    iget-object p0, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x51

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0717cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, LK2/b;->b0()Z

    move-result v3

    const/4 v5, 0x1

    const v7, 0x7f0717cc

    if-eqz v3, :cond_9

    sget v3, LK2/e;->g:I

    iput v3, v6, Lo5/M;->Q:I

    sget v3, LK2/e;->f:I

    iput v3, v6, Lo5/M;->P:I

    invoke-static {}, LK2/b;->Z()Z

    move-result v3

    const/16 v8, 0x33

    if-eqz v3, :cond_3

    iput v8, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x35

    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_2
    iget v3, v6, Lo5/M;->Z:I

    iget v9, v6, Lo5/M;->S:I

    mul-int/2addr v9, v3

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0717dd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v10, v9

    iput v10, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, LK2/b;->a0()Z

    move-result v3

    const v9, 0x7f0714d4

    if-eqz v3, :cond_4

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v3, v2, v8, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v3

    invoke-static {v3}, LF1/z0;->b(Landroidx/fragment/app/l;)Landroid/view/Display;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iput v8, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    if-lez v8, :cond_7

    iget v10, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    sget v10, LK2/e;->g:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v8

    sub-int/2addr v10, v9

    if-lez v10, :cond_7

    iget v8, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget v8, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_8
    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    :goto_5
    iget-object v3, v6, Lo5/M;->r:Lo5/c;

    move v8, v2

    move v9, v8

    :goto_6
    iget-object v10, v3, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v8, v10, :cond_b

    invoke-virtual {v3, v8}, Lo5/c;->getItemViewType(I)I

    move-result v10

    if-ne v11, v10, :cond_a

    add-int/lit8 v9, v9, 0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iget-object v3, v6, Lo5/M;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v8, v6, Lo5/M;->a0:I

    iget v10, v6, Lo5/M;->Z:I

    mul-int/2addr v8, v10

    if-le v3, v8, :cond_c

    move v3, v5

    goto :goto_7

    :cond_c
    move v3, v2

    :goto_7
    iput-boolean v3, v6, Lo5/M;->V:Z

    iget-object v3, v6, Lo5/M;->r:Lo5/c;

    invoke-virtual {v3}, Lo5/c;->u()I

    move-result v3

    iput v3, v6, Lo5/M;->f:I

    iget-object v3, v6, Lo5/M;->r:Lo5/c;

    iget-boolean v8, v6, Lo5/M;->V:Z

    iput-boolean v8, v3, Lo5/c;->n:Z

    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView$t;->a(I)Landroidx/recyclerview/widget/RecyclerView$t$a;

    move-result-object v3

    iput v9, v3, Landroidx/recyclerview/widget/RecyclerView$t$a;->b:I

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$t$a;->a:Ljava/util/ArrayList;

    :goto_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v9, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    iget-object v3, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v1, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v6, Lo5/M;->r:Lo5/c;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v1, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    const v3, 0x7f0717ca

    const v8, 0x7f0717cb

    if-nez v1, :cond_10

    iget-object v1, v6, Lo5/M;->r:Lo5/c;

    iget-object v1, v1, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget v1, v6, Lo5/M;->f:I

    iget-boolean v9, v6, Lo5/M;->V:Z

    if-eqz v9, :cond_e

    iget v1, v6, Lo5/M;->a0:I

    :cond_e
    iget v9, v6, Lo5/M;->R:I

    mul-int/2addr v9, v1

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0717ef

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/lit8 v12, v1, -0x1

    mul-int/2addr v10, v12

    add-int/2addr v10, v9

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v10

    iput v4, v6, Lo5/M;->P:I

    iget-boolean v9, v6, Lo5/M;->V:Z

    if-eqz v9, :cond_f

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v9, v4

    iput v9, v6, Lo5/M;->P:I

    goto :goto_9

    :cond_f
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v9, v4

    iput v9, v6, Lo5/M;->P:I

    :goto_9
    iget-boolean v4, v6, Lo5/M;->V:Z

    if-eqz v4, :cond_10

    iget v4, v6, Lo5/M;->R:I

    mul-int/2addr v1, v4

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v4, v12

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_10
    invoke-virtual {v6}, Lo5/M;->Er()V

    iget-object v1, v6, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, v6, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-boolean v1, v6, Lo5/M;->V:Z

    if-eqz v1, :cond_11

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_a

    :cond_11
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_a
    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    const/16 v3, 0x5a

    const v4, 0x7f0717ce

    if-ne v1, v3, :cond_12

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_b

    :cond_12
    invoke-virtual {v6}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_13

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_b

    :cond_13
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_b
    iget p0, v6, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe5

    const/4 v3, 0x4

    if-ne p0, v1, :cond_14

    invoke-static {v3}, LK2/b;->s(I)Landroid/graphics/Rect;

    move-result-object p0

    iget-object v1, v6, Lo5/M;->q:Landroid/view/ViewGroup;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v4

    invoke-virtual {v1, v7}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, v6, Lo5/M;->q:Landroid/view/ViewGroup;

    iget v4, p0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v8

    add-float/2addr p0, v4

    invoke-virtual {v1, p0}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, v6, Lo5/M;->q:Landroid/view/ViewGroup;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_14
    invoke-virtual {v6}, Lo5/M;->Cr()V

    iget-object p0, v6, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v6, Lo5/M;->Q:I

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v6, Lo5/M;->P:I

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x31

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c

    :cond_15
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_c
    iget-boolean p0, v6, Lo5/M;->V:Z

    if-eqz p0, :cond_17

    iget p0, v6, Lo5/M;->a0:I

    iput p0, v6, Lo5/M;->f:I

    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v6, Lo5/M;->a0:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, v6, Lo5/M;->X:Lo5/S;

    if-nez v0, :cond_16

    new-instance v0, Lo5/S;

    invoke-direct {v0}, Lo5/S;-><init>()V

    iput-object v0, v6, Lo5/M;->X:Lo5/S;

    iget-object v1, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lo5/S;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_16
    iget-object v0, v6, Lo5/M;->p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lo5/M;->p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    iget-object v1, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/camera/fragment/top/MenuProgressIndicatorView;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lo5/T;

    invoke-direct {v2, v0}, Lo5/T;-><init>(Lcom/android/camera/fragment/top/MenuProgressIndicatorView;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    goto :goto_d

    :cond_17
    iget-object p0, v6, Lo5/M;->p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v6, Lo5/M;->Z:I

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    :goto_d
    iget-object v0, v6, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-boolean p0, v6, Lo5/M;->V:Z

    if-eqz p0, :cond_18

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v0, "pref_select_zoom_ratio_by_user_key"

    invoke-virtual {p0, v0, v5}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-virtual {v6}, Lo5/M;->rr()V

    :cond_18
    return-void
.end method

.method public final er()Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTopEditor"
        type = 0x0
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_common_menu_root_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_common_menu_root_hint_temp"

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo5/M;->h:Z

    if-eqz v0, :cond_2

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LI4/m;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, LI4/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LQa/b;->i:Z

    if-nez v0, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v3, Lu2/t;

    invoke-virtual {v0, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LF1/s4;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LF1/s4;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo5/M;->Z9()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lo5/M;->Y:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lo5/M;->G3()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final fr(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lo5/M;->tr()V

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/x;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LC4/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g()V
    .locals 15

    const/4 v0, -0x1

    const/16 v1, 0xd

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "TopMenu added , return"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v6, p0, Lo5/M;->h:Z

    if-eqz v6, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "TopMenu showing , return"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "TopMenu !isEnableClick , return"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lo5/M;->dr()V

    iget v6, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v7, 0xa7

    if-eq v6, v7, :cond_4

    const/16 v2, 0xb4

    if-eq v6, v2, :cond_6

    const/16 v1, 0xba

    if-eq v6, v1, :cond_3

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v4}, LQ6/l1;->tf(Z)V

    invoke-interface {v1, v5}, LQ6/l1;->Jl(Z)V

    goto/16 :goto_1

    :pswitch_1
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->m1()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, LZh/b$c;->g:LZh/b$c;

    invoke-virtual {v1}, LZh/b$c;->a()V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {}, LK2/b;->T()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LKh/c;

    const/16 v6, 0x8

    invoke-direct {v2, v6}, LKh/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v2, LHp/b;

    invoke-virtual {v1, v2}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC3/d;

    invoke-direct {v2, v3}, LC3/d;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LH8/x;

    invoke-direct {v7, v2}, LH8/x;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v6, LC3/f;

    invoke-direct {v6, v1}, LC3/f;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_5
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v8, LC3/g;

    invoke-direct {v8, v2}, LC3/g;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v6, LH4/K;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, LH4/K;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v6, LF1/V3;

    invoke-direct {v6, v1}, LF1/V3;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    :goto_1
    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v2, LQ6/q1;

    invoke-virtual {v1, v2}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v2

    check-cast v2, LQ6/q1;

    if-eqz v2, :cond_8

    invoke-interface {v2}, LQ6/q1;->pg()V

    :cond_8
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, LQ6/n1;->n3()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v2}, LQ6/n1;->cf()V

    :cond_9
    invoke-virtual {p0, v5, v5}, Lo5/M;->Uq(ZZ)V

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v6, Lo5/M$e;

    invoke-direct {v6, p0}, Lo5/M$e;-><init>(Lo5/M;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-class v2, LQ6/o1;

    invoke-virtual {v1, v2}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lo5/z;

    invoke-direct {v2, v5, v4}, Lo5/z;-><init>(ZI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/d;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/l0;

    const/16 v6, 0xf

    invoke-direct {v2, v6}, LF1/l0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v2, "pref_expand_top_menu_extra"

    invoke-virtual {v1, v2, v4}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/camera/data/data/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xb0

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_2
    move v1, v0

    goto :goto_3

    :sswitch_0
    const-string v8, "attr_picture_ration"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_1
    const-string v8, "attr_super_eis"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_2
    const-string v8, "attr_auto_exposure"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    move v1, v5

    goto :goto_3

    :sswitch_3
    const-string v8, "attr_format"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v1, v4

    :goto_3
    packed-switch v1, :pswitch_data_1

    move v13, v6

    move-object v11, v7

    goto :goto_5

    :pswitch_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v8, Lr2/Q;

    invoke-virtual {v1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/c;

    const/16 v8, 0xd2

    :goto_4
    move-object v11, v1

    move v13, v8

    goto :goto_5

    :pswitch_4
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v8, Lv2/E;

    invoke-virtual {v1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/c;

    const/16 v8, 0xa5

    goto :goto_4

    :pswitch_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v8, Lr2/F;

    invoke-virtual {v1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/c;

    const/16 v8, 0xd6

    goto :goto_4

    :pswitch_6
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v8, Lr2/S;

    invoke-virtual {v1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/c;

    const/16 v8, 0xed

    goto :goto_4

    :goto_5
    if-eqz v11, :cond_10

    if-eq v13, v6, :cond_10

    move v6, v0

    move v1, v4

    :goto_6
    iget-object v8, p0, Lo5/M;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_f

    iget-object v8, p0, Lo5/M;->e:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La5/i;

    iget v8, v8, La5/i;->c:I

    if-ne v8, v13, :cond_e

    iget-object v6, p0, Lo5/M;->e:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La5/i;

    move-object v7, v6

    move v6, v1

    :cond_e
    add-int/2addr v1, v5

    goto :goto_6

    :cond_f
    move v14, v6

    :goto_7
    move-object v12, v7

    goto :goto_8

    :cond_10
    move v14, v0

    goto :goto_7

    :goto_8
    if-eqz v12, :cond_11

    if-eq v14, v0, :cond_11

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lo5/A;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lo5/A;-><init>(Lo5/M;Lcom/android/camera/data/data/c;La5/i;II)V

    invoke-virtual {v0, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_11
    move-object v10, p0

    :goto_9
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    goto :goto_a

    :cond_12
    move-object v10, p0

    :goto_a
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/j;

    invoke-direct {v0, v3}, LE3/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, v10, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "config showTopMenu"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1cf8c5fb -> :sswitch_3
        -0x12bd4837 -> :sswitch_2
        0x62dccbd -> :sswitch_1
        0x7f83ac32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final getFeatureUIAnimator(ZI)Lf6/q;
    .locals 2

    const/16 p0, 0x15

    if-ne p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz p1, :cond_1

    new-instance p1, Lf6/q$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v0, p1, Lf6/q$b;->a:F

    iput v0, p1, Lf6/q$b;->b:F

    iput v0, p1, Lf6/q$b;->c:F

    iput v0, p1, Lf6/q$b;->d:F

    iput v0, p1, Lf6/q$b;->e:F

    iput v0, p1, Lf6/q$b;->g:F

    iput v0, p1, Lf6/q$b;->f:F

    iput v0, p1, Lf6/q$b;->h:F

    iput v0, p1, Lf6/q$b;->i:F

    iput v0, p1, Lf6/q$b;->j:F

    iput p2, p1, Lf6/q$b;->k:F

    iput p0, p1, Lf6/q$b;->l:F

    const/16 p0, 0x8

    iput p0, p1, Lf6/q$b;->n:I

    const-wide/16 v0, 0x32

    iput-wide v0, p1, Lf6/q$b;->m:J

    new-instance p0, Lf6/q;

    invoke-direct {p0, p1}, Lf6/q;-><init>(Lf6/q$b;)V

    return-object p0

    :cond_1
    new-instance p1, Lf6/q$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v0, p1, Lf6/q$b;->a:F

    iput v0, p1, Lf6/q$b;->b:F

    iput v0, p1, Lf6/q$b;->c:F

    iput v0, p1, Lf6/q$b;->d:F

    iput v0, p1, Lf6/q$b;->e:F

    iput v0, p1, Lf6/q$b;->g:F

    iput v0, p1, Lf6/q$b;->f:F

    iput v0, p1, Lf6/q$b;->h:F

    iput v0, p1, Lf6/q$b;->i:F

    iput v0, p1, Lf6/q$b;->j:F

    const-wide/16 v0, 0x12c

    iput-wide v0, p1, Lf6/q$b;->m:J

    iput p0, p1, Lf6/q$b;->k:F

    iput p2, p1, Lf6/q$b;->l:F

    const/4 p0, 0x0

    iput p0, p1, Lf6/q$b;->n:I

    new-instance p0, Lf6/q;

    invoke-direct {p0, p1}, Lf6/q;-><init>(Lf6/q$b;)V

    return-object p0
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e01bc

    return p0
.end method

.method public final gl()I
    .locals 0

    iget p0, p0, Lo5/M;->Y:I

    return p0
.end method

.method public final gr(Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, La5/i;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "top menu click exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast v1, La5/i;

    iget-object v2, v1, La5/i;->j:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->B1()V

    iget-boolean v3, v1, La5/i;->d:Z

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: isEnable = false"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v3, v1, La5/i;->g:La5/i$c;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/camera/module/x;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/module/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LEs/I;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, LEs/I;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: resource isDisable=true"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget v1, v1, La5/i;->c:I

    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "onClick: itemType = "

    invoke-static {v1, v4, v3}, LF1/j3;->f(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v3, LF1/D2;->f:LF1/D2;

    iget-boolean v3, v3, LF1/D2;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/camera/data/data/E;->R()Z

    move-result v3

    const/16 v5, 0xd1

    const/16 v6, 0x106

    const/4 v7, -0x1

    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_4

    move v0, v4

    move v8, v0

    move v5, v7

    goto :goto_0

    :cond_4
    const v5, 0x7f1412bb

    move v8, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v8, Lr2/c0;

    invoke-virtual {v5, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/c0;

    iget v5, v5, Lr2/c0;->d:I

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v8

    :goto_0
    invoke-virtual {v2}, LJe/c;->w1()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq v1, v6, :cond_6

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    :cond_6
    if-eq v5, v7, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_7

    const v3, 0x7f140058

    goto :goto_1

    :cond_7
    const v3, 0x7f1400d5

    :goto_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/b;->p(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/16 v0, 0xe0

    if-ne v1, v0, :cond_9

    const v0, 0x7f140109

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    new-instance v0, LV9/d0;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p0, p1}, LV9/d0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "top menu onClickByTopMenu, ConfigItem=0x%x"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lo5/M;->vr(Landroid/view/View;Z)V

    return-void
.end method

.method public final h8()[I
    .locals 3

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    filled-new-array {v1, v0, v2, p0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-array p0, v1, [I

    return-object p0
.end method

.method public final hl()V
    .locals 2

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo5/M;->xr()V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reverse timer burst menu"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo5/M;->wr()V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reverse fast motion menu"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lo5/M;->yr()V

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reverse watermark menu"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lo5/M;->I:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lo5/M;->Ar()V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "reverse shutter style menu"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final hr(Lcom/android/camera/data/data/c;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "expandValueChange isEnableClick = false"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lo5/M;->Gk(Z)Z

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "expandValueChange same value"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, LU6/c;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "expandValueChange isDoingAction"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "expandValueChange configItem \uff1a"

    const-string v4, " oldValue\uff1a"

    const-string v5, " newValue: "

    invoke-static {v3, v4, p4, p2, v5}, LG3/k;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/data/data/c;->getDisplayTitleString()I

    move-result v2

    const-string v3, "click"

    const-string v4, "panel_menu"

    const-string v5, "classic"

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_3
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/J;

    invoke-direct {p2, p4, p3}, Lo5/J;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/K;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p3}, Lo5/K;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class p4, Lv2/E;

    invoke-virtual {p1, p4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/E;

    iput-object p2, p1, Lv2/E;->a:Ljava/lang/String;

    const-string/jumbo p1, "super_eis_pro"

    invoke-static {p3, p1, v3}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LQ5/C;

    const/16 p4, 0x8

    invoke-direct {p2, p3, p4}, LQ5/C;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/K3;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, LF1/K3;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_1
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/A;

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, LEs/A;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_2
    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    sget-object p1, LN6/h$a;->a:LN6/h;

    const-class p2, LQ6/r0;

    invoke-virtual {p1, p2}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p1

    check-cast p1, LQ6/r0;

    if-eqz p1, :cond_4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, LQ6/r0;->setMaxDuration(J)V

    :cond_4
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH3/c;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, LH3/c;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LN4/b;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, LN4/b;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_3
    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/c;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_video_quality"

    invoke-static {p2, p1, v3, v4}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/E;

    invoke-direct {p2, p4, p3}, Lo5/E;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/G;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p3}, Lo5/G;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_4
    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/c;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attr_video_fps"

    invoke-static {p2, p1, v3, v4}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/H;

    invoke-direct {p2, p4, p3}, Lo5/H;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/data/data/u;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p3}, Lcom/android/camera/data/data/u;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_5
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p4, LV9/M;

    invoke-direct {p4, p2, p3}, LV9/M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/o;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, LEs/o;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_6
    const-string p1, "attr_hdr"

    invoke-static {p1, p3, v6, v4}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/G;

    const/16 p4, 0xe

    invoke-direct {p2, p4}, LEs/G;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-class p1, Lr2/w;

    invoke-virtual {v0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/w;

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lr2/w;->N(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LCs/d;

    const/16 p4, 0xd

    invoke-direct {p2, p4}, LCs/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/L;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lo5/L;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LC4/e;

    const/16 p4, 0xa

    invoke-direct {p2, p3, p4}, LC4/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/z2;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, LF1/z2;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lf2/a;->f:Lf2/a;

    iget v2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v2, p1, p1, p1, p1}, Lf2/a;->j(IZZZZ)V

    :cond_6
    invoke-static {p3}, Ln8/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "attr_flash_mode"

    invoke-static {v2, p1, v6, v4}, Liq/d;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lr2/z;

    invoke-virtual {v0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/z;

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, v0, p2, p3}, Lr2/z;->v(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LH4/z;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, LH4/z;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lo5/F;

    invoke-direct {v0, p4, p2, p3}, Lo5/F;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LV9/n;

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, LV9/n;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_8
    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/c;->getKey(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "auto_exposure"

    invoke-static {p3, p1, p2}, Liq/d;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LCs/h;

    const/4 p4, 0x7

    invoke-direct {p2, p3, p4}, LCs/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/J;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, LEs/J;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_9
    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LF1/j1;

    const/16 p4, 0x9

    invoke-direct {p2, p3, p4}, LF1/j1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "MERGED"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "value_record_merged"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "value_record_standalone"

    :goto_0
    const-string v2, "attr_record_type"

    invoke-static {v2, v0, v3, v4}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_9
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LP9/d;

    const/4 v0, 0x2

    invoke-direct {p2, p4, v0, p3}, LP9/d;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lo5/I;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p3}, Lo5/I;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :sswitch_b
    iget p2, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/c;->getKey(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string/jumbo v5, "vivid"

    :cond_a
    const-string p2, "attr_color_type"

    invoke-static {v5, p1, p2}, Liq/d;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mode/capture/w;

    const/4 p4, 0x3

    invoke-direct {p2, p3, p4}, Lcom/android/camera/features/mode/capture/w;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :sswitch_c
    const-string p1, "female"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_b
    const-string/jumbo v5, "texture"

    :goto_1
    const-string p1, "attr_beauty_type"

    invoke-static {v5, p1, v3}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mode/capture/x;

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4}, Lcom/android/camera/features/mode/capture/x;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    invoke-virtual {p0, v1}, Lo5/M;->Gk(Z)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1402cf -> :sswitch_c
        0x7f1405c5 -> :sswitch_b
        0x7f140677 -> :sswitch_a
        0x7f140b3a -> :sswitch_9
        0x7f140d29 -> :sswitch_8
        0x7f140de6 -> :sswitch_7
        0x7f140e04 -> :sswitch_6
        0x7f140e74 -> :sswitch_5
        0x7f140f41 -> :sswitch_4
        0x7f140f43 -> :sswitch_3
        0x7f141018 -> :sswitch_2
        0x7f141159 -> :sswitch_1
        0x7f1412ed -> :sswitch_0
    .end sparse-switch
.end method

.method public initView(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo5/M;->d0:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo5/M;->a:Z

    const v0, 0x7f0b0b42

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lo5/M;->q:Landroid/view/ViewGroup;

    const v0, 0x7f0b0b41

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo5/M;->j0:Lo5/M$b;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lo5/M;->U:Landroid/view/GestureDetector;

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lo5/D;

    invoke-direct {v1, p0}, Lo5/D;-><init>(Lo5/M;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo5/M;->l0:Lo5/M$a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    const v0, 0x7f0b0b3a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0b3b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    iput-object v0, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    const v0, 0x7f0b06d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    iput-object v0, p0, Lo5/M;->p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    new-instance v0, LB9/i;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0717dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0717ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, LB9/i;-><init>(II)V

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V

    const v0, 0x7f0b05b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    iput-object v1, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->setMShutterStyleMenu(Landroid/widget/LinearLayout;)V

    const v0, 0x7f0b09b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->setMShutterStyleTitle(Landroid/widget/TextView;)V

    const v0, 0x7f0b09b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->setMShutterStyleBack(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, LS1/i;->n(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b09b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->setMShutterStyleRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b05a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    iput-object v1, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMLlTimerMenu(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLlTimerMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b85

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTvTimerMenu(Landroid/widget/LinearLayout;)V

    const v0, 0x7f0b0592

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMImageViewBack(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMImageViewBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b86

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTvShotInterval(Landroid/widget/TextView;)V

    const v0, 0x7f0b0b82

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTvShotCount(Landroid/widget/TextView;)V

    const v0, 0x7f0b0b83

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTvShotCountDot(Landroid/widget/TextView;)V

    const v0, 0x7f0b0b84

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTvShotCountInfinity(Landroid/widget/TextView;)V

    const v0, 0x7f0b0273

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMCustomSeekBarInterval(Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;)V

    const v0, 0x7f0b0271

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMCustomSeekBarCount(Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMCustomSeekBarCount()Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;->setVisibility(I)V

    const v0, 0x7f0b0636

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMLayoutCount(Landroid/view/View;)V

    const v0, 0x7f0b0637

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMLayoutInterval(Landroid/view/View;)V

    const v0, 0x7f0b0244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setMTimerBurstRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b05ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    iput-object v1, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMFastMotionMenu(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b057e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMMotionImageViewBack(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMMotionImageViewBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0b7d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMFastMotionDuration(Landroid/widget/TextView;)V

    const v0, 0x7f0b0b7e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMFastMotionSpeed(Landroid/widget/TextView;)V

    const v0, 0x7f0b0274

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMCustomSeekBarSpeed(Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;)V

    const v0, 0x7f0b0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMCustomSeekBarDuration(Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMCustomSeekBarDuration()Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0631

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMLayoutSpeed(Landroid/view/View;)V

    const v0, 0x7f0b0630

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMLayoutDuration(Landroid/view/View;)V

    const v0, 0x7f0b0242

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMFastMotionRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b05b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iput-object v1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopMenu(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopExtraMenu(Landroid/widget/LinearLayout;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f0b00d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopExtraMenuTitle(Landroid/widget/TextView;)V

    new-instance v0, Lo5/e0;

    invoke-direct {v0}, Lo5/e0;-><init>()V

    iput-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->m:Lo5/e0;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f0b0246

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopExtraMenuRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    const v2, 0x7f060be1

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v5, 0x7f0b075d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopExtraMenuMoreItemPoint(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v5, 0x7f0b0245

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v5, 0x7f0b0cd0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lf2/b;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    const v5, 0x7f0b0597

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->setMTopExtraMenuBack(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lf2/b;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, LS1/i;->n(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lo5/f0;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lo5/f0;-><init>(Lo5/M;Landroid/widget/LinearLayout;)V

    iput-object v0, v1, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->l:Lo5/f0;

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenu()Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0b0ccf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    invoke-static {v1}, LS1/i;->i(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    new-instance v2, LB4/d;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LB4/d;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0b0b3d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    iput-object p1, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    new-instance p1, LV9/m0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo5/M;->d:LV9/n0;

    iget-object p1, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    new-instance v0, Lhx/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lhx/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo5/M$c;

    invoke-direct {v0, p0}, Lo5/M$c;-><init>(Lo5/M;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object p1, p0, Lo5/M;->o:Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    new-instance v0, LT9/G;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LT9/G;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setOnMaterialModeChangedListener(Lcom/xiaomi/camera/ui/blur/BlurBackgroundView$b;)V

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v4, v0}, Lo5/M;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public ir(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v5, v0, Lo5/M;->V:Z

    if-eqz v5, :cond_1

    iget v5, v0, Lo5/M;->a0:I

    goto :goto_0

    :cond_1
    iget v5, v0, Lo5/M;->Z:I

    add-int v6, v4, v5

    sub-int/2addr v6, v3

    div-int v5, v6, v5

    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0717af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    neg-int v6, v6

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_c

    iget-object v8, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    move/from16 v16, v3

    goto/16 :goto_9

    :cond_2
    iget-boolean v9, v0, Lo5/M;->V:Z

    if-eqz v9, :cond_3

    iget v9, v0, Lo5/M;->a0:I

    rem-int v9, v7, v9

    goto :goto_2

    :cond_3
    iget v9, v0, Lo5/M;->Z:I

    div-int v9, v7, v9

    :goto_2
    add-int/lit8 v10, v5, -0x1

    sub-int/2addr v10, v9

    if-eqz v1, :cond_4

    mul-int/lit8 v10, v10, 0x28

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    invoke-static {v8}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v11, v9, La5/i;

    if-eqz v11, :cond_6

    check-cast v9, La5/i;

    iget-object v9, v9, La5/i;->h:La5/i$b;

    if-eqz v9, :cond_6

    sget v11, Lcom/android/camera/module/Y;->a:I

    invoke-interface {v9, v11}, La5/i$b;->b(I)La5/a;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-boolean v11, v9, La5/a;->j:Z

    if-nez v11, :cond_5

    iget-boolean v9, v9, La5/a;->h:Z

    if-nez v9, :cond_6

    :cond_5
    const v9, 0x3e4ccccd    # 0.2f

    goto :goto_4

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_4
    new-instance v11, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v12, 0x43960000    # 300.0f

    new-array v13, v3, [F

    aput v12, v13, v2

    const/4 v14, 0x3

    invoke-virtual {v11, v14, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v13

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    if-nez v7, :cond_7

    new-instance v10, Lo5/M$d;

    invoke-direct {v10, v0, v1}, Lo5/M$d;-><init>(Lo5/M;Z)V

    new-array v13, v3, [Lmiuix/animation/listener/TransitionListener;

    aput-object v10, v13, v2

    invoke-virtual {v11, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    :cond_7
    new-instance v10, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v10}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v13, v3, [F

    aput v12, v13, v2

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v12

    invoke-virtual {v12, v14, v15}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    new-instance v12, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v13, "startAlpha"

    invoke-direct {v12, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v13, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    move/from16 v16, v3

    if-eqz v1, :cond_8

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_8
    float-to-double v2, v9

    :goto_5
    invoke-virtual {v12, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v12, "endAlpha"

    invoke-direct {v3, v12}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    float-to-double v14, v9

    goto :goto_6

    :cond_9
    const-wide/16 v14, 0x0

    :goto_6
    invoke-virtual {v3, v13, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    invoke-static {v8}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v8

    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v8

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v12, "itemInTrY"

    invoke-direct {v9, v12}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v12, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    if-eqz v1, :cond_a

    int-to-double v13, v6

    goto :goto_7

    :cond_a
    const-wide/16 v13, 0x0

    :goto_7
    invoke-virtual {v9, v12, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    invoke-interface {v8, v9}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v8

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v13, "itemOutTrY"

    invoke-direct {v9, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz v1, :cond_b

    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_b
    int-to-double v14, v6

    :goto_8
    invoke-virtual {v9, v12, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    filled-new-array {v11}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v8

    invoke-interface {v8, v2}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    filled-new-array {v10}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_a
    return-void
.end method

.method public final isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lo5/M;->h:Z

    return p0
.end method

.method public final jr(Landroid/view/ViewGroup;Z)V
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0717b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_0
    if-ge v6, v3, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/2addr v6, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_6

    :cond_3
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_a

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v3

    if-eqz p2, :cond_4

    mul-int/lit8 v7, v7, 0x28

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {}, LK2/b;->W()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v8, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    :cond_5
    invoke-static {v6}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v10, 0x43960000    # 300.0f

    new-array v11, v0, [F

    aput v10, v11, v1

    const/4 v12, 0x3

    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    int-to-long v13, v7

    invoke-virtual {v11, v13, v14}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v11, v0, [F

    aput v10, v11, v1

    invoke-virtual {v7, v12, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    invoke-static {v6}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-instance v10, Lmiuix/animation/controller/AnimState;

    const-string v11, "childTrY"

    invoke-direct {v10, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    if-eqz p2, :cond_6

    int-to-double v13, v4

    goto :goto_3

    :cond_6
    move-wide v13, v11

    :goto_3
    invoke-virtual {v10, v8, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v10

    invoke-interface {v6, v10}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-instance v10, Lmiuix/animation/controller/AnimState;

    const-string v13, "childTrYOut"

    invoke-direct {v10, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    move-wide v13, v11

    goto :goto_4

    :cond_7
    int-to-double v13, v4

    :goto_4
    invoke-virtual {v10, v8, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    filled-new-array {v9}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string v9, "childAlpha"

    invoke-direct {v8, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move v10, v0

    if-eqz p2, :cond_8

    move-wide v0, v11

    goto :goto_5

    :cond_8
    move-wide v0, v13

    :goto_5
    invoke-virtual {v8, v9, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {v6, v0}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v6, "childAlphaOut"

    invoke-direct {v1, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    move-wide v11, v13

    :cond_9
    invoke-virtual {v1, v9, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    filled-new-array {v7}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/2addr v3, v10

    move v0, v10

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public final kr(IILjava/lang/String;)I
    .locals 1

    new-instance p0, Landroid/text/TextPaint;

    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p3, v0, p2, p0, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method public final l2(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lo5/M;->onBackEvent(I)Z

    return-void
.end method

.method public final lr()V
    .locals 5

    iget-object v0, p0, Lo5/M;->e:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La5/i;

    iget-object v2, v1, La5/i;->h:La5/i$b;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-interface {v2, v3}, La5/i$b;->b(I)La5/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, La5/a;->b:I

    if-lez v3, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/x0;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lo5/t;

    invoke-direct {v4, v1, v2}, Lo5/t;-><init>(La5/i;La5/a;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final mf(F)V
    .locals 0

    iget-object p0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->setLayoutIntervalOpacity(F)V

    return-void
.end method

.method public final mr()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "requestLocationPermission: "

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo5/M;->J:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    new-instance v2, LPb/j;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LPb/j;-><init>(Ljava/lang/Object;I)V

    sget-object p0, LH6/d;->b:Ljava/util/ArrayList;

    invoke-static {p0}, LH6/d;->h(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, LH6/d;->g(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, LH6/d;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LH6/d;->i(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const-string p0, "pref_camera_recordlocation_key"

    invoke-virtual {v2, p0}, LPb/j;->toshowPermissionNotAskDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PermissionManager"

    const-string v3, "requestCameraPermissions(), user check"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v1

    sget-object v2, LF6/a;->T:LF6/a;

    sget-object v3, LF6/a;->V:LF6/a;

    sget-object v4, LF6/a;->U:LF6/a;

    filled-new-array {v2, v3, v4}, [LF6/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LF6/q;->e([LF6/a;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public final notifyDataChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->notifyDataChanged(II)V

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    sget-object p1, Lf2/a;->f:Lf2/a;

    iget-boolean p1, p1, Lf2/a;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo5/M;->Fr()V

    :cond_0
    return-void

    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget p2, p0, Lcom/android/camera/fragment/h;->mResetType:I

    const/16 v0, 0x40

    if-eq p2, v0, :cond_3

    and-int/lit16 v0, p2, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_3

    const/16 v0, 0x200

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lo5/M;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public final notifyLayoutChange()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/b;->notifyLayoutChange()V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lo5/M;->onBackEvent(I)Z

    :cond_0
    return-void
.end method

.method public final notifyLayoutResetType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyThemeChanged(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lo5/M;->Fr()V

    return-void
.end method

.method public final varargs o2([I)V
    .locals 4

    iget-boolean v0, p0, Lo5/M;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    if-eqz v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lo5/M;->Zq(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lo5/M;->r:Lo5/c;

    iget-object v3, v3, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 10

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/p1;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v6, 0x8

    if-ne p1, v6, :cond_2

    :cond_1
    iput-boolean v2, p0, Lo5/M;->J:Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v6

    if-nez v6, :cond_1f

    iget-boolean v6, p0, Lo5/M;->h:Z

    if-eqz v6, :cond_1f

    iget-boolean v6, p0, Lo5/M;->J:Z

    if-nez v6, :cond_1f

    iget-object v6, p0, Lo5/M;->d:LV9/n0;

    iget-object v6, v6, LV9/n0;->d:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    if-eqz v6, :cond_3

    iget-boolean v6, v6, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->c:Z

    if-eqz v6, :cond_3

    return v2

    :cond_3
    const/4 v6, 0x2

    const/4 v7, 0x7

    if-eq p1, v3, :cond_5

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_5

    if-ne p1, v5, :cond_4

    goto :goto_0

    :cond_4
    move v8, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v8, v5

    :goto_1
    invoke-virtual {p0, v8}, Lo5/M;->Gk(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v8, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    iget-object v8, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    iget-object v8, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    if-eqz v8, :cond_1f

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1f

    :cond_b
    :goto_2
    if-eq p1, v5, :cond_13

    if-eq p1, v6, :cond_11

    if-eq p1, v4, :cond_f

    if-eq p1, v1, :cond_d

    if-eq p1, v3, :cond_11

    if-eq p1, v7, :cond_1f

    iget-boolean v1, p0, Lo5/M;->h:Z

    if-nez v1, :cond_c

    goto/16 :goto_6

    :cond_c
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Lo5/M;->cr(IZ)V

    goto/16 :goto_3

    :cond_d
    iget-boolean v3, p0, Lo5/M;->h:Z

    if-nez v3, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-virtual {p0, v1, v5}, Lo5/M;->cr(IZ)V

    goto/16 :goto_3

    :cond_f
    iget-boolean v1, p0, Lo5/M;->h:Z

    if-nez v1, :cond_10

    goto/16 :goto_6

    :cond_10
    invoke-virtual {p0, v4, v5}, Lo5/M;->cr(IZ)V

    goto/16 :goto_3

    :cond_11
    iget-boolean v1, p0, Lo5/M;->h:Z

    if-nez v1, :cond_12

    goto/16 :goto_6

    :cond_12
    invoke-virtual {p0, v3, v2}, Lo5/M;->cr(IZ)V

    goto :goto_3

    :cond_13
    iget-boolean v1, p0, Lo5/M;->h:Z

    if-nez v1, :cond_14

    goto/16 :goto_6

    :cond_14
    iget-boolean v1, p0, Lo5/M;->i:Z

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lo5/M;->xr()V

    iget-object p1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    iput v0, p1, Lo5/c;->h:I

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return v5

    :cond_15
    iget-boolean v1, p0, Lo5/M;->t:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lo5/M;->s:Z

    if-eqz v1, :cond_16

    goto/16 :goto_5

    :cond_16
    iget-boolean v1, p0, Lo5/M;->I:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lo5/M;->Ar()V

    return v5

    :cond_17
    iget-boolean v1, p0, Lo5/M;->k:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lo5/M;->wr()V

    iget-object p1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    iput v0, p1, Lo5/c;->h:I

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return v5

    :cond_18
    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v3, 0xa4

    if-ne v1, v3, :cond_19

    invoke-static {}, LQ6/v;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LH4/L;

    const/4 v6, 0x7

    invoke-direct {v3, v6}, LH4/L;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_6

    :cond_19
    invoke-virtual {p0, v5, v2}, Lo5/M;->cr(IZ)V

    :goto_3
    iput-boolean v2, p0, Lo5/M;->h:Z

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ6/p;

    invoke-interface {v3}, LQ6/p;->J9()Z

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ6/p;

    invoke-interface {v1}, LQ6/p;->O()V

    :cond_1a
    sget-object v1, Lf2/a;->f:Lf2/a;

    iget v3, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, v2, v2, v2}, Lf2/a;->j(IZZZZ)V

    iget-object v1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "onBackEvent ShowTopMenu:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lo5/M;->h:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lo5/M;->h:Z

    if-nez v1, :cond_1d

    if-eq p1, v4, :cond_1d

    const-class p1, LQ6/o1;

    invoke-virtual {v0, p1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lo5/z;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lo5/z;-><init>(ZI)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lo5/M;->i:Z

    if-eqz p1, :cond_1b

    invoke-static {}, Lo5/M;->Br()V

    :cond_1b
    iput-boolean v2, p0, Lo5/M;->i:Z

    iput-boolean v2, p0, Lo5/M;->t:Z

    iput-boolean v2, p0, Lo5/M;->s:Z

    iput-boolean v2, p0, Lo5/M;->I:Z

    iget-object p1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkTopMenu()Lo5/e0;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkTopMenu()Lo5/e0;

    move-result-object p1

    invoke-virtual {p1}, Lo5/e0;->b()V

    :cond_1c
    iget-boolean p1, p0, Lo5/M;->k:Z

    if-eqz p1, :cond_1d

    iput-boolean v2, p0, Lo5/M;->k:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/F;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LEs/F;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1d
    :goto_4
    return v5

    :cond_1e
    :goto_5
    invoke-virtual {p0}, Lo5/M;->yr()V

    return v5

    :cond_1f
    :goto_6
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "top menu onclick"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/b;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lo5/M;->W:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, LQ6/K0;->b()LQ6/K0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ6/K0;->o1()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, LQ6/K0;->Aj(Z)Z

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: moreModePopup shrinking"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, LQ6/G0;->b()LQ6/G0;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-interface {v2}, LQ6/G0;->c8()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: mode changing"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, LU6/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "onClick: isDoingAction"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lo5/M;->h:Z

    if-eqz v0, :cond_8

    invoke-static {}, LK2/e;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    if-le v0, v3, :cond_4

    iput-boolean v1, p0, Lo5/M;->b:Z

    iput-object p1, p0, Lo5/M;->c0:Landroid/view/View;

    iget-object p0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_4
    if-ge v2, v3, :cond_5

    iput-boolean v1, p0, Lo5/M;->b:Z

    iput-object p1, p0, Lo5/M;->c0:Landroid/view/View;

    iget-object p0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :cond_5
    iput-boolean v4, p0, Lo5/M;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo5/M;->c0:Landroid/view/View;

    invoke-virtual {p0, p1}, Lo5/M;->gr(Landroid/view/View;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lo5/M;->gr(Landroid/view/View;)V

    return-void

    :sswitch_0
    iget-boolean p1, p0, Lo5/M;->I:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick custom shutter style back"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/M;->Ar()V

    iget-object p1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    iput v0, p1, Lo5/c;->h:I

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :sswitch_1
    iget-boolean p1, p0, Lo5/M;->t:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lo5/M;->s:Z

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick watermark or shoot style back ;  mIsShowTopWatermarkMenu: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo5/M;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsShowTopShootStyleMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo5/M;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/M;->yr()V

    return-void

    :sswitch_2
    iget-boolean p1, p0, Lo5/M;->i:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick timer burst back"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/M;->xr()V

    iget-object p1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    iput v0, p1, Lo5/c;->h:I

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :sswitch_3
    iget-boolean p1, p0, Lo5/M;->k:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v0, "onClick fast motion back"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo5/M;->wr()V

    iget-object p1, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v0

    iput v0, p1, Lo5/c;->h:I

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_8
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b057e -> :sswitch_3
        0x7f0b0592 -> :sswitch_2
        0x7f0b0597 -> :sswitch_1
        0x7f0b09b5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lo5/M;->W3()V

    iget-boolean p1, p0, Lo5/M;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo5/M;->Wq()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/fragment/b;->onDestroyView()V

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->l:Lo5/f0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v1, Lo5/f0;->k:Landroid/widget/FrameLayout;

    iput-object v2, v1, Lo5/f0;->o:Landroid/widget/FrameLayout;

    iput-object v2, v1, Lo5/f0;->n:Landroid/widget/FrameLayout;

    iput-object v2, v1, Lo5/f0;->j:Landroid/widget/FrameLayout;

    iput-object v2, v1, Lo5/f0;->g:Landroid/widget/CheckBox;

    iput-object v2, v1, Lo5/f0;->i:Landroid/widget/CheckBox;

    iput-object v2, v1, Lo5/f0;->h:Landroid/widget/CheckBox;

    iput-object v2, v1, Lo5/f0;->f:Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->l:Lo5/f0;

    :cond_0
    iget-object v0, v0, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->m:Lo5/e0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo5/e0;->c()V

    :cond_1
    invoke-virtual {p0}, Lo5/M;->W3()V

    iget-object v0, p0, Lo5/M;->d0:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lo5/M;->d0:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public final onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/fragment/h;->onDetach()V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/D0;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lo5/M;->W3()V

    return-void
.end method

.method public final onExclusionCallback(Z)V
    .locals 2

    invoke-static {}, LQ6/J;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LH3/m;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LH3/m;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lo5/M;->b0:Le2/h;

    sget-object p1, Le2/h;->b:Le2/h;

    if-eq p0, p1, :cond_0

    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH4/T;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LH4/T;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/l;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, LCs/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-class p1, Lu2/t;

    invoke-virtual {p0, p1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/s4;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, LF1/s4;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, LU6/c;->b()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LW9/O;->h()V

    const-string p0, "click"

    const-string p1, "panel_menu"

    const-string v0, "attr_position_edit"

    const-string v1, "menu"

    invoke-static {v0, v1, p0, p1}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lo5/M;->W3()V

    invoke-static {}, Lo5/M;->nr()V

    return-void
.end method

.method public final onShot(Le2/h;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->onShot(Le2/h;)V

    iput-object p1, p0, Lo5/M;->b0:Le2/h;

    sget-object v0, Le2/h;->b:Le2/h;

    if-ne p1, v0, :cond_0

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/J;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LEs/J;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/j1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/s4;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LF1/s4;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lo5/M;->W3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lo5/M;->W3()V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lo5/M;->W:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lo5/M;->U:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public or(Landroid/view/View;Landroid/view/View;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Lo5/M;->Zq(I)I

    move-result v6

    const/4 v7, -0x1

    const/16 v8, 0x8

    if-ne v6, v7, :cond_0

    if-eqz p3, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v5}, Lo5/M;->jr(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v6, -0x2

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-static {v1}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v7, "start"

    invoke-direct {v5, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v13, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual {v5, v7, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v15, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v5, v15, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v13, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v5, v13, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    const-string v9, "end"

    invoke-static {v9, v7, v11, v12}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    invoke-virtual {v7, v15, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    invoke-virtual {v7, v13, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v7

    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v9, v6, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v1, v5, v7, v3}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    move/from16 v16, v4

    goto/16 :goto_1

    :cond_1
    iget-object v2, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    :goto_0
    iget-object v7, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    iget-object v7, v0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    new-instance v13, Lmiuix/animation/controller/AnimState;

    const-string v14, "hInStartAlpha"

    invoke-direct {v13, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v14, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v13, v14, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v13

    const-string v15, "hInEndAlpha"

    invoke-static {v15, v14, v11, v12}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v14

    new-instance v15, Lmiuix/animation/controller/AnimState;

    move/from16 v16, v4

    const-string v4, "hInStartScale"

    invoke-direct {v15, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v9, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v15, v4, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v15

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v15, v8, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    const-string v10, "hInEndScale"

    invoke-static {v10, v4, v11, v12}, LMf/c;->h(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-virtual {v4, v8, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-static {v7}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v7

    invoke-interface {v7, v13}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v7

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v10, v5, [F

    const/high16 v13, 0x43480000    # 200.0f

    aput v13, v10, v16

    const/4 v13, 0x7

    invoke-virtual {v8, v13, v10}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    filled-new-array {v8}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    invoke-interface {v7, v14, v8}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v7

    invoke-interface {v7, v9}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v7

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    invoke-virtual {v8, v6, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    filled-new-array {v8}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/2addr v2, v5

    move/from16 v4, v16

    const/16 v8, 0x8

    const-wide/16 v9, 0x0

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v4

    move v2, v8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lo5/M;->T:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Lo5/M;->P:I

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v1, v3}, Lo5/M;->pr(III)V

    iget-object v1, v0, Lo5/M;->n:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :goto_1
    iget-object v1, v0, Lo5/M;->p:Lcom/android/camera/fragment/top/MenuProgressIndicatorView;

    iget-boolean v0, v0, Lo5/M;->V:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    move/from16 v4, v16

    goto :goto_2

    :cond_3
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public final pr(III)V
    .locals 1

    iget-object v0, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq p3, p2, :cond_1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    iget-object v0, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    invoke-static {p1}, LF1/b0;->c(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    new-instance p2, Lo5/x;

    invoke-direct {p2, p0, v0}, Lo5/x;-><init>(Lo5/M;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lo5/M;->h0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/h;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    if-eq p3, p1, :cond_0

    iput-boolean p2, p0, Lo5/M;->J:Z

    :cond_0
    const/16 p1, 0x10

    if-ne p3, p1, :cond_1

    invoke-virtual {p0}, Lo5/M;->W3()V

    :cond_1
    const/16 p1, 0x40

    if-ne p3, p1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lo5/M;->onBackEvent(I)Z

    if-ne p3, p1, :cond_3

    iget-object p0, p0, Lo5/M;->r:Lo5/c;

    iget-object p1, p0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput p2, v0, Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;->e:I

    :cond_2
    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    if-eqz v0, :cond_4

    iput p2, v0, Lo5/c;->h:I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lo5/M;->r:Lo5/c;

    iget-object v2, v2, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, LK2/b;->b0()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lo5/M;->ur()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x5a

    const v2, 0x7f0717ce

    if-ne p2, v0, :cond_5

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    const/16 v0, 0x10e

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0717cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_2
    iget-object p0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final qr()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSmartCompositionV2"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "pref_start_composition_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lo5/M;->h:Z

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LI4/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->S()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->register(LN6/g;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->registerBackStack(LQ6/c0;)V

    const-class v0, LQ6/r1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final rr()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string v0, "pref_select_zoom_ratio_by_user_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LF1/K2;->c(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo5/M;->W:Z

    iget-object v2, p0, Lo5/M;->r:Lo5/c;

    iget-object v2, v2, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lo5/M;->a0:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    iget v3, p0, Lo5/M;->S:I

    mul-int/2addr v2, v3

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, LLy/g;

    invoke-direct {v0}, LLy/g;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lo5/y;

    invoke-direct {v0, p0, v3, v4, v2}, Lo5/y;-><init>(Lo5/M;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final sr()V
    .locals 6

    iget-object v0, p0, Lo5/M;->f0:Landroid/widget/FrameLayout;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lo5/M;->f0:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lo5/M;->er()Z

    move-result v2

    iget-object v3, p0, Lo5/M;->e0:Ljy/f;

    const-string v4, "menu_editor"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo5/M;->e0:Ljy/f;

    iget-object v3, v3, Ljy/c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v2, :cond_4

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    invoke-virtual {v0}, Ljy/f;->dismiss()V

    :cond_2
    iget-object v0, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    const v1, 0x7f140bdb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljy/c;->c(I)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    iget-object v1, p0, Lo5/M;->f0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v5, v5}, Ljy/f;->g(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/module/W;->isDolbyVisionPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    iget-object v0, v0, Ljy/c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, LG4/e;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LG4/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const-string p0, "pref_common_menu_root_hint"

    invoke-static {p0, v5}, LF1/K2;->c(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final tr()V
    .locals 6

    invoke-virtual {p0}, Lo5/M;->qr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo5/M;->er()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljy/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ljy/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo5/M;->e0:Ljy/f;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ljy/f;->j:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_1
    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07137d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0712e4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    iget-object v2, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Ljy/c;->setContentView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lo5/M;->qr()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lo5/M;->qr()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141260

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo5/M;->g0:Landroid/widget/TextView;

    const-string/jumbo v2, "smart_composition"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    new-instance v2, Lo5/B;

    invoke-direct {v2, p0}, Lo5/B;-><init>(Lo5/M;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljy/c;->c(I)V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    move v2, v1

    :goto_0
    iget-object v3, v0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v2, v4, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La5/i;

    iget v3, v3, La5/i;->c:I

    const/16 v4, 0xb25

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_a

    iget v0, p0, Lo5/M;->Z:I

    if-lt v2, v0, :cond_6

    goto :goto_2

    :cond_6
    iget v0, p0, Lo5/M;->g:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    if-eqz v0, :cond_a

    iget-object v4, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v4, v2, [I

    iget-object v5, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr v0, v3

    aget v3, v4, v1

    iget-object v4, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    sub-int/2addr v0, v4

    iput v0, p0, Lo5/M;->g:I

    :cond_9
    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    iget-object v2, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    iget v3, p0, Lo5/M;->g:I

    invoke-virtual {v0, v2, v3, v1}, Ljy/f;->g(Landroid/view/View;II)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lo5/M;->d0:Landroid/os/Handler;

    new-instance v1, LS8/h;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LS8/h;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_b
    invoke-virtual {p0}, Lo5/M;->er()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lo5/M;->sr()V

    :cond_c
    :goto_3
    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->unRegister(LN6/g;)V

    invoke-virtual {p0, p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->unRegisterBackStack(LQ6/c0;)V

    const-class v0, LQ6/r1;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, LK2/b;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c007e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lo5/M;->Z:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c007d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lo5/M;->Z:I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo5/M;->R:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0717f1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo5/M;->S:I

    iget p2, p0, Lo5/M;->Z:I

    mul-int/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0717cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0717dd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget v0, p0, Lo5/M;->Z:I

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lo5/M;->Q:I

    iget-boolean p1, p0, Lo5/M;->h:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo5/M;->Dr()V

    :cond_1
    invoke-virtual {p0}, Lo5/M;->g()V

    return-void
.end method

.method public ur()Z
    .locals 12

    iget-boolean v0, p0, Lo5/M;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    iput-object v0, p0, Lo5/M;->O:Lp5/a;

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lo5/M;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lo5/M;->I:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    iput-object v0, p0, Lo5/M;->O:Lp5/a;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lo5/M;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    iput-object v0, p0, Lo5/M;->O:Lp5/a;

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iput-object v0, p0, Lo5/M;->O:Lp5/a;

    :goto_1
    iget-object v0, p0, Lo5/M;->O:Lp5/a;

    invoke-virtual {v0}, Lp5/a;->getMenuHeight()I

    move-result v0

    iput v0, p0, Lo5/M;->T:I

    invoke-virtual {p0, v1}, Lo5/M;->Gk(Z)Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->isLandScape()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v3

    iget v4, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v5, 0xe5

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lo5/M;->s:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lo5/M;->I:Z

    if-eqz v4, :cond_7

    :cond_6
    move v0, v1

    move v3, v0

    :cond_7
    iget-object v4, p0, Lo5/M;->O:Lp5/a;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lo5/M;->O:Lp5/a;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    const/16 v5, 0x50

    const v6, 0x7f071789

    const v7, 0x7f07178b

    if-eqz v3, :cond_b

    const/16 v8, 0x5a

    const/16 v9, 0x11

    const v10, 0x7f07178e

    const v11, 0x7f07178d

    if-eq v3, v8, :cond_a

    const/16 v8, 0xb4

    if-eq v3, v8, :cond_9

    const/16 v5, 0x10e

    if-eq v3, v5, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v1, v3, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v1, v3, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_3
    iget v1, p0, Lo5/M;->T:I

    iget v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_c

    iget v1, p0, Lo5/M;->Q:I

    :cond_c
    iput v1, p0, Lo5/M;->P:I

    invoke-virtual {p0, v2, v2}, Lo5/M;->Uq(ZZ)V

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lo5/M;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v0, :cond_e

    iget v1, p0, Lo5/M;->Q:I

    :cond_e
    const/16 v0, 0xc8

    invoke-virtual {p0, v3, v1, v0}, Lo5/M;->pr(III)V

    :goto_4
    invoke-virtual {p0}, Lo5/M;->Z9()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lo5/M;->O:Lp5/a;

    sget-object v1, Li0/E;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lo5/M;->O:Lp5/a;

    invoke-static {v0}, Li0/E;->a(Landroid/view/View;)Li0/N;

    move-result-object v0

    new-instance v1, LLy/g;

    invoke-direct {v1}, LLy/g;-><init>()V

    invoke-virtual {v0, v1}, Li0/N;->f(Landroid/view/animation/Interpolator;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Li0/N;->a(F)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Li0/N;->e(J)V

    invoke-virtual {v0}, Li0/N;->i()V

    :cond_f
    iget v0, p0, Lo5/M;->Q:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v0, p0, Lo5/M;->T:I

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lo5/M;->O:Lp5/a;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v2
.end method

.method public final vr(Landroid/view/View;Z)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    move-object/from16 v2, p0

    if-nez p1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, La5/i;

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    check-cast v0, La5/i;

    iget v0, v0, La5/i;->c:I

    iget-boolean v1, v2, Lo5/M;->t:Z

    const/16 v6, 0xdf

    if-eqz v1, :cond_2

    if-eq v0, v6, :cond_2

    invoke-virtual {v2}, Lo5/M;->Vh()V

    :cond_2
    iget-boolean v1, v2, Lo5/M;->i:Z

    const/16 v3, 0xaa

    if-eqz v1, :cond_3

    if-eq v0, v3, :cond_3

    invoke-virtual {v2}, Lo5/M;->xr()V

    :cond_3
    iget-boolean v1, v2, Lo5/M;->I:Z

    const/16 v4, 0x10a

    if-eqz v1, :cond_4

    if-eq v0, v4, :cond_4

    invoke-virtual {v2}, Lo5/M;->Ar()V

    :cond_4
    if-eqz p2, :cond_5

    iget-object v1, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getMTopExtraMenuBack()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMImageViewBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "OFF"

    const-string v9, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    const v5, 0x7f0716cb

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const-wide/16 v12, 0x64

    if-eq v0, v3, :cond_24

    const/16 v3, 0xce

    if-eq v0, v3, :cond_1f

    const/16 v3, 0xd1

    if-eq v0, v3, :cond_1b

    if-eq v0, v6, :cond_12

    const/16 v6, 0xe1

    if-eq v0, v6, :cond_10

    const v1, 0x7f06042c

    if-eq v0, v4, :cond_b

    const/16 v3, 0x209

    if-eq v0, v3, :cond_a

    const/16 v3, 0xd42

    if-eq v0, v3, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, v2, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showFastMotionMenu"

    invoke-static {v0, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v2, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {v2}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "module"

    invoke-static {v0, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lf2/b;->e()Z

    move-result v15

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionSpeed()Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Lf2/e;->c:Lf2/e;

    invoke-virtual {v4, v1, v15}, Lf2/e;->a(IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionDuration()Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Lf2/e;->c:Lf2/e;

    invoke-virtual {v4, v1, v15}, Lf2/e;->a(IZ)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-boolean v1, v1, LF1/D2;->d:Z

    if-eqz v1, :cond_7

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMMotionImageViewBack()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v3, LF1/R1;

    const/16 v4, 0xc

    invoke-direct {v3, v14, v4}, LF1/R1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v3, Lv2/L;

    invoke-virtual {v1, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lp5/c;

    invoke-direct {v4, v14, v0}, Lp5/c;-><init>(Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;Lcom/android/camera/module/W;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/J;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LL9/g;

    const/16 v6, 0x10

    invoke-direct {v4, v14, v6}, LL9/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v3}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LH4/q;

    const/16 v4, 0xe

    invoke-direct {v3, v14, v4}, LH4/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/W0;

    const/16 v3, 0xf

    invoke-direct {v1, v14, v3}, LF1/W0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/m;->R()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutDuration()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutSpeed()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_8
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutDuration()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutSpeed()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutDuration()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMLayoutSpeed()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, LK2/b;->N()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0716cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0716d1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, La5/i$a;

    invoke-direct {v0}, La5/i$a;-><init>()V

    const/16 v1, 0x10e

    iput v1, v0, La5/i$a;->a:I

    new-instance v1, LE0/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, La5/i$a;->d:La5/i$b;

    new-instance v1, La5/i;

    invoke-direct {v1, v0}, La5/i;-><init>(La5/i$a;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lo5/c;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lo5/c;-><init>(Landroid/content/Context;Ljava/util/List;Lo5/M;Lo5/M;Lo5/M;I)V

    move-object v2, v3

    invoke-virtual {v14, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->setMFMExtraAdapter(Lo5/c;)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFMExtraAdapter()Lo5/c;

    move-result-object v0

    iput-boolean v15, v0, Lo5/c;->i:Z

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    invoke-static {v0, v9}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/I;

    iput-boolean v7, v0, Landroidx/recyclerview/widget/I;->g:Z

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFMExtraAdapter()Lo5/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu$initFastMotionMenu$4;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMFastMotionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->a()V

    invoke-virtual {v2}, Lo5/M;->wr()V

    iput-boolean v8, v2, Lo5/M;->h:Z

    return-void

    :cond_a
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v3, Lv2/f0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/f0;

    iget v3, v2, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v1, v3}, Lv2/Z;->isSwitchOn(I)Z

    move-result v1

    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LL9/L;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, LL9/L;-><init>(ZI)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    :cond_b
    iget-boolean v0, v2, Lo5/M;->I:Z

    if-eqz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    iget-object v0, v2, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showShootStyleMenu"

    invoke-static {v0, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    iget v3, v2, Lo5/M;->Q:I

    iget-object v4, v2, Lo5/M;->k0:Lg/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "photoPicker"

    invoke-static {v4, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleTitle()Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Lf2/e;->c:Lf2/e;

    invoke-virtual {v6, v1, v8}, Lf2/e;->a(IZ)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Li7/a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Li7/a;-><init>(Landroid/content/Context;Lg/b;)V

    iput-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->e:Li7/a;

    new-instance v4, Lp5/b;

    invoke-direct {v4, v0}, Lp5/b;-><init>(Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;)V

    iput-object v4, v1, Li7/a;->f:Li7/a$a;

    iput-boolean v8, v1, Li7/a;->j:Z

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v7, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->e:Li7/a;

    if-eqz v1, :cond_d

    const v4, 0x7f080fe5

    iput v4, v1, Li7/a;->i:I

    :cond_d
    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->f:Li7/a$b;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0703ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0703df

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v9, Li7/a$b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getContext(...)"

    invoke-static {v10, v11}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lvr/b0;->b(Landroid/content/Context;)Z

    move-result v10

    invoke-direct {v9}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput v1, v9, Li7/a$b;->a:I

    iput v4, v9, Li7/a$b;->c:I

    iput v6, v9, Li7/a$b;->d:I

    iput-boolean v10, v9, Li7/a$b;->e:Z

    iput-object v9, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->f:Li7/a$b;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v4, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->e:Li7/a;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getMShutterStyleRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0703de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iget-object v1, v0, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->e:Li7/a;

    if-eqz v1, :cond_f

    iget-object v4, v1, Li7/a;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Li7/a;->u()I

    move-result v5

    invoke-virtual {v1, v5, v7, v7}, Li7/a;->v(IZZ)V

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_f
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->a()V

    invoke-virtual {v2}, Lo5/M;->Ar()V

    iput-boolean v8, v2, Lo5/M;->h:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/c;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LE3/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_10
    iget-object v0, v2, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showShootStyleMenu: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v2, Lo5/M;->s:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    const/16 v1, 0xe1

    iget v5, v2, Lo5/M;->Z:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->a(ILo5/M;Lo5/M;Lo5/M;I)V

    iget-boolean v0, v2, Lo5/M;->s:Z

    xor-int/2addr v0, v8

    iput-boolean v0, v2, Lo5/M;->s:Z

    invoke-virtual {v2}, Lo5/M;->zr()V

    iput-boolean v8, v2, Lo5/M;->h:Z

    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v1, v2, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, v2, Lo5/M;->s:Z

    invoke-virtual {v2, v0, v1, v3, v6}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    iget-boolean v0, v2, Lo5/M;->s:Z

    if-nez v0, :cond_11

    invoke-virtual {v2}, Lo5/M;->Tq()V

    :cond_11
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LG3/h;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LG3/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_12
    iget-boolean v1, v2, Lo5/M;->t:Z

    if-nez v1, :cond_20

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, LGg/U;->n:LGg/U;

    invoke-virtual {v1}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v1

    invoke-static {v1}, LNh/d;->d(Lcom/xiaomi/cam/watermark/a;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const v1, 0x7f141573

    invoke-static {v0, v1}, LF1/C4;->g(Landroid/app/Activity;I)V

    return-void

    :cond_13
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const v1, 0x7f141572

    invoke-static {v0, v1}, LF1/C4;->g(Landroid/app/Activity;I)V

    return-void

    :cond_14
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/k0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/k0;

    if-nez v1, :cond_15

    goto/16 :goto_9

    :cond_15
    iget v2, v2, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lr2/k0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "watermark_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v2, "watermark_off"

    :cond_16
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LFn/D;

    const/16 v4, 0xb

    invoke-direct {v3, v2, v4}, LFn/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lo5/u;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lo5/u;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_17
    iget-boolean v0, v2, Lo5/M;->i:Z

    if-eqz v0, :cond_18

    iget-object v0, v2, Lo5/M;->m:Lcom/android/camera2/compat/theme/custom/mm/top/MenuExpendViewMM;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    :cond_18
    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkViewController()Lo5/f0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "WatermarkViewController"

    const-string v4, "initWatermarkSwitch: "

    invoke-static {v3, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lo5/f0;->m:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getWatermarkViewController()Lo5/f0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "initWatermarkStateV2: "

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LH6/d;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    iget-boolean v0, v0, Lh6/b;->b:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lh6/b;->g(Z)V

    goto :goto_2

    :cond_19
    invoke-static {}, Lh6/b;->j()Lh6/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lh6/b;->g(Z)V

    :goto_2
    iget-object v0, v2, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showWatermarkMenu\uff1a "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v2, Lo5/M;->t:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2}, Lo5/M;->dr()V

    :cond_1a
    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    const/16 v1, 0xdf

    iget v5, v2, Lo5/M;->Z:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->a(ILo5/M;Lo5/M;Lo5/M;I)V

    iget-boolean v0, v2, Lo5/M;->t:Z

    xor-int/2addr v0, v8

    iput-boolean v0, v2, Lo5/M;->t:Z

    invoke-virtual {v2}, Lo5/M;->zr()V

    iput-boolean v8, v2, Lo5/M;->h:Z

    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v1, v2, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v3, v2, Lo5/M;->t:Z

    invoke-virtual {v2, v0, v1, v3, v6}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    iget-boolean v0, v2, Lo5/M;->t:Z

    if-nez v0, :cond_2b

    invoke-virtual {v2}, Lo5/M;->Tq()V

    return-void

    :cond_1b
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/c0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/c0;

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {}, Lcom/android/camera/data/data/m;->D()Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v7, v8

    :cond_1d
    invoke-virtual {v3}, Lr2/c0;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_1e

    goto :goto_3

    :cond_1e
    move-object v1, v3

    :goto_3
    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lo5/w;

    invoke-direct {v4, v0, v1}, Lo5/w;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_1f
    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v1

    xor-int/2addr v1, v8

    invoke-static {}, LQ6/P;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lo5/v;

    invoke-direct {v4, v0, v1}, Lo5/v;-><init>(IZ)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_20
    :goto_4
    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/android/camera/features/mode/capture/j;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/camera/features/mode/capture/j;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v2, Lo5/M;->r:Lo5/c;

    if-eqz v0, :cond_21

    invoke-virtual {v2}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, v2, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_21
    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getSsExtraAdapter()Lo5/c;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v2, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;->getSsExtraAdapter()Lo5/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_22
    iget-object v0, v2, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, v2, Lo5/M;->K:Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/secondmenu/CustomShutterSecondMenu;->getShutterStyleAdapter()Li7/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_23
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/E;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LC4/E;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_24
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iget-boolean v0, v0, Lt2/j;->m:Z

    if-nez v0, :cond_2b

    iget-boolean v0, v2, Lo5/M;->i:Z

    if-eqz v0, :cond_25

    goto/16 :goto_9

    :cond_25
    iget-object v0, v2, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showTopTimerBurstMenu"

    invoke-static {v0, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo5/M;->Wk()V

    iget-object v14, v2, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLlTimerMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v3}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v3, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v3}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v3, 0xa7

    if-ne v0, v3, :cond_26

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTvShotInterval()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14135a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_26
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTvShotInterval()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14135b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-static {}, Lf2/b;->e()Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->e(Z)V

    sget-object v0, LF1/D2;->f:LF1/D2;

    iget-boolean v0, v0, LF1/D2;->d:Z

    if-eqz v0, :cond_27

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMImageViewBack()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, LHu/e;

    const/16 v4, 0x9

    invoke-direct {v3, v14, v4}, LHu/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3, v12, v13}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->a()V

    invoke-static {}, Lcom/android/camera/data/data/A;->d()I

    move-result v0

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutInterval()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v12, 0x7f12000c

    invoke-virtual {v4, v12, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/data/data/A;->e()I

    move-result v0

    div-int/lit8 v3, v0, 0xa

    const v4, 0xccccccc

    if-ne v3, v4, :cond_28

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutCount()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14135c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f14135e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_28
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutCount()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v12, 0x7f12000b

    invoke-virtual {v4, v12, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v3, Lt2/d;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    if-eqz v0, :cond_29

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_29
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutCount()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutInterval()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    :cond_2a
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutCount()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutInterval()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    :goto_8
    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutCount()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLayoutInterval()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, La5/i$a;

    invoke-direct {v0}, La5/i$a;-><init>()V

    const/16 v1, 0xf8

    iput v1, v0, La5/i$a;->a:I

    new-instance v1, LF1/B2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, La5/i$a;->d:La5/i$b;

    new-instance v1, La5/i;

    invoke-direct {v1, v0}, La5/i;-><init>(La5/i$a;)V

    invoke-static {v1}, LBw/i;->N(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-object v2, v0

    new-instance v0, Lo5/c;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lo5/c;-><init>(Landroid/content/Context;Ljava/util/List;Lo5/M;Lo5/M;Lo5/M;I)V

    move-object v2, v3

    iput-object v0, v14, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    iput-boolean v15, v0, Lo5/c;->i:Z

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    invoke-static {v0, v9}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/I;

    iput-boolean v7, v0, Landroidx/recyclerview/widget/I;->g:Z

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, v14, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->o:Lo5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu$initTopTimerBurstMenu$2;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMTimerBurstRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v14}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->d()V

    invoke-virtual {v2}, Lo5/M;->xr()V

    iput-boolean v8, v2, Lo5/M;->h:Z

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/G1;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LF1/G1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2b
    :goto_9
    return-void
.end method

.method public final w3(Lcom/android/camera/data/data/c;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La5/i;

    iget v0, p2, La5/i;->b:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lo5/M;->Xq(Lcom/android/camera/data/data/c;La5/i;II)V

    return-void
.end method

.method public final wr()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isVideoModeSupportFastMotion"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lo5/M;->k:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lo5/M;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lo5/M;->ur()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo5/M;->Uq(ZZ)V

    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/s;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH8/E;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LH8/E;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->b(Z)V

    iget-object v0, p0, Lo5/M;->M:Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lo5/M;->k:Z

    const/16 v3, 0xd42

    invoke-virtual {p0, v0, v1, v2, v3}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/n;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LCs/n;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final xb()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSmartCompositionV2"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo5/M;->e0:Ljy/f;

    iget-object v0, v0, Ljy/c;->a:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "smart_composition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo5/M;->e0:Ljy/f;

    invoke-virtual {p0}, Ljy/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public final xr()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportTimerBurst"
        type = 0x0
    .end annotation

    iget-boolean v0, p0, Lo5/M;->i:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lo5/M;->i:Z

    iget-object v1, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMCustomSeekBarCount()Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMCustomSeekBarInterval()Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLlTimerMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lf2/b;->e()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMImageViewBack()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v5, Lf2/e;->c:Lf2/e;

    const v6, 0x7f060b74

    invoke-virtual {v5, v6, v0}, Lf2/e;->a(IZ)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMCustomSeekBarCount()Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMCustomSeekBarInterval()Lmicamx/compat/ui/miuix/widget/HyperProgressSeekBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->getMLlTimerMenu()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lo5/M;->i:Z

    if-eqz v0, :cond_1

    const-string v0, "goto_timer_burst_menu"

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lo5/M;->ur()Z

    invoke-virtual {p0}, Lo5/M;->W3()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4, v2}, Lo5/M;->Uq(ZZ)V

    :goto_1
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v1, Lt2/d;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/d;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;->c(Z)V

    iget-object v0, p0, Lo5/M;->L:Lcom/android/camera/fragment/top/secondmenu/TimerBurstSecondMenu;

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lo5/M;->i:Z

    const/16 v3, 0xaa

    invoke-virtual {p0, v0, v1, v2, v3}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    iget-boolean v0, p0, Lo5/M;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo5/M;->Tq()V

    :cond_2
    return-void
.end method

.method public final yr()V
    .locals 4

    iget-boolean v0, p0, Lo5/M;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lo5/M;->t:Z

    invoke-virtual {p0}, Lo5/M;->zr()V

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lo5/M;->t:Z

    const/16 v3, 0xdf

    invoke-virtual {p0, v0, v1, v2, v3}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lo5/M;->s:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lo5/M;->s:Z

    invoke-virtual {p0}, Lo5/M;->zr()V

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    iget-object v1, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lo5/M;->s:Z

    const/16 v3, 0xe1

    invoke-virtual {p0, v0, v1, v2, v3}, Lo5/M;->or(Landroid/view/View;Landroid/view/View;ZI)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo5/M;->Tq()V

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v1

    iput v1, v0, Lo5/c;->h:I

    iget-object v0, p0, Lo5/M;->r:Lo5/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lo5/M;->Er()V

    return-void
.end method

.method public final zr()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsShowTopWatermarkMenu: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lo5/M;->t:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShowTopShootStyleMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lo5/M;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lo5/M;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo5/M;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->R()Z

    invoke-virtual {p0}, Lo5/M;->Vq()V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lo5/M;->Uq(ZZ)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lo5/M;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo5/M;->N:Lcom/android/camera/fragment/top/secondmenu/WatermarkSecondMenu;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lo5/M;->ur()Z

    invoke-virtual {p0}, Lo5/M;->W3()V

    return-void
.end method
