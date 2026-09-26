.class public final Lcom/prometheus/camera/rev/PhoenixLogSettings;
.super Ljava/lang/Object;
.source "PhoenixLogSettings.java"


# static fields
.field private static final ASD:Ljava/lang/String; = "pref_prometheus_xiaomi_ai_asd"

.field private static final CLEAR:Ljava/lang/String; = "phoenix_clear_logs"

.field private static final ENTRY:Ljava/lang/String; = "phoenix_log_settings"

.field private static final GENERATION:Ljava/lang/String; = "phoenix_log_generation"

.field private static final GLOBAL:Ljava/lang/String; = "phoenix_local_log_enabled"

.field private static final IO:Ljava/util/concurrent/ExecutorService;

.field private static final LOG:Ljava/lang/String; = "prometheus_log_enabled"

.field private static final PAGE:Ljava/lang/String; = "com.prometheus.camera.filters.PhoenixLogPreferenceFragment"

.field private static final UI:Landroid/os/Handler;

.field private static application:Landroid/content/Context;

.field private static volatile clearing:Z

.field private static loader:Ljava/lang/ClassLoader;

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->IO:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->UI:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->inject(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 22
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->installPage()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->populate(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static clearLogs(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 214
    sget-boolean v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->clearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 215
    sput-boolean v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->clearing:Z

    const/4 v0, 0x0

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Y"

    invoke-static {p1, v2, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->IO:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static click(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3

    .line 79
    const-string v0, "androidx.preference.Preference$d"

    sget-object v1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "f"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static context(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requireContext"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 60
    const-string v0, "k0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static inject(Ljava/lang/Object;)V
    .locals 7

    .line 143
    const-string v0, "mPreferenceGroup"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    const-string v1, "category_prometheus_classic_controls"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    const-string v2, "phoenix_street_ui_mode"

    invoke-static {v0, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "j0"

    if-nez v2, :cond_0

    .line 147
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->streetChoice(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v4, "prometheus_hdr_always_on"

    invoke-static {v1, v2, v4}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :cond_0
    const-string v2, "phoenix_log_settings"

    invoke-static {v0, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "Phoenix\u65e5\u5fd7"

    invoke-static {v0, v2, v6, v4, v5}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 155
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string p0, "pref_prometheus_xiaomi_ai_asd"

    invoke-static {v1, v0, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :cond_1
    const-string p0, "PhoenixSettings: street switch and log submenu inserted after ASD"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Phoenix settings category is missing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static install(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 40
    sput-object p0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    .line 41
    sput-object p1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    .line 42
    const-string p1, "prometheus_camera_settings"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    .line 45
    sget-object p0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    new-instance p1, Lcom/prometheus/camera/rev/PhoenixLogSettings$1;

    const/16 v0, 0x4e20

    invoke-direct {p1, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings$1;-><init>(I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v1, "registerPreferenceListener"

    invoke-static {v0, p0, v1, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 50
    const-class p0, Landroid/app/Application;

    new-instance p1, Lcom/prometheus/camera/rev/PhoenixLogSettings$2;

    invoke-direct {p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings$2;-><init>()V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onCreate"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installPage()V
    .locals 4

    .line 180
    const-string v0, "com.prometheus.camera.filters.PhoenixLogPreferenceFragment"

    sget-object v1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/prometheus/camera/rev/PhoenixLogSettings$3;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings$3;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "addCurrentPreferences"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 184
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/PhoenixLogSettings$4;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings$4;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.fragment.settings.b"

    const-string v3, "initializeActivity"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 192
    const-string v0, "PhoenixSettings: log page hooks installed"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$clearLogs$5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;I)V
    .locals 4

    const/4 v0, 0x0

    .line 238
    sput-boolean v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->clearing:Z

    const/4 v1, 0x1

    .line 239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Y"

    invoke-static {p0, v3, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    instance-of p0, p2, Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;

    if-eqz p0, :cond_0

    .line 242
    invoke-static {p2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 243
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-static {p3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u65e0\u6cd5\u83b7\u53d6 ROOT \u6743\u9650"

    .line 244
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u76f8\u673a\u65e0\u6cd5\u8c03\u7528 ROOT\u3002\u8bf7\u5728 ROOT \u7ba1\u7406\u5668\u4e2d\u68c0\u67e5\u201c\u76f8\u673a\u201d\u7684 ROOT \u6388\u6743\uff0c\u7136\u540e\u91cd\u8bd5\u3002"

    .line 245
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u77e5\u9053\u4e86"

    const/4 p2, 0x0

    .line 246
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 247
    const-string p0, "\u6e05\u7406\u65e5\u5fd7\u5931\u8d25"

    invoke-static {p3, p0, p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->report(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 249
    :cond_1
    sget-object p0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5df2\u6e05\u7406 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u4e2a\u65e5\u5fd7\u6587\u4ef6"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "PhoenixSettings: cleared local log files="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$clearLogs$6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 219
    const-string v0, "phoenix_log_generation"

    const-string v1, "prometheus_log_enabled"

    const/4 v2, 0x0

    .line 222
    :try_start_0
    invoke-static {v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V

    .line 223
    sget-object v3, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 224
    sget-object v5, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    invoke-static {v5, v0, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v3, 0x186a0

    div-int/2addr v0, v3

    invoke-static {v0}, Lcom/prometheus/camera/rev/PhoenixLogCleaner;->removeOwnedLogs(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    sget-object v3, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    move v8, v0

    move-object v6, v1

    goto :goto_2

    .line 225
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unable to rotate log sessions"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 230
    :try_start_3
    sget-object p1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    :catch_1
    throw p0

    :catch_2
    move-exception v0

    .line 230
    :try_start_4
    sget-object v3, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    move-object v6, v0

    move v8, v2

    .line 237
    :goto_2
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->UI:Landroid/os/Handler;

    new-instance v1, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$click$0(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->objectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inject$3(Ljava/lang/Object;)V
    .locals 2

    .line 153
    const-string v0, "com.android.camera.fragment.settings.PreferenceExtraActivity"

    sget-object v1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    .line 154
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.prometheus.camera.filters.PhoenixLogPreferenceFragment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 153
    const-string v1, "goToActivity"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$populate$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 203
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->clearLogs(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$streetChoice$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->objectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 128
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 129
    sget-object p3, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->LABELS:[Ljava/lang/String;

    array-length p3, p3

    if-ge p2, p3, :cond_2

    .line 131
    sget-object p3, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "phoenix_street_ui_mode"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string v0, "phoenix_custom_street_ui"

    .line 132
    invoke-interface {p3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p3

    if-nez p3, :cond_1

    .line 133
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to save street UI"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const-string p2, "\u8bbe\u7f6e\u672a\u4fdd\u5b58"

    invoke-static {p0, p2, p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->report(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    .line 134
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "PhoenixStreetUI: selection saved="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid street UI selection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$toggle$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Unable to save "

    const-string v1, "PhoenixSettings: saved "

    .line 93
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onPreferenceChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3, p4}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->objectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x1

    aget-object p4, p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    .line 96
    :try_start_0
    sget-boolean v2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->clearing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "prometheus_log_enabled"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V

    .line 98
    :cond_2
    sget-object v2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_4

    .line 99
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, v3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->setLogEnabled(Z)V

    .line 100
    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 103
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    const-string p2, "\u8bbe\u7f6e\u672a\u4fdd\u5b58"

    invoke-static {p1, p2, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->report(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static objectMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 73
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "equals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    aget-object p2, p2, p1

    if-ne p0, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 75
    :cond_2
    const-string p0, "PhoenixPreferenceListener"

    return-object p0
.end method

.method private static placeAfter(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "f0"

    invoke-static {p0, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "m"

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_6

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "n0"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v4, v3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 170
    const-string v4, "g"

    invoke-static {v1, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 171
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "j0"

    invoke-static {p0, v7, v6}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v1, v5}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x2

    .line 173
    invoke-static {p1, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 174
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v7, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    return-void

    .line 165
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Missing settings anchor "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static populate(Ljava/lang/Object;)V
    .locals 8

    .line 196
    const-string v0, "mPreferenceGroup"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    const-string v1, "androidx.preference.PreferenceCategory"

    sget-object v2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    const-string v2, "phoenix_log_controls"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "a0"

    invoke-static {v1, v3, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "j0"

    invoke-static {v0, v3, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "Phoenix\u65e5\u5fd7"

    const-string v2, "\u5c06 Phoenix \u8c03\u8bd5\u65e5\u5fd7\u4fdd\u5b58\u5230 Download \u6587\u4ef6\u5939"

    const-string v4, "prometheus_log_enabled"

    invoke-static {p0, v4, v0, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->toggle(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "\u6e05\u7406\u76f8\u673a\u53ca\u76f8\u518c\u7f16\u8f91\u5668\u7684 Phoenix \u672c\u5730\u65e5\u5fd7"

    const/4 v5, 0x0

    const-string v6, "phoenix_clear_logs"

    const-string v7, "\u6e05\u7406\u65e5\u5fd7"

    invoke-static {v2, v6, v7, v4, v5}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 203
    new-instance v4, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0, v2}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 204
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v3, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p4, :cond_0

    .line 63
    const-string p4, "androidx.preference.SwitchPreference"

    goto :goto_0

    :cond_0
    const-string p4, "miuix.preference.BasePreference"

    :goto_0
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {p4, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p4

    const/4 v0, 0x0

    .line 64
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, p0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 65
    const-string p4, "a0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p1, "e0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p1, "c0"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p1, "t"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static report(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 257
    invoke-static {p2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 258
    const-string p0, "PhoenixSettings"

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    sget-object p0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static setLogEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->application:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phoenix_local_log_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unable to update local log setting"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static streetChoice(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 113
    const-string v0, "miuix.preference.DropDownPreference"

    sget-object v1, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    .line 114
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    const-string v1, "phoenix_street_ui_mode"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "a0"

    invoke-static {v0, v2, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "\u8857\u62cd\u6a21\u5f0fUI"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e0"

    invoke-static {v0, v2, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "\u91cd\u65b0\u8fdb\u5165\u8857\u62cd\u6a21\u5f0f\u540e\u751f\u6548"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "c0"

    invoke-static {v0, v2, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "t"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 121
    sget-object v1, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->LABELS:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "k0"

    invoke-static {v0, v3, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 122
    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const-string v2, "s0"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->selectedMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "l0"

    invoke-static {v0, v2, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "androidx.preference.Preference$c"

    sget-object v2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "e"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static toggle(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 88
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    .line 89
    sget-object p3, Lcom/prometheus/camera/rev/PhoenixLogSettings;->preferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "setChecked"

    invoke-static {p2, v0, p3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string p3, "androidx.preference.Preference$c"

    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {p3, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    .line 91
    sget-object v0, Lcom/prometheus/camera/rev/PhoenixLogSettings;->loader:Ljava/lang/ClassLoader;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    new-instance v1, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "e"

    invoke-static {p2, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method
