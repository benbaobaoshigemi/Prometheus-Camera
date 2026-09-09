.class Lcom/prometheus/camera/rev/FeatureEntryPoint$3$1;
.super Ljava/lang/Object;
.source "FeatureEntryPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/FeatureEntryPoint$3;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/FeatureEntryPoint$3;

.field final synthetic val$fragment:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/FeatureEntryPoint$3;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$3$1;->this$0:Lcom/prometheus/camera/rev/FeatureEntryPoint$3;

    iput-object p2, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$3$1;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$3$1;->val$fragment:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$700(Ljava/lang/Object;)V

    return-void
.end method
