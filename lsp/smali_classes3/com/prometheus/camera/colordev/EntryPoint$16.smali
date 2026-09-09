.class Lcom/prometheus/camera/colordev/EntryPoint$16;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookSettings(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$preferenceClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$16;->val$preferenceClass:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/prometheus/camera/colordev/EntryPoint$16;->val$preferenceClass:Ljava/lang/Class;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/prometheus/camera/colordev/EntryPoint;->access$2100(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
