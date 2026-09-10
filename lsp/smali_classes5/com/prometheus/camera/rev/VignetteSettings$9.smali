.class Lcom/prometheus/camera/rev/VignetteSettings$9;
.super Ljava/lang/Object;
.source "VignetteSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VignetteSettings;->bind(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Ljava/lang/Object;

.field final synthetic val$radius:Z

.field final synthetic val$value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(ZLandroid/widget/TextView;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-boolean p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$radius:Z

    iput-object p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$value:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 259
    iget-boolean p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$radius:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/prometheus/camera/rev/VignetteSettings;->toStrength(I)I

    move-result p2

    :goto_0
    iget-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$value:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    .line 260
    iget-object v1, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$f:Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$radius:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result p1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result v3

    iget-boolean p0, p0, Lcom/prometheus/camera/rev/VignetteSettings$9;->val$radius:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result p2

    :goto_2
    move v4, p2

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings;->apply(Ljava/lang/Object;IZIZZLcom/prometheus/camera/rev/VignetteSettings$Work;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p0, 0x1

    .line 262
    sput-boolean p0, Lcom/prometheus/camera/rev/VignetteSettings;->tracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p0, 0x0

    .line 263
    sput-boolean p0, Lcom/prometheus/camera/rev/VignetteSettings;->tracking:Z

    return-void
.end method
