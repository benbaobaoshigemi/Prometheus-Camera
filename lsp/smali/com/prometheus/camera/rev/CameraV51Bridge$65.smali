.class Lcom/prometheus/camera/rev/CameraV51Bridge$65;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookContentRegistries(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/prometheus/camera/rev/ContentRegistry;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0

    .line 2366
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$65;->val$content:Lcom/prometheus/camera/rev/ContentRegistry;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 0

    .line 2369
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$65;->val$content:Lcom/prometheus/camera/rev/ContentRegistry;

    iget-object p0, p0, Lcom/prometheus/camera/rev/ContentRegistry;->managedGalleryKeys:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
