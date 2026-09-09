.class public final LI5/c;
.super LI5/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI5/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LI5/g<",
        "Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/DialogStatusData;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Landroidx/fragment/app/l;

.field public g:LI5/d;

.field public h:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

.field public i:LL5/i;

.field public j:LL5/g;

.field public k:LC5/j$a;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/DialogStatusData;

.field public n:I


# virtual methods
.method public final a(Landroidx/fragment/app/l;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v2, "text_font"

    invoke-static {v1, v0, v2}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "font"

    invoke-static {v1, v0, v2}, LV9/Z1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LK5/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e03b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0b0aa8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

    iput-object p2, p0, LI5/c;->h:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/DialogStatusData;

    iget-object v0, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;->a0()Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;->a0()Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DialogFontMenu"

    const-string v3, "fetchResourceData: TextStyle.getLocalTextStyle() > 0"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, LL5/c;->a:[Ljava/lang/String;

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v1, LCc/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LCc/l;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :goto_1
    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, LI5/c;->m:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/DialogStatusData;

    return-void
.end method

.method public final c()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMultiWindow"
        type = 0x0
    .end annotation

    iget-object v0, p0, LI5/c;->i:LL5/i;

    iget v0, v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView$a;->a:I

    iget-object v1, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    invoke-virtual {p0}, LI5/c;->e()V

    iget-object v1, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, LI5/c;->g(I)V

    iget-object v0, p0, LI5/c;->f:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071681

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, LI5/c;->h:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->r(I)V

    iget-object v2, p0, LI5/c;->j:LL5/g;

    iput v1, v2, LL5/g;->a:I

    iput v0, v2, LL5/g;->b:I

    iget-object v0, p0, LI5/c;->h:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    iget-object p0, p0, LI5/c;->i:LL5/i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, LI5/g;->d(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, LI5/c;->h:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView;

    if-eqz p1, :cond_0

    iget-object p0, p0, LI5/c;->i:LL5/i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    instance-of v3, v2, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/MarketTextStyle;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/MarketTextStyle;

    iget-object v3, v3, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/MarketTextStyle;->l:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LI5/c;->f:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    iget-object v4, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v1

    if-ge v2, v4, :cond_2

    iget-object v4, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, LI5/c$a;

    invoke-direct {v3, p0}, LI5/c$a;-><init>(LI5/c;)V

    sget-object p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/mark/a;->a:LH5/a;

    const-string p0, "locale"

    invoke-static {v2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LA3/g;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/mark/a;->b:LUy/d;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/mark/a;->c:LUy/d;

    :goto_0
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLanguage(...)"

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "zh"

    invoke-static {v2, v4, v1}, Lww/l;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cn"

    goto :goto_1

    :cond_1
    const-string v2, "en"

    :goto_1
    sget-object v4, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/mark/a;->a:LH5/a;

    invoke-interface {v4, v2, p0}, LH5/a;->a(Ljava/lang/String;LUy/d;)LMf/b;

    move-result-object p0

    new-instance v2, LFn/O;

    invoke-direct {v2, v0}, LFn/O;-><init>(I)V

    iget-object p0, p0, LMf/b;->a:Lio/reactivex/q;

    new-instance v4, LK4/a;

    invoke-direct {v4, v2}, LK4/a;-><init>(Ljava/lang/Object;)V

    const v2, 0x7fffffff

    invoke-virtual {p0, v4, v2}, Lio/reactivex/q;->d(Lio/reactivex/functions/e;I)Lio/reactivex/q;

    move-result-object p0

    const-string v2, "newObservable"

    invoke-static {p0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    const-string v4, "io(...)"

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lio/reactivex/q;->p(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/M;

    move-result-object p0

    invoke-static {}, Lio/reactivex/android/schedulers/a;->b()Lio/reactivex/android/schedulers/b;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/reactivex/q;->m(Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/C;

    move-result-object p0

    new-instance v2, LMf/e;

    const/4 v4, 0x5

    const-wide/16 v5, 0xbb8

    invoke-direct {v2, v4, v5, v6}, LMf/e;-><init>(IJ)V

    new-instance v4, Lio/reactivex/internal/operators/observable/G;

    invoke-direct {v4, p0, v2}, Lio/reactivex/internal/operators/observable/G;-><init>(Lio/reactivex/q;Lio/reactivex/functions/e;)V

    new-instance p0, LH5/c;

    invoke-direct {p0, v3, v1}, LH5/c;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LAk/i;

    invoke-direct {v2, p0, v0}, LAk/i;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LF1/E;

    invoke-direct {p0, v3}, LF1/E;-><init>(LI5/c$a;)V

    new-instance v0, LMf/a;

    invoke-direct {v0, p0, v1}, LMf/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v2, v0}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p0

    const-string v0, "defaultObservable.subscr\u2026eException(it))\n        }"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final g(I)V
    .locals 4

    iget-object v0, p0, LI5/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    iget-object v1, p0, LI5/c;->k:LC5/j$a;

    iget-object v1, v1, LC5/j$a;->a:LC5/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, v1, LC5/j;->S:Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/textstyle/TextStyle;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LC5/j;->Lq(Z)V

    :goto_0
    iget-object v0, p0, LI5/c;->i:LL5/i;

    iget v1, v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView$a;->a:I

    if-eq p1, v1, :cond_1

    iput v1, v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView$a;->b:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object v0, p0, LI5/c;->i:LL5/i;

    iput p1, v0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p0, p0, LI5/c;->i:LL5/i;

    iget p1, p0, Lcom/android/camera/fragment/watermark/wmSettingV2/signature/keyboard/recyclerview/SingleChoiceRecyclerView$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
