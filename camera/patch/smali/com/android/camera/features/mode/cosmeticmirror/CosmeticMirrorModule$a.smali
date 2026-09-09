.class public final Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$a;
.super Ll6/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->genCameraAction()Ll6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$a;->g:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    invoke-direct {p0, p2}, Ll6/f;-><init>(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method


# virtual methods
.method public final onReviewCancelClicked()V
    .locals 3

    iget-object p0, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$a;->g:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->access$100(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Lcom/android/camera/module/X;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->access$200(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Lcom/android/camera/module/X;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/X;->aa()V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "click"

    const-string v2, "quit_screenshot"

    invoke-static {v0, v2, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Xq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Wq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)V

    :cond_1
    const-string v0, "giveup"

    invoke-static {p0, v0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Zq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;Ljava/lang/String;)V

    return-void
.end method

.method public final onReviewDoneClicked()V
    .locals 4

    iget-object p0, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$a;->g:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/r;->enableCameraControls(Z)V

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Tq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)LRh/r;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/t;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LE3/t;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LRh/r;

    if-eqz v1, :cond_0

    check-cast v0, LRh/r;

    invoke-static {p0, v0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Vq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;LRh/r;)V

    :cond_0
    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->access$000(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Lcom/android/camera/module/X;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/X;->g7()Lk7/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Tq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)LRh/r;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Sq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Tq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)LRh/r;

    move-result-object v1

    iget-object v1, v1, LRh/r;->o:LRh/b;

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Sq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, LRh/b;->a:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v1, Lk7/B;

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Tq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)LRh/r;

    move-result-object v2

    const-string v3, "parallelTaskData"

    invoke-static {v2, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lk7/L;-><init>(LRh/r;)V

    invoke-virtual {v0, v1}, Lk7/i;->s(Lk7/z;)V

    :cond_2
    const-string/jumbo v0, "save"

    invoke-static {p0, v0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Zq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Wq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)V

    return-void
.end method

.method public final onShutterButtonClick(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule$a;->g:Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;

    invoke-virtual {p0}, Lcom/android/camera/module/r;->checkShutterCondition()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;->Yq(Lcom/android/camera/features/mode/cosmeticmirror/CosmeticMirrorModule;)V

    invoke-static {}, LBr/e;->r()LBr/e;

    move-result-object p0

    invoke-virtual {p0}, LBr/e;->l()V

    return v0
.end method
