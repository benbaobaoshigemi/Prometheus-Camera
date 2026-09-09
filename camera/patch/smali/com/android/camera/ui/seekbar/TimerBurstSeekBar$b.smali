.class public final Lcom/android/camera/ui/seekbar/TimerBurstSeekBar$b;
.super Lmiuix/animation/property/ViewProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar$b;->a:Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    const-string/jumbo p1, "scale"

    invoke-direct {p0, p1}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar$b;->a:Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    iget p0, p0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;->o:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar$b;->a:Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;

    iput p2, p0, Lcom/android/camera/ui/seekbar/TimerBurstSeekBar;->o:F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
