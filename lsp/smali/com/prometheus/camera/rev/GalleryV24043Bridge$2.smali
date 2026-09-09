.class Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "GalleryV24043Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/GalleryV24043Bridge;->install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCatalogField:Ljava/lang/reflect/Field;

.field final synthetic val$finalCatalogWriter:Ljava/lang/Class;

.field final synthetic val$localCategory:Ljava/lang/Class;

.field final synthetic val$localFilter:Ljava/lang/Class;

.field final synthetic val$localFilterEntry:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogField:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localCategory:Ljava/lang/Class;

    iput-object p3, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localFilter:Ljava/lang/Class;

    iput-object p4, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogWriter:Ljava/lang/Class;

    iput-object p5, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localFilterEntry:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 208
    iget-object v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogField:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    instance-of v2, v0, Ljava/util/List;

    if-nez v2, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogWriter:Ljava/lang/Class;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 212
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localCategory:Ljava/lang/Class;

    iget-object v3, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localFilterEntry:Ljava/lang/Class;

    invoke-static {p1, v0, v2, v3}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->access$400(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    const-string v3, "setValue"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-class v2, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;

    monitor-enter v2

    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filter_list published size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->catalogOnce(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    iget-object p0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localCategory:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->access$500(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "i"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 239
    const-string p1, "setValue"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string p0, "PrometheusRev: replayed MediaEditor custom category after final filter_list publication"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 223
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    iget-object v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$finalCatalogField:Ljava/lang/reflect/Field;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 195
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 197
    iget-object v0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localCategory:Ljava/lang/Class;

    iget-object p0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$2;->val$localFilter:Ljava/lang/Class;

    invoke-static {p1, v0, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->access$300(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 198
    const-string p0, "PrometheusRev: augmented MediaEditor final ViewModel catalog"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "final catalog augmented size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->catalogOnce(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
