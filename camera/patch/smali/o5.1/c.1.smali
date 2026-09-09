.class public Lo5/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/android/camera/fragment/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La5/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo5/M;

.field public final d:Lo5/M;

.field public final e:Lo5/M;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroid/content/Context;

.field public h:I

.field public i:Z

.field public j:Landroid/graphics/drawable/Drawable;

.field public final k:Landroid/util/SparseIntArray;

.field public final l:Landroid/util/SparseBooleanArray;

.field public final m:I

.field public n:Z

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lo5/M;Lo5/M;Lo5/M;I)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo5/c;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo5/c;->i:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lo5/c;->k:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lo5/c;->l:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    iput v1, p0, Lo5/c;->m:I

    iput-boolean v1, p0, Lo5/c;->n:Z

    iput-object p1, p0, Lo5/c;->g:Landroid/content/Context;

    iput-object p2, p0, Lo5/c;->b:Ljava/util/List;

    iput-object p3, p0, Lo5/c;->c:Lo5/M;

    iput-object p4, p0, Lo5/c;->d:Lo5/M;

    iput-object p5, p0, Lo5/c;->e:Lo5/M;

    iput p6, p0, Lo5/c;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0c0009

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lo5/c;->a:I

    invoke-static {}, LK2/b;->b0()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0c000c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lo5/c;->a:I

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->R()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0c000a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lo5/c;->a:I

    goto :goto_0

    :cond_1
    sget-boolean p3, LJe/c;->k:Z

    sget-object p3, LJe/c$b;->a:LJe/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0c007f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lo5/c;->a:I

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La5/i;

    iget-object p3, p3, La5/i;->h:La5/i$b;

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    sget p4, Lcom/android/camera/module/Y;->a:I

    invoke-interface {p3, p4}, La5/i$b;->b(I)La5/a;

    move-result-object p3

    if-eqz p3, :cond_3

    iget p4, p3, La5/a;->c:I

    const/4 p5, -0x1

    if-eq p4, p5, :cond_5

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object p3, p3, La5/a;->f:Ljava/lang/String;

    :goto_2
    if-eqz p3, :cond_3

    const p4, 0x7f0717f1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const p5, 0x7f0717ec

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    new-instance p6, Landroid/text/TextPaint;

    invoke-direct {p6}, Landroid/text/TextPaint;-><init>()V

    int-to-float p5, p5

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p3, v1, p5, p6, p4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p3, p4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    iget p4, p0, Lo5/c;->m:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lo5/c;->m:I

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La5/i;

    iget p0, p0, La5/i;->c:I

    const/16 p1, 0xb8

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb9

    if-eq p0, p1, :cond_0

    const/16 p1, 0xf8

    if-eq p0, p1, :cond_0

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/camera/fragment/u;

    iget-boolean v3, v0, Lo5/c;->n:Z

    iget-object v4, v0, Lo5/c;->g:Landroid/content/Context;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0080

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {}, LK2/b;->N()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {}, LK2/b;->R()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0081

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :cond_2
    :goto_0
    iget v5, v0, Lo5/c;->a:I

    mul-int v6, v3, v5

    if-ge v1, v6, :cond_3

    div-int v6, v1, v3

    rem-int v3, v1, v3

    mul-int/2addr v3, v5

    add-int/2addr v3, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    iget-object v5, v0, Lo5/c;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La5/i;

    iget-object v6, v3, La5/i;->h:La5/i$b;

    if-nez v6, :cond_4

    goto/16 :goto_11

    :cond_4
    sget v7, Lcom/android/camera/module/Y;->a:I

    invoke-interface {v6, v7}, La5/i$b;->b(I)La5/a;

    move-result-object v6

    iput v1, v3, La5/i;->b:I

    iget v7, v3, La5/i;->c:I

    const-string v8, "ExtraAdapter"

    const/4 v9, 0x0

    if-eqz v6, :cond_39

    invoke-virtual {v0, v1}, Lo5/c;->getItemViewType(I)I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_f

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v11, v6, La5/a;->i:Lcom/android/camera/data/data/c;

    invoke-virtual {v11}, Lcom/android/camera/data/data/c;->disableUpdate()Z

    move-result v11

    xor-int/2addr v11, v10

    iput-boolean v11, v6, La5/a;->h:Z

    const v11, 0x7f0b0b1d

    invoke-virtual {v2, v11}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/SlideSwitchButton;

    iget-boolean v12, v0, Lo5/c;->i:Z

    invoke-virtual {v11, v12}, Lcom/android/camera/ui/SlideSwitchButton;->setChangeColor(Z)V

    invoke-virtual {v11, v4}, Lcom/android/camera/ui/SlideSwitchButton;->i(Landroid/content/Context;)V

    iget-object v12, v6, La5/a;->i:Lcom/android/camera/data/data/c;

    invoke-virtual {v11, v12, v7}, Lcom/android/camera/ui/SlideSwitchButton;->g(Lcom/android/camera/data/data/c;I)V

    iget-boolean v12, v6, La5/a;->h:Z

    invoke-virtual {v11, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v12, v0, Lo5/c;->e:Lo5/M;

    invoke-virtual {v11, v12}, Lcom/android/camera/ui/SlideSwitchButton;->setSlideSwitchListener(Lcom/android/camera/ui/SlideSwitchButton$b;)V

    iget v12, v3, La5/i;->b:I

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La5/i;

    iget v5, v5, La5/i;->c:I

    const/16 v12, 0xad

    if-eq v5, v12, :cond_d

    const/16 v12, 0xae

    if-eq v5, v12, :cond_c

    const/16 v12, 0xb8

    if-eq v5, v12, :cond_b

    const/16 v12, 0xb9

    if-eq v5, v12, :cond_a

    const/16 v12, 0xbb

    if-eq v5, v12, :cond_9

    const/16 v12, 0xcc

    if-eq v5, v12, :cond_c

    const/16 v12, 0xd0

    if-eq v5, v12, :cond_9

    const/16 v12, 0xd2

    if-eq v5, v12, :cond_8

    const/16 v12, 0xd5

    if-eq v5, v12, :cond_d

    const/16 v12, 0xe2

    if-eq v5, v12, :cond_7

    const/16 v12, 0xf8

    if-eq v5, v12, :cond_6

    const/16 v12, 0xd40

    if-eq v5, v12, :cond_5

    move v5, v9

    goto :goto_3

    :cond_5
    const v5, 0x7f140255

    goto :goto_3

    :cond_6
    const v5, 0x7f141359

    goto :goto_3

    :cond_7
    const v5, 0x7f140d5a

    goto :goto_3

    :cond_8
    const v5, 0x7f140e82

    goto :goto_3

    :cond_9
    const v5, 0x7f14111c

    goto :goto_3

    :cond_a
    const v5, 0x7f140ea9

    goto :goto_3

    :cond_b
    const v5, 0x7f141160

    invoke-static {v5}, Lcom/android/camera/data/data/w;->C(I)I

    move-result v5

    goto :goto_3

    :cond_c
    const v5, 0x7f141107

    goto :goto_3

    :cond_d
    const v5, 0x7f14112e

    :goto_3
    if-lez v5, :cond_e

    sget-object v12, LF1/D2;->f:LF1/D2;

    iget-boolean v12, v12, LF1/D2;->d:Z

    if-nez v12, :cond_e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v5, Lo9/a;->a:Lo9/b;

    invoke-interface {v5}, Lo9/b;->e()Lp9/t;

    move-result-object v12

    invoke-interface {v12, v4}, Lp9/t;->k(Landroid/content/Context;)I

    move-result v12

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-interface {v5}, Lo9/b;->e()Lp9/t;

    move-result-object v12

    invoke-interface {v12, v4}, Lp9/t;->x(Landroid/content/Context;)I

    move-result v12

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-interface {v5}, Lo9/b;->e()Lp9/t;

    move-result-object v5

    invoke-interface {v5, v4}, Lp9/t;->x(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    iget v1, v6, La5/a;->b:I

    if-gtz v1, :cond_10

    iget v1, v6, La5/a;->a:I

    if-lez v1, :cond_38

    :cond_10
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0407

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;

    iget-object v5, v0, Lo5/c;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v9}, Lcom/xiaomi/camera/ui/blur/BlurBackgroundView;->setEnableBlur(Z)V

    const v5, 0x7f0b090a

    invoke-virtual {v2, v5}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f0b0408

    invoke-virtual {v2, v11}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/AdaptiveTextView;

    const-string v13, "bo"

    invoke-static {v13}, LQa/b;->d(Ljava/lang/String;)Z

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_11

    const v13, 0x3fb33333    # 1.4f

    invoke-virtual {v12, v14, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_11
    iget v13, v6, La5/a;->c:I

    const/4 v15, -0x1

    if-eq v13, v15, :cond_12

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/ui/AdaptiveTextView;->setCustomText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_12
    iget-object v13, v6, La5/a;->f:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/camera/ui/AdaptiveTextView;->setCustomText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-boolean v13, v6, La5/a;->h:Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v12, ","

    const-string v11, "getContentDescriptionStringId() == -1, itemType = "

    sparse-switch v7, :sswitch_data_0

    iget-boolean v11, v6, La5/a;->g:Z

    if-eqz v11, :cond_13

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f1400d5

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_13
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f140058

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v4, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :sswitch_0
    iget v10, v6, La5/a;->d:I

    if-ne v10, v15, :cond_14

    invoke-static {v7, v11}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v1, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_14
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v6, La5/a;->d:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :sswitch_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, La5/a;->e:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :sswitch_2
    iget-object v1, v6, La5/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :sswitch_3
    iget v10, v6, La5/a;->d:I

    if-ne v10, v15, :cond_15

    invoke-static {v7, v11}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v1, v10}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    sget-object v1, LF1/D2;->f:LF1/D2;

    iget-boolean v1, v1, LF1/D2;->d:Z

    if-eqz v1, :cond_16

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_16
    invoke-virtual {v4, v13}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setEnabled(Z)V

    :goto_7
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    iget-object v10, v0, Lo5/c;->c:Lo5/M;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    iget-object v10, v0, Lo5/c;->d:Lo5/M;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v4}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    sget-object v10, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v10}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v10

    const v11, 0x3f666666    # 0.9f

    invoke-interface {v1, v11, v10}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/ITouchStyle;->clearTintColor()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    new-array v11, v9, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v10, v11}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v10, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v10}, Lu2/Q;->E(I)I

    move-result v1

    const/16 v10, 0xe5

    if-eq v1, v10, :cond_17

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    iget v10, v0, Lo5/c;->h:I

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setRotation(F)V

    :cond_17
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/16 v10, 0xd7

    if-eq v7, v10, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v14, v11, La5/i;

    if-eqz v14, :cond_18

    check-cast v11, La5/i;

    iget v11, v11, La5/i;->c:I

    if-ne v11, v10, :cond_18

    const v10, 0x7f0b0406

    invoke-virtual {v2, v10}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    invoke-virtual {v10}, Landroid/view/View;->isClickable()Z

    move-result v11

    invoke-virtual {v10}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->reset()V

    invoke-virtual {v10, v11}, Landroid/view/View;->setClickable(Z)V

    const v11, 0x7f0b0406

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMinimumWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_18
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v1, v6, La5/a;->k:Z

    const/16 v4, 0x8

    if-nez v1, :cond_19

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    const v1, 0x7f0b06d6

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-boolean v5, v6, La5/a;->l:Z

    if-eqz v5, :cond_1a

    move v4, v9

    :cond_1a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget v1, v6, La5/a;->b:I

    const v4, 0x7f0b0406

    if-lez v1, :cond_28

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const v4, 0x7f0b0408

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AdaptiveTextView;

    iget-boolean v4, v6, La5/a;->g:Z

    sget-object v5, Lo9/a;->a:Lo9/b;

    invoke-interface {v5}, Lo9/b;->e()Lp9/t;

    move-result-object v5

    iget-boolean v10, v0, Lo5/c;->i:Z

    invoke-interface {v5, v10, v4}, Lp9/t;->b(ZZ)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, v6, La5/a;->b:I

    if-lez v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateView="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Lcom/android/camera/module/Y;->a:I

    iget-object v4, v3, La5/i;->h:La5/i$b;

    invoke-interface {v4, v2}, La5/i$b;->b(I)La5/a;

    move-result-object v2

    if-nez v2, :cond_1c

    goto/16 :goto_11

    :cond_1c
    iget v5, v2, La5/a;->b:I

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    const-class v10, Lv2/x0;

    invoke-virtual {v6, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/x0;

    iget-object v10, v0, Lo5/c;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-ne v11, v5, :cond_21

    iget-object v3, v1, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v3}, Lq1/E;->l()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-boolean v3, v2, La5/a;->g:Z

    if-nez v3, :cond_1e

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->l()V

    iget-object v0, v0, Lo5/c;->l:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    sget-object v3, Lf2/a;->f:Lf2/a;

    invoke-virtual {v3}, Lf2/a;->i()Z

    move-result v3

    iget-boolean v2, v2, La5/a;->m:Z

    if-eqz v2, :cond_1d

    invoke-static {v0, v1, v3}, LG8/c;->c(ILcom/airbnb/lottie/LottieAnimationView;Z)V

    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_8

    :cond_1e
    iget-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {v0}, Lq1/E;->l()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v0

    sget-object v3, Lf2/a;->f:Lf2/a;

    invoke-virtual {v3}, Lf2/a;->i()Z

    move-result v3

    iget-boolean v2, v2, La5/a;->m:Z

    if-eqz v2, :cond_1f

    invoke-static {v0, v1, v3}, LG8/c;->c(ILcom/airbnb/lottie/LottieAnimationView;Z)V

    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_20
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "anim id same,not be updated,holder="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_21
    invoke-virtual {v10, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v6, v7, v5}, Lv2/x0;->q(II)Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0x91

    if-eq v7, v2, :cond_23

    const/16 v2, 0xaa

    if-eq v7, v2, :cond_23

    const/16 v2, 0xbe

    if-eq v7, v2, :cond_23

    const/16 v2, 0xd3

    if-eq v7, v2, :cond_22

    const/16 v2, 0xdf

    if-eq v7, v2, :cond_23

    const/16 v2, 0xef

    if-eq v7, v2, :cond_23

    const/16 v2, 0x100

    if-eq v7, v2, :cond_22

    const/16 v2, 0x10a

    if-eq v7, v2, :cond_23

    move v2, v9

    goto :goto_9

    :cond_22
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v5, Lv2/z0;

    invoke-virtual {v2, v5}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, LF1/R3;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, LF1/R3;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_9

    :cond_23
    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_a

    :cond_24
    move v2, v9

    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enableAnim = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v8, v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_25

    new-instance v2, Lo5/a;

    invoke-direct {v2, v7, v3, v1, v0}, Lo5/a;-><init>(ILa5/i;Lcom/airbnb/lottie/LottieAnimationView;Lo5/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_25
    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-interface {v4, v0}, La5/i$b;->b(I)La5/a;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_11

    :cond_26
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v2

    sget-object v3, Lf2/a;->f:Lf2/a;

    invoke-virtual {v3}, Lf2/a;->i()Z

    move-result v3

    iget-boolean v0, v0, La5/a;->m:Z

    if-eqz v0, :cond_27

    invoke-static {v2, v1, v3}, LG8/c;->c(ILcom/airbnb/lottie/LottieAnimationView;Z)V

    :cond_27
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_28
    iget v1, v6, La5/a;->a:I

    if-lez v1, :cond_38

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    move v12, v7

    const/16 v4, 0xd7

    if-ne v7, v4, :cond_2a

    move-object v4, v1

    check-cast v4, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f071737

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    const v10, 0x7f0b0406

    invoke-virtual {v4, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_29

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean v10, v6, La5/a;->g:Z

    if-eq v5, v10, :cond_2a

    :cond_29
    iget-boolean v5, v6, La5/a;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const v10, 0x7f0b0406

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v5, v6, La5/a;->g:Z

    invoke-virtual {v4, v5}, Lcom/android/camera2/compat/theme/custom/mm/top/StrikethroughImageView;->c(Z)V

    :cond_2a
    const v4, 0x7f0b0408

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/u;->c(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/AdaptiveTextView;

    iget-boolean v4, v6, La5/a;->g:Z

    const v5, 0x3e4ccccd    # 0.2f

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget v4, v6, La5/a;->a:I

    if-lez v4, :cond_2b

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_2b
    iget-boolean v4, v6, La5/a;->j:Z

    if-nez v4, :cond_2d

    iget-boolean v4, v6, La5/a;->h:Z

    if-nez v4, :cond_2c

    goto :goto_b

    :cond_2c
    move v10, v9

    goto :goto_c

    :cond_2d
    :goto_b
    const/4 v10, 0x1

    :goto_c
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v7, LH8/x;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, LH8/x;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2f

    if-eqz v10, :cond_2e

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d

    :cond_2e
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2f
    :goto_d
    iget-boolean v2, v6, La5/a;->m:Z

    if-eqz v2, :cond_31

    sget-object v2, Lo9/a;->a:Lo9/b;

    invoke-interface {v2}, Lo9/b;->e()Lp9/t;

    move-result-object v2

    iget-boolean v4, v0, Lo5/c;->i:Z

    const/4 v10, 0x1

    invoke-interface {v2, v4, v10}, Lp9/t;->s(ZZ)I

    move-result v2

    const/16 v4, 0xd7

    if-ne v12, v4, :cond_30

    invoke-static {}, Lcom/android/camera/data/data/w;->z()I

    move-result v2

    :cond_30
    invoke-static {v2, v9}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_e

    :cond_31
    const/4 v10, 0x1

    :goto_e
    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    iget-boolean v0, v0, Lo5/c;->i:Z

    invoke-interface {v1, v0, v10}, Lp9/t;->b(ZZ)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_32
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget v4, v6, La5/a;->a:I

    if-lez v4, :cond_33

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_33
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v7, LH8/x;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, LH8/x;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_36

    iget-boolean v4, v6, La5/a;->j:Z

    if-nez v4, :cond_35

    iget-boolean v4, v6, La5/a;->h:Z

    if-nez v4, :cond_34

    goto :goto_f

    :cond_34
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10

    :cond_35
    :goto_f
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$B;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_36
    :goto_10
    iget-boolean v2, v6, La5/a;->m:Z

    if-eqz v2, :cond_37

    const v2, 0x7f060be1

    invoke-static {v2}, Lf2/b;->a(I)I

    move-result v2

    invoke-static {v2, v9}, Lf2/a;->f(IZ)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_37
    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    iget-boolean v0, v0, Lo5/c;->i:Z

    invoke-interface {v1, v0, v9}, Lp9/t;->b(ZZ)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_38
    :goto_11
    return-void

    :cond_39
    const-string v0, "onBindViewHolder: configItem = "

    invoke-static {v7, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa5 -> :sswitch_3
        0xab -> :sswitch_2
        0xad -> :sswitch_1
        0xae -> :sswitch_1
        0xbb -> :sswitch_1
        0xbc -> :sswitch_0
        0xbe -> :sswitch_0
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc7 -> :sswitch_0
        0xcc -> :sswitch_1
        0xd0 -> :sswitch_1
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_3
        0xd5 -> :sswitch_1
        0xd6 -> :sswitch_0
        0xed -> :sswitch_0
        0xfe -> :sswitch_2
        0x102 -> :sswitch_0
        0x209 -> :sswitch_0
        0xb25 -> :sswitch_3
        0xd40 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$B;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo5/c;->v(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/u;

    move-result-object p0

    return-object p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$B;)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/u;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$B;)V

    return-void
.end method

.method public final u()I
    .locals 7

    iget-object v0, p0, Lo5/c;->b:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Lo5/c;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-ne v4, v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v1, v5, :cond_2

    move v4, v3

    goto :goto_1

    :cond_0
    if-ne v4, v2, :cond_1

    move v4, v3

    :cond_1
    sub-int v5, v1, v4

    iget v6, p0, Lo5/c;->a:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v3, v4

    return v3
.end method

.method public v(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/u;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, LK2/b;->b0()Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    const p0, 0x7f0e01b5

    invoke-static {p1, p0, p1, p2}, LF1/r2;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_0
    const p0, 0x7f0e01b4

    invoke-static {p1, p0, p1, p2}, LF1/r2;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    new-instance p2, Lo5/W;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lo5/W;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lo5/c;->m:I

    iget-object p0, p0, Lo5/c;->g:Landroid/content/Context;

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0717e7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0717e6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    invoke-virtual {p2, p0}, Lo5/W;->setImgBgPadding(I)V

    move-object p0, p2

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance p1, Lcom/android/camera/fragment/u;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/u;-><init>(Landroid/view/View;)V

    return-object p1
.end method
