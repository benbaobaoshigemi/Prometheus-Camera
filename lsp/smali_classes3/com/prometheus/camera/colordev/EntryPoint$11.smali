.class Lcom/prometheus/camera/colordev/EntryPoint$11;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicStyleStore(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    move v0, p1

    .line 177
    :goto_0
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1000()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1100()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1200()[Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1300()[Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_1
    array-length v2, v0

    if-ge p1, v2, :cond_3

    .line 183
    aget-object v2, v0, p1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object p0, v1, p1

    return-object p0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 185
    :cond_3
    const-string p0, "\u5c0f\u7c73 17 Ultra"

    return-object p0
.end method
