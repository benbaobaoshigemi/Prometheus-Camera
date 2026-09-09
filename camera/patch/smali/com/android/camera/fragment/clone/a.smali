.class public final Lcom/android/camera/fragment/clone/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/clone/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/clone/a$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->b:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->e:I

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->c:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->f:I

    iget v1, p1, Lcom/android/camera/fragment/clone/a$a;->d:I

    iget v2, p1, Lcom/android/camera/fragment/clone/a$a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/clone/a;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/a;->i:I

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->g:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->j:I

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->f:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->h:I

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->h:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->k:I

    iget v0, p1, Lcom/android/camera/fragment/clone/a$a;->a:I

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->c:I

    iget-object v0, p1, Lcom/android/camera/fragment/clone/a$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/clone/a;->b:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/clone/a;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p1, Lcom/android/camera/fragment/clone/a$a;->i:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string/jumbo v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget p1, p1, Lcom/android/camera/fragment/clone/a$a;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->l:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/clone/a;->e:I

    sub-int v1, p1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/a;->r:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/camera/fragment/clone/a;->s:I

    iget v0, p0, Lcom/android/camera/fragment/clone/a;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/clone/a;->p:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/fragment/clone/a;->p:I

    :cond_0
    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/camera/fragment/clone/a;->q:I

    iget p1, p0, Lcom/android/camera/fragment/clone/a;->m:I

    if-le p2, p1, :cond_1

    iput p1, p0, Lcom/android/camera/fragment/clone/a;->q:I

    :cond_1
    return-void
.end method
