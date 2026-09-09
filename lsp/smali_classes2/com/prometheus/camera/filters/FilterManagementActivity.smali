.class public final Lcom/prometheus/camera/filters/FilterManagementActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;,
        Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;,
        Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;,
        Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;,
        Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;
    }
.end annotation


# static fields
.field private static final REQUEST_EXPORT:I = 0x12d

.field private static final REQUEST_IMPORT:I = 0x12e


# instance fields
.field private adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

.field private dragChanged:Z

.field private dragPointerY:F

.field private dragTouchOffsetY:F

.field private draggedId:Ljava/lang/String;

.field private draggedPosition:I

.field private final entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;


# direct methods
.method public static synthetic $r8$lambda$aDk3kEfsfRvtRl2ykNUVxYzHzxo(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->confirmRestore()V

    return-void
.end method

.method public static synthetic $r8$lambda$fOHbn8wez9f6A5DgwEmCerxJHC4(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->importConfig()V

    return-void
.end method

.method public static synthetic $r8$lambda$ydBFPilSSpPrYDZK7JQdg3rc6DI(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->exportConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    return-void
.end method

.method static synthetic access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->resource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->persist()V

    return-void
.end method

.method static synthetic access$1200(Lcom/prometheus/camera/filters/FilterManagementActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    return p0
.end method

.method static synthetic access$1300(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->handleDrag(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/prometheus/camera/filters/FilterManagementActivity;ILandroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->beginDrag(ILandroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->updateDraggedVisual()V

    return-void
.end method

.method static synthetic access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->color(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/prometheus/camera/filters/FilterManagementActivity;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->roundRect(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/prometheus/camera/filters/FilterManagementActivity;)I
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result p0

    return p0
.end method

.method private action(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 3

    .line 136
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 141
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->applyBorderlessFeedback(Landroid/view/View;)V

    .line 145
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    invoke-direct {p3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 148
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x5

    .line 152
    invoke-direct {p0, p3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private action(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 2

    .line 126
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    const-string v1, "drawable"

    invoke-direct {p0, p1, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->resource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 132
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->action(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private adjacentTarget(F)I
    .locals 3

    .line 201
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 202
    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->visibleRow(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 204
    iget p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 207
    :cond_0
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 208
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->visibleRow(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 210
    iget p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private animateReorder(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$1;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private applyBorderlessFeedback(Landroid/view/View;)V
    .locals 3

    .line 516
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 517
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x101045c

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p0, :cond_0

    .line 519
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private beginDrag(ILandroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 263
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    .line 265
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object p1, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragChanged:Z

    const/4 p1, 0x2

    .line 267
    new-array p1, p1, [I

    .line 268
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 269
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    const/4 v0, 0x1

    aget p1, p1, v0

    int-to-float p1, p1

    sub-float/2addr p3, p1

    iput p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragPointerY:F

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 271
    iget p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragPointerY:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragTouchOffsetY:F

    .line 272
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    invoke-virtual {p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    .line 273
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->updateDraggedVisual()V

    const/16 p0, 0x19

    .line 274
    invoke-virtual {p2, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method private buildContent()Landroid/view/View;
    .locals 9

    .line 88
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v1, "miuix_default_color_surface_low_dark"

    goto :goto_0

    .line 90
    :cond_0
    const-string v1, "miuix_default_color_surface_low_light"

    :goto_0
    if-eqz v0, :cond_1

    const v2, -0xeeeeef

    goto :goto_1

    :cond_1
    const v2, -0x80809

    .line 89
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->color(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_2

    .line 91
    const-string v2, "miuix_preference_card_group_background_color_dark"

    goto :goto_2

    .line 92
    :cond_2
    const-string v2, "miuix_preference_card_group_background_color_light"

    :goto_2
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    const v0, -0xdbdbdc

    goto :goto_3

    :cond_3
    move v0, v3

    .line 91
    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->color(Ljava/lang/String;I)I

    move-result v0

    .line 94
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 95
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x18

    .line 96
    invoke-direct {p0, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v6

    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v5

    const/16 v8, 0x12

    invoke-direct {p0, v8}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v8

    invoke-virtual {v2, v6, v7, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 100
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0x10

    .line 101
    invoke-direct {p0, v0, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->roundRect(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    new-instance v6, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result v7

    invoke-direct {v6, p0, v7, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;-><init>(Landroid/content/Context;IZ)V

    new-instance v4, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda5;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const-string v7, "\u6062\u590d\u5907\u4efd"

    invoke-direct {p0, v6, v7, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->action(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    .line 103
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->weighted()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 102
    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v4, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, p0, v6, v7}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;-><init>(Landroid/content/Context;IZ)V

    new-instance v6, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda6;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const-string v8, "\u521b\u5efa\u5907\u4efd"

    invoke-direct {p0, v4, v8, v6}, Lcom/prometheus/camera/filters/FilterManagementActivity;->action(Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    .line 105
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->weighted()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 104
    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "miuix_action_icon_refresh_dark"

    goto :goto_4

    :cond_4
    const-string v4, "miuix_action_icon_refresh_light"

    :goto_4
    new-instance v6, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda7;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const-string v8, "\u91cd\u7f6e\u6392\u5e8f\u4e0e\u663e\u793a"

    invoke-direct {p0, v4, v8, v6}, Lcom/prometheus/camera/filters/FilterManagementActivity;->action(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v4

    .line 107
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->weighted()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 106
    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x4e

    invoke-direct {p0, v6}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v6

    invoke-direct {v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;

    invoke-direct {v1, p0, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    .line 111
    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 112
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 113
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 114
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v4

    invoke-virtual {v1, v7, v6, v7, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 115
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-direct {p0, v0, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->roundRect(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    new-instance v0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Lcom/prometheus/camera/filters/FilterManagementActivity$1;)V

    iput-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    .line 117
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0xc

    .line 120
    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 121
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method private captureVisibleTops()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    .line 224
    :goto_0
    iget-object v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int v3, v1, v2

    if-ltz v3, :cond_0

    .line 226
    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object v3, v3, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private color(Ljava/lang/String;I)I
    .locals 1

    .line 418
    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->resource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getColor(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method private confirmRestore()V
    .locals 3

    .line 358
    new-instance v0, Lmiuix/appcompat/app/h$a;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    .line 359
    const-string v1, "\u91cd\u7f6e\u6392\u5e8f\u4e0e\u663e\u793a"

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    .line 360
    const-string v1, "\u5c06\u6062\u590d\u6ee4\u955c\u7684\u9ed8\u8ba4\u987a\u5e8f\u4e0e\u663e\u793a\u72b6\u6001\u3002\n\n\u5df2\u5bfc\u5165\u7684\u81ea\u5b9a\u4e49 LUT \u53ca\u5176\u6587\u4ef6\u4e0d\u4f1a\u88ab\u5220\u9664\u3002"

    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->messageView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->D(Landroid/view/View;)V

    .line 363
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/h$a;->q(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 364
    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda2;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const-string p0, "\u91cd\u7f6e"

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 374
    invoke-virtual {v0}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    return-void
.end method

.method private dp(I)I
    .locals 0

    int-to-float p1, p1

    .line 435
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private exportConfig()V
    .locals 3

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "prometheus-filter-backup.zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12d

    .line 344
    invoke-virtual {p0, v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleDrag(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 162
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 165
    new-array v0, v2, [I

    .line 166
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, p1

    .line 168
    iput v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragPointerY:F

    const/16 v1, 0x38

    .line 169
    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    const/16 v2, 0xe

    if-ge p1, v1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-direct {p0, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->scrollListBy(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    if-le p1, v4, :cond_2

    .line 173
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-direct {p0, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 175
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->adjacentTarget(F)I

    move-result p1

    if-ltz p1, :cond_3

    .line 177
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->captureVisibleTops()Ljava/util/Map;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 179
    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 180
    iput p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    .line 181
    iput-boolean v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragChanged:Z

    .line 182
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    invoke-virtual {p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    .line 183
    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->animateReorder(Ljava/util/Map;)V

    .line 184
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->updateDraggedVisual()V

    return v3

    :cond_4
    if-eq v0, v3, :cond_6

    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    return v3

    .line 190
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragChanged:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->persist()V

    :cond_7
    const/4 p1, -0x1

    .line 191
    iput p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedId:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragChanged:Z

    .line 194
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    return v3
.end method

.method private importConfig()V
    .locals 4

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "application/x-zip-compressed"

    const-string v3, "application/octet-stream"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12e

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private isNightMode()Z
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$action$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private matchActionBarToPage()V
    .locals 4

    .line 302
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miuix_default_color_surface_low_dark"

    goto :goto_0

    .line 303
    :cond_0
    const-string v0, "miuix_default_color_surface_low_light"

    :goto_0
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, -0xeeeeef

    goto :goto_1

    :cond_1
    const v1, -0x80809

    .line 302
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->color(Ljava/lang/String;I)I

    move-result v0

    .line 304
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :try_start_0
    const-class v1, Lmiuix/appcompat/app/AppCompatActivity;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 308
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActionBar"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 310
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setBackgroundDrawable"

    const-class v3, Landroid/graphics/drawable/Drawable;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 314
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 317
    const-string v0, "FilterManagement"

    const-string v1, "Cannot match ActionBar surface"

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private messageView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 378
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->primaryTextColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 381
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    const v1, 0x3f933333    # 1.15f

    .line 382
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/16 p1, 0x18

    .line 383
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p0

    invoke-virtual {v0, v1, v3, p1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private moveToTop(ILandroid/view/View;)V
    .locals 3

    if-lez p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->captureVisibleTops()Ljava/util/Map;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 293
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    invoke-virtual {p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    .line 295
    invoke-direct {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->animateReorder(Ljava/util/Map;)V

    .line 296
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->persist()V

    const/4 p1, 0x4

    .line 297
    invoke-virtual {p2, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 298
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    new-instance p2, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda4;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private persist()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->save(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->wasRuntimeRefreshSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    const-string v0, "\u5df2\u4fdd\u5b58\uff0c\u91cd\u65b0\u542f\u52a8\u76f8\u673a\u540e\u751f\u6548"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private primaryTextColor()I
    .locals 2

    .line 423
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miuix_preference_primary_text_color_dark"

    goto :goto_0

    .line 424
    :cond_0
    const-string v0, "miuix_preference_primary_text_color_light"

    :goto_0
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isNightMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    .line 423
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->color(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private reload()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private reloadInitialAsync()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/content/Context;)V

    const-string p0, "PhoenixFilterCatalogLoad"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private resource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private roundRect(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 428
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 429
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 430
    invoke-direct {p0, p2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private updateDraggedVisual()V
    .locals 2

    .line 278
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    if-gez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda8;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private visibleRow(I)Landroid/view/View;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private weighted()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 158
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object p0
.end method


# virtual methods
.method synthetic lambda$confirmRestore$5$com-prometheus-camera-filters-FilterManagementActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 365
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->restoreFactoryBackup(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 366
    const-string p1, "\u91cd\u7f6e\u5931\u8d25"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->reload()V

    .line 370
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->wasRuntimeRefreshSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    const-string p1, "\u5df2\u91cd\u7f6e\u6392\u5e8f\u4e0e\u663e\u793a"

    goto :goto_0

    :cond_1
    const-string p1, "\u5df2\u91cd\u7f6e\uff0c\u91cd\u65b0\u542f\u52a8\u76f8\u673a\u540e\u751f\u6548"

    .line 370
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$moveToTop$4$com-prometheus-camera-filters-FilterManagementActivity()V
    .locals 1

    .line 298
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method synthetic lambda$reloadInitialAsync$0$com-prometheus-camera-filters-FilterManagementActivity(Ljava/util/List;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->adapter:Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$reloadInitialAsync$1$com-prometheus-camera-filters-FilterManagementActivity(Landroid/content/Context;)V
    .locals 2

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$$ExternalSyntheticLambda3;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p0

    .line 75
    const-string p1, "FilterManagement"

    const-string v0, "Initial catalog load failed"

    invoke-static {p1, v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method synthetic lambda$updateDraggedVisual$3$com-prometheus-camera-filters-FilterManagementActivity()V
    .locals 4

    .line 280
    iget v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->draggedPosition:I

    if-gez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 283
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 284
    iget v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragPointerY:F

    iget v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity;->dragTouchOffsetY:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/16 v1, 0x8

    .line 285
    invoke-direct {p0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->dp(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 389
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    if-eqz p3, :cond_9

    .line 390
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 391
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const/16 p3, 0x12d

    const/4 v0, 0x0

    if-ne p1, p3, :cond_4

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "w"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 396
    :try_start_1
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterBackupArchive;->write(Landroid/content/Context;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 397
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 398
    :cond_1
    const-string p1, "\u5907\u4efd\u538b\u7f29\u5305\u5df2\u521b\u5efa"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 395
    :cond_2
    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "No output stream"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 394
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    const/16 p3, 0x12e

    if-ne p1, p3, :cond_9

    .line 400
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz p1, :cond_7

    .line 402
    :try_start_6
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterBackupArchive;->restore(Landroid/content/Context;Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_5

    .line 403
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 404
    :cond_5
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->reload()V

    .line 405
    invoke-static {}, Lcom/prometheus/camera/filters/FilterCatalogStore;->wasRuntimeRefreshSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 406
    const-string p1, "\u5907\u4efd\u5df2\u6062\u590d"

    goto :goto_2

    :cond_6
    const-string p1, "\u5df2\u6062\u590d\uff0c\u91cd\u65b0\u542f\u52a8\u76f8\u673a\u540e\u751f\u6548"

    .line 405
    :goto_2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catchall_2
    move-exception p2

    goto :goto_3

    .line 401
    :cond_7
    :try_start_8
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "No input stream"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz p1, :cond_8

    .line 400
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 409
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string p1, "\u6ee4\u955c\u81ea\u5b9a\u4e49"

    invoke-virtual {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->buildContent()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->matchActionBarToPage()V

    .line 65
    invoke-direct {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->reloadInitialAsync()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 337
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
