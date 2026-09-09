.class public final Lcom/prometheus/camera/filters/FilterEditorDialog;
.super Ljava/lang/Object;
.source "FilterEditorDialog.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static actionRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 3

    .line 189
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x10

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 p1, 0x4

    .line 195
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    new-instance p1, Lcom/prometheus/camera/filters/FilterEditorDialog$6;

    invoke-direct {p1, p2}, Lcom/prometheus/camera/filters/FilterEditorDialog$6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p2, 0x34

    .line 202
    invoke-static {p0, p2}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 p2, -0x1

    invoke-direct {p1, p2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static effectSelector(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[I)Lmiuix/appcompat/widget/Spinner;
    .locals 4

    .line 131
    new-instance v0, Lmiuix/appcompat/widget/Spinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 133
    const-string p1, "f6g"

    const-string v1, "layout"

    invoke-static {p0, p1, v1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->requireResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 134
    const-string v2, "f6d"

    invoke-static {p0, v2, v1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->requireResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 135
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1020014

    invoke-direct {v2, p0, p1, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 138
    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 p1, 0x0

    .line 139
    aget p1, p3, p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 140
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 141
    new-instance p1, Lcom/prometheus/camera/filters/FilterEditorDialog$5;

    invoke-direct {p1, p3, p0}, Lcom/prometheus/camera/filters/FilterEditorDialog$5;-><init>([ILandroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private static find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;"
        }
    .end annotation

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 227
    iget-object v1, v0, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private static optionRow(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)Landroid/view/View;
    .locals 6

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x4

    .line 164
    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 166
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 168
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x34

    .line 171
    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 170
    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x98

    .line 173
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v2}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static requireResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OS4 filter editor resource is unavailable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 178
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x3f1eb852    # 0.62f

    .line 182
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 p1, 0x12

    .line 183
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result p1

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, p2, v0, v0}, Lcom/prometheus/camera/filters/FilterEditorDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v8, p1

    .line 36
    invoke-static {v2, v8}, Lcom/prometheus/camera/filters/FilterEditorDialog;->find(Ljava/util/List;Ljava/lang/String;)Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 38
    new-instance v9, Lmiuix/androidbasewidget/widget/StateEditText;

    const/4 v3, 0x0

    invoke-direct {v9, v7, v3}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v9, v3}, Lmiuix/androidbasewidget/widget/StateEditText;->setSingleLine(Z)V

    .line 40
    invoke-static {v7, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->labelFor(Landroid/content/Context;Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lmiuix/androidbasewidget/widget/StateEditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v9, v3}, Lmiuix/androidbasewidget/widget/StateEditText;->setSelectAllOnFocus(Z)V

    .line 43
    iget v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->grain:I

    filled-new-array {v4}, [I

    move-result-object v10

    .line 44
    iget v4, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->diffusion:I

    filled-new-array {v4}, [I

    move-result-object v11

    .line 46
    invoke-static {}, Lcom/prometheus/camera/filters/FilterEffectStore;->grainNames()[Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v5, "\u9897\u7c92"

    invoke-static {v7, v5, v4, v10}, Lcom/prometheus/camera/filters/FilterEditorDialog;->effectSelector(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[I)Lmiuix/appcompat/widget/Spinner;

    move-result-object v4

    .line 48
    invoke-static {}, Lcom/prometheus/camera/filters/FilterEffectStore;->diffusionNames()[Ljava/lang/String;

    move-result-object v6

    .line 47
    const-string v12, "\u67d4\u5149"

    invoke-static {v7, v12, v6, v11}, Lcom/prometheus/camera/filters/FilterEditorDialog;->effectSelector(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[I)Lmiuix/appcompat/widget/Spinner;

    move-result-object v6

    .line 50
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x18

    .line 52
    invoke-static {v7, v14}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v14

    const/16 v15, 0x8

    .line 53
    invoke-static {v7, v15}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v3

    const/4 v15, 0x4

    invoke-static {v7, v15}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v13, v14, v3, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    const-string v3, "\u540d\u79f0"

    invoke-static {v7, v3}, Lcom/prometheus/camera/filters/FilterEditorDialog;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    invoke-static {}, Lcom/prometheus/camera/filters/FilterEditorDialog;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const-string v3, "\u6210\u50cf\u6548\u679c"

    invoke-static {v7, v3}, Lcom/prometheus/camera/filters/FilterEditorDialog;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-static {v7, v5, v4}, Lcom/prometheus/camera/filters/FilterEditorDialog;->optionRow(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    invoke-static {v7, v12, v6}, Lcom/prometheus/camera/filters/FilterEditorDialog;->optionRow(Landroid/content/Context;Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v4, "\u9897\u7c92\u4e0e\u67d4\u5149\u4e3a\u72ec\u7acb\u6e32\u67d3\u9636\u6bb5\uff0c\u53ef\u540c\u65f6\u542f\u7528\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41500000    # 13.0f

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x3f1eb852    # 0.62f

    .line 62
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v4, 0xa

    .line 63
    invoke-static {v7, v4}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v7, v5}, Lcom/prometheus/camera/filters/FilterEditorDialog;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v4, v12, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    invoke-static {}, Lcom/prometheus/camera/filters/FilterEditorDialog;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    .line 65
    new-array v14, v3, [Lmiuix/appcompat/app/h;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 67
    :cond_0
    const-string v3, "\u6587\u4ef6"

    invoke-static {v7, v3}, Lcom/prometheus/camera/filters/FilterEditorDialog;->section(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_1

    .line 69
    const-string v3, "\u66ff\u6362 LUT"

    invoke-static {v7, v3, v0}, Lcom/prometheus/camera/filters/FilterEditorDialog;->actionRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 72
    new-instance v0, Lcom/prometheus/camera/filters/FilterEditorDialog$1;

    invoke-direct {v0, v14, v1}, Lcom/prometheus/camera/filters/FilterEditorDialog$1;-><init>([Lmiuix/appcompat/app/h;Ljava/lang/Runnable;)V

    const-string v1, "\u5220\u9664\u6ee4\u955c"

    invoke-static {v7, v1, v0}, Lcom/prometheus/camera/filters/FilterEditorDialog;->actionRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    :cond_2
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 84
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->sourceId:Ljava/lang/String;

    .line 88
    invoke-static {v1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->isSingleLut(Ljava/lang/String;)Z

    move-result v13

    .line 89
    new-instance v15, Lmiuix/appcompat/app/h$a;

    invoke-direct {v15, v7}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v1, "\u7f16\u8f91\u6ee4\u955c"

    invoke-virtual {v15, v1}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v15, v0}, Lmiuix/appcompat/app/h$a;->D(Landroid/view/View;)V

    .line 92
    new-instance v6, Lcom/prometheus/camera/filters/FilterEditorDialog$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v12, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/prometheus/camera/filters/FilterEditorDialog$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiuix/androidbasewidget/widget/StateEditText;[I[ILjava/lang/Runnable;)V

    .line 104
    new-instance v6, Lcom/prometheus/camera/filters/FilterEditorDialog$3;

    move-object v0, v6

    move-object v7, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/prometheus/camera/filters/FilterEditorDialog$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiuix/androidbasewidget/widget/StateEditText;[I[ILjava/lang/Runnable;)V

    .line 116
    const-string v0, "\u4fdd\u5b58"

    if-eqz v13, :cond_3

    .line 117
    new-instance v1, Lcom/prometheus/camera/filters/FilterEditorDialog$4;

    invoke-direct {v1, v7}, Lcom/prometheus/camera/filters/FilterEditorDialog$4;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v15, v0, v1}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 122
    const-string v0, "\u53e6\u5b58\u4e3a"

    invoke-virtual {v15, v0, v12}, Lmiuix/appcompat/app/h$a;->q(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v15, v0, v7}, Lmiuix/appcompat/app/h$a;->y(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    :goto_0
    invoke-virtual {v15}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    return-void

    .line 37
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6ee4\u955c\u5b9e\u4f53\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
