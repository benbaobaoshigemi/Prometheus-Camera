.class Lcom/prometheus/camera/rev/VideoLutQuality$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutQuality;->install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$3;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutQuality$3;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$3;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$3;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, p1, p0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$600(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    return-void
.end method
