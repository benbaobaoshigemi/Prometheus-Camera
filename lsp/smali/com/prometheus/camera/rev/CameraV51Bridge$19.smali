.class Lcom/prometheus/camera/rev/CameraV51Bridge$19;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->installNightControls(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/reflect/Field;

.field final synthetic val$evKey:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$19;->val$callback:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$19;->val$evKey:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$19;->val$callback:Ljava/lang/reflect/Field;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$19;->val$evKey:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$1700(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
