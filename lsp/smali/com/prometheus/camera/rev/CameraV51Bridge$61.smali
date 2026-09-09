.class Lcom/prometheus/camera/rev/CameraV51Bridge$61;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookStillFilterCatalog(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraIdField:Ljava/lang/reflect/Field;

.field final synthetic val$enumClass:Ljava/lang/Class;

.field final synthetic val$galleryConstructor:Ljava/lang/reflect/Constructor;

.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$lowerIconsField:Ljava/lang/reflect/Field;

.field final synthetic val$nameIconsField:Ljava/lang/reflect/Field;

.field final synthetic val$ordinalField:Ljava/lang/reflect/Field;

.field final synthetic val$topIconField:Ljava/lang/reflect/Field;

.field final synthetic val$visibleIds:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 2067
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$enumClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$ordinalField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$loader:Ljava/lang/ClassLoader;

    iput-object p4, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$visibleIds:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$galleryConstructor:Ljava/lang/reflect/Constructor;

    iput-object p6, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$cameraIdField:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$topIconField:Ljava/lang/reflect/Field;

    iput-object p8, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$lowerIconsField:Ljava/lang/reflect/Field;

    iput-object p9, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$nameIconsField:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2070
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 2071
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2075
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2076
    iget-object v2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$enumClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    .line 2077
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2078
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 2079
    iget-object v6, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$ordinalField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 2080
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 2081
    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 2082
    invoke-static {v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4800(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2086
    :cond_1
    iget-object v2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {v2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$2500(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v2

    .line 2087
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    .line 2090
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2087
    const-string v7, "ic_filter_input_front_lc"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_6

    .line 2095
    iget-object v4, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$visibleIds:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, [Ljava/lang/String;

    .line 2096
    new-instance v13, Ljava/util/ArrayList;

    array-length v4, v12

    add-int/2addr v4, v3

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 2097
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    :goto_1
    array-length v0, v12

    if-ge v3, v0, :cond_5

    .line 2099
    aget-object v0, v12, v3

    .line 2100
    iget-object v4, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$enumClass:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    .line 2101
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2103
    const-string v4, "GALLERY_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2104
    iget-object v5, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$galleryConstructor:Ljava/lang/reflect/Constructor;

    iget-object v6, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$cameraIdField:Ljava/lang/reflect/Field;

    move-object v4, v7

    check-cast v4, Ljava/lang/Enum;

    move-object v4, v2

    move-object v8, v0

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4900(Landroid/content/Context;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/Enum;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 2112
    :cond_2
    iget-object v4, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$loader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$enumClass:Ljava/lang/Class;

    invoke-static {v4, v5, v7, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$5000(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2115
    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4800(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2116
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$topIconField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4, v10}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 2117
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$lowerIconsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2118
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;->val$nameIconsField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2120
    :cond_4
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2122
    :cond_5
    invoke-virtual {p1, v13}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 2123
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Phoenix: rebuilt still filter catalog entries="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, v12

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 2092
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OS4 normal-filter top icon is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2072
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OS4 still filter catalog is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
