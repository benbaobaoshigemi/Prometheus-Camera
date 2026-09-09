.class Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;
.super Lde/robv/android/xposed/XC_MethodHook;


# instance fields
.field private done:Z

.field private final registry:Lcom/prometheus/camera/rev/ContentRegistry;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;->registry:Lcom/prometheus/camera/rev/ContentRegistry;

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 12

    iget-boolean v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;->registry:Lcom/prometheus/camera/rev/ContentRegistry;

    iget-object v1, v1, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorPresets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;

    new-instance v4, Lqs/f;

    iget-object v5, v3, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->label:Ljava/lang/String;

    iget v6, v3, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->id:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "prometheus/lut-presets/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/prometheus/camera/rev/ContentRegistry$MediaEditorPreset;->file:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x64

    invoke-direct/range {v4 .. v11}, Lqs/f;-><init>(Ljava/lang/String;IIIILjava/lang/String;I)V

    new-instance v3, Lqs/e;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lqs/e;-><init>(Lqs/a;IIZZZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lqs/b;

    iget-object v3, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;->registry:Lcom/prometheus/camera/rev/ContentRegistry;

    iget-object v4, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryLabel:Ljava/lang/String;

    iget-object v5, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryStringResource:Ljava/lang/String;

    iget v6, v3, Lcom/prometheus/camera/rev/ContentRegistry;->mediaEditorCategoryType:I

    const-string v7, ""

    move v8, v6

    move-object v6, v2

    move-object v2, v4

    move-object v3, v5

    move v4, v8

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lqs/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$StableFilterHook;->done:Z

    const-string v1, "PrometheusRev: MediaEditor catalog factory augmented with custom LUT category"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
