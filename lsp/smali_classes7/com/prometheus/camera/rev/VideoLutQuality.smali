.class public final Lcom/prometheus/camera/rev/VideoLutQuality;
.super Ljava/lang/Object;
.source "VideoLutQuality.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "phoenix_video_lut_quality_unlock"

.field private static final PREFS:Ljava/lang/String; = "prometheus_camera_settings"


# instance fields
.field private context:Landroid/content/Context;

.field private installation:Ljava/lang/String;

.field private modulePath:Ljava/lang/String;

.field private volatile qualityInput:Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "not installed"

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->installation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/prometheus/camera/rev/VideoLutQuality;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->installation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prometheus/camera/rev/VideoLutQuality;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutQuality;->enabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->modulePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutQuality;->record(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/prometheus/camera/rev/VideoLutQuality;Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;)Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->qualityInput:Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;

    return-object p1
.end method

.method static synthetic access$600(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/prometheus/camera/rev/VideoLutQuality;->injectSettings(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private changeEnabled(ZLjava/lang/ClassLoader;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutQuality;->enabled()Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->context:Landroid/content/Context;

    const-string v2, "prometheus_camera_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "phoenix_video_lut_quality_unlock"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unlock changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/prometheus/camera/rev/VideoLutQuality;->record(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->qualityInput:Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;

    .line 41
    const-string v2, "com.android.camera.module.Y"

    invoke-static {v2, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 42
    const-string v2, "a"

    invoke-static {p2, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p2

    if-eqz v0, :cond_3

    .line 43
    invoke-static {p2}, Lcom/prometheus/camera/rev/VideoLutQuality;->supportsMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->component:Ljava/lang/Object;

    const-string v3, "J"

    iget-object v4, v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->arguments:[Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 48
    iget-object p1, v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->component:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getComponentValue"

    invoke-static {p1, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    iget-object v0, v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;->component:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "setComponentValue"

    invoke-static {v0, v2, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "OEM restrictions restored quality="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutQuality;->record(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method private enabled()Z
    .locals 2

    .line 32
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->context:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "prometheus_camera_settings"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "phoenix_video_lut_quality_unlock"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private encoderGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "f0"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 57
    const-string v2, "m"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pref_video_encoder_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceGroup"

    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-direct {p0, v1}, Lcom/prometheus/camera/rev/VideoLutQuality;->encoderGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private injectSettings(Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 6

    .line 71
    const-string v0, "mPreferenceGroup"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    const-string v1, "phoenix_video_lut_quality_unlock"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "k0"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->encoderGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    const-string v2, "requireContext"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 76
    const-string v2, "androidx.preference.SwitchPreference"

    invoke-static {v2, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    const-string v2, "a0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "\u89e3\u9501\u6ee4\u955c\u89c6\u9891\u89c4\u683c\u9650\u5236"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e0"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "\u5c06\u6781\u5927\u5730\u589e\u52a0\u53d1\u70ed\uff0c\u8c28\u614e\u542f\u7528\u3002"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "c0"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "t"

    invoke-static {p1, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 81
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutQuality;->enabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setChecked"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "androidx.preference.Preference$c"

    invoke-static {v1, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 83
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/ClassLoader;)V

    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 92
    const-string p2, "e"

    invoke-static {p1, p2, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    const-string p2, "f0"

    invoke-static {v0, p2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "n0"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v1, v3, 0x1

    .line 97
    const-string v2, "g"

    invoke-static {p2, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 98
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "j0"

    invoke-static {v0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "m"

    invoke-static {p2, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v4, "pref_video_encoder_key"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 v3, v3, 0x2

    .line 100
    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 101
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v5, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    return-void

    .line 74
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Video encoder preference missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/VideoLutQuality$2;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/rev/VideoLutQuality$2;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;)V

    const-string v5, "j9.e"

    filled-new-array {v1, v2, v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "r2.f0"

    const-string v3, "J"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 144
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/VideoLutQuality$3;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/rev/VideoLutQuality$3;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "com.android.camera.fragment.settings.CameraCamcorderPreferenceFragment"

    const-string v4, "registerPreferenceListener"

    invoke-static {v3, v0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 151
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->modulePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 152
    :try_start_0
    const-string v1, "assets/video_quality.dex"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x2000

    .line 154
    new-array v4, v4, [B

    .line 155
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 158
    new-instance v0, Ldalvik/system/InMemoryDexClassLoader;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1, v3}, Ldalvik/system/InMemoryDexClassLoader;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)V

    .line 159
    const-string v1, "com.prometheus.camera.video.VideoQualityRules"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    const-string v1, "com.android.camera.module.Y"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/prometheus/camera/rev/VideoLutQuality$4;

    invoke-direct {v5, p0, v1}, Lcom/prometheus/camera/rev/VideoLutQuality$4;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Class;)V

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "com.android.camera.data.data.j"

    const-string v5, "N1"

    invoke-static {v4, v3, v5, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 177
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v4, Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v8, Lcom/prometheus/camera/rev/VideoLutQuality$5;

    invoke-direct {v8, p0, v0}, Lcom/prometheus/camera/rev/VideoLutQuality$5;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Class;)V

    const-string v3, "r2.j1$a"

    const-string v6, "j9.e"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "y"

    invoke-static {v2, p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 151
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private record(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    const-string v0, "PhoenixVideoQuality"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "phoenix-quality-execution.log"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 109
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method static supportsMode(I)Z
    .locals 1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutQuality$1;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/VideoLutQuality$1;-><init>(Lcom/prometheus/camera/rev/VideoLutQuality;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attach"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutQuality;->install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 129
    const-string p1, "installed"

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->installation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 131
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->installation:Ljava/lang/String;

    .line 132
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 0

    .line 113
    iget-object p1, p1, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality;->modulePath:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$injectSettings$0$com-prometheus-camera-rev-VideoLutQuality(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 85
    const-string p0, "hashCode"

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    const-string p0, "equals"

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    aget-object p1, p4, p0

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 87
    :cond_2
    const-string p0, "VideoQualityPreferenceListener"

    return-object p0

    .line 89
    :cond_3
    const-string p2, "onPreferenceChange"

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 90
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object p3, p4, v2

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/prometheus/camera/rev/VideoLutQuality;->changeEnabled(ZLjava/lang/ClassLoader;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 89
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
