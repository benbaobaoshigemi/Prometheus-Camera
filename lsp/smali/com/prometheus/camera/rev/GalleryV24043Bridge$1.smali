.class Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;
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
.field final synthetic val$localCategory:Ljava/lang/Class;

.field final synthetic val$localFilter:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;->val$localCategory:Ljava/lang/Class;

    iput-object p2, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;->val$localFilter:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 179
    :cond_0
    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;->val$localCategory:Ljava/lang/Class;

    iget-object p0, p0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$1;->val$localFilter:Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge;->access$300(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 181
    const-string p0, "PrometheusRev: augmented MediaEditor canonical local catalog"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 183
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "canonical local catalog augmented size="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->catalogOnce(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
