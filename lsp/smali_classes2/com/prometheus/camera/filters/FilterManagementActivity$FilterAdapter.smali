.class final Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;


# direct methods
.method private constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Lcom/prometheus/camera/filters/FilterManagementActivity$1;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    return-void
.end method

.method private titleFor(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->labelFor(Landroid/content/Context;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 451
    iget-object p2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 452
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p3, 0x10

    .line 453
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 454
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v0

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2, p3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 457
    iget-object v0, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$300(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    const-string v4, "miuix_preference_navigation_item_selected_color_dark"

    goto :goto_0

    .line 461
    :cond_0
    const-string v4, "miuix_preference_navigation_item_selected_color_light"

    .line 462
    :goto_0
    iget-object v5, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x1fffffff

    goto :goto_1

    :cond_1
    const/high16 v5, 0x14000000

    .line 459
    :goto_1
    invoke-static {v2, v4, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$700(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;I)I

    move-result v2

    .line 463
    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/16 v5, 0xc

    invoke-static {v4, v2, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$800(Lcom/prometheus/camera/filters/FilterManagementActivity;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    const v1, 0x3f7c28f6    # 0.985f

    .line 465
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 466
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 469
    :cond_2
    new-instance v1, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    .line 470
    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "miuix_default_color_on_surface_quaternary_dark"

    goto :goto_2

    .line 471
    :cond_3
    const-string v4, "miuix_default_color_on_surface_quaternary_light"

    :goto_2
    const v5, -0x656566

    .line 470
    invoke-static {v2, v4, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$700(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    .line 472
    invoke-static {v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "miuix_default_color_primary_dark"

    goto :goto_3

    .line 473
    :cond_4
    const-string v6, "miuix_default_color_primary_light"

    :goto_3
    const v7, -0xcb7d01

    .line 472
    invoke-static {v5, v6, v7}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$700(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v1, v2, v4, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;-><init>(Landroid/content/Context;II)V

    .line 474
    invoke-virtual {v1, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->setActivated(Z)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u62d6\u52a8\u8c03\u6574"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->titleFor(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7684\u987a\u5e8f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 476
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/16 v4, 0x30

    invoke-static {v2, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v2

    iget-object v5, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/16 v6, 0x3e

    invoke-static {v5, v6}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->titleFor(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$900(Lcom/prometheus/camera/filters/FilterManagementActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 483
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->titleFor(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    iget v2, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    .line 484
    invoke-static {v1, v2}, Lcom/prometheus/camera/filters/FilterEffectStore;->summary(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 483
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 485
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v1, v6}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const-string v1, "f7b"

    const-string v2, "layout"

    invoke-static {p3, v1, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1000(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_7

    .line 491
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$600(Lcom/prometheus/camera/filters/FilterManagementActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "i8r"

    goto :goto_4

    :cond_5
    const-string v2, "i8s"

    :goto_4
    const-string v5, "style"

    invoke-static {v1, v2, v5}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1000(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 495
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-direct {v2, v5, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 498
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 499
    invoke-virtual {v1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CompoundButton;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u663e\u793a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 501
    iget-boolean v0, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 502
    new-instance v0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 506
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result v0

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0, v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$500(Lcom/prometheus/camera/filters/FilterManagementActivity;I)I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2

    .line 493
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OS4 MIUI preference theme is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 489
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OS4 MIUI sliding-button layout is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method synthetic lambda$getView$2$com-prometheus-camera-filters-FilterManagementActivity$FilterAdapter(Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 503
    iput-boolean p3, p1, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->visible:Z

    .line 504
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$FilterAdapter;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1100(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    return-void
.end method
