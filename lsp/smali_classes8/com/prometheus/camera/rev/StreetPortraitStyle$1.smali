.class Lcom/prometheus/camera/rev/StreetPortraitStyle$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "StreetPortraitStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/StreetPortraitStyle;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/StreetPortraitStyle;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/StreetPortraitStyle;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/prometheus/camera/rev/StreetPortraitStyle$1;->this$0:Lcom/prometheus/camera/rev/StreetPortraitStyle;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 18
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "mCurrentMode"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0xe5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
