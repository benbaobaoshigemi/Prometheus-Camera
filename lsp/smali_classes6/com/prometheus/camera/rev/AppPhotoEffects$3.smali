.class Lcom/prometheus/camera/rev/AppPhotoEffects$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AppPhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/AppPhotoEffects;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/AppPhotoEffects;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 82
    iget-object v2, v0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v2}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$000(Lcom/prometheus/camera/rev/AppPhotoEffects;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v2, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 84
    const-string v4, "c"

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v6}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$200(Lcom/prometheus/camera/rev/AppPhotoEffects;)I

    move-result v6

    iget-object v7, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/16 v9, 0xc

    aget-object v8, v8, v9

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v5, v6, v7, v8}, Lcom/prometheus/camera/rev/AppPhotoEffects;->standaloneMist(IILjava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object v5, v0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v5}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$100(Lcom/prometheus/camera/rev/AppPhotoEffects;)Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "n3.b$a"

    invoke-static {v6, v5}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 87
    const-string v19, "n"

    const-string v20, "o"

    const-string v7, "b"

    const-string v8, "c"

    const-string v9, "d"

    const-string v10, "e"

    const-string v11, "f"

    const-string v12, "g"

    const-string v13, "h"

    const-string v14, "i"

    const-string v15, "j"

    const-string v16, "k"

    const-string v17, "l"

    const-string v18, "m"

    filled-new-array/range {v7 .. v20}, [Ljava/lang/String;

    move-result-object v7

    .line 88
    const-string v20, "m"

    const-string v21, "n"

    const-string v8, "b"

    const-string v9, "c"

    const-string v10, "e"

    const-string v11, "f"

    const-string v12, "g"

    const-string v13, "h"

    const-string v14, "i"

    const-string v15, "o"

    const-string v16, "p"

    const-string v17, "j"

    const-string v18, "k"

    const-string v19, "l"

    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v8

    move v9, v6

    :goto_0
    const/16 v10, 0xe

    if-ge v9, v10, :cond_2

    .line 90
    aget-object v10, v8, v9

    aget-object v11, v7, v9

    invoke-static {v2, v11}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    invoke-static {v5, v10, v11}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const-string v7, "a"

    invoke-static {v2, v7}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v7, "p"

    invoke-static {v2, v7}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "q"

    invoke-static {v5, v7, v2}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v2, v0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v2}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$300(Lcom/prometheus/camera/rev/AppPhotoEffects;)I

    move-result v2

    invoke-static {v5, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 94
    const-string v2, "e"

    invoke-static {v5, v2, v6}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 95
    iget-object v1, v1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v0, v0, Lcom/prometheus/camera/rev/AppPhotoEffects$3;->this$0:Lcom/prometheus/camera/rev/AppPhotoEffects;

    invoke-static {v0}, Lcom/prometheus/camera/rev/AppPhotoEffects;->access$100(Lcom/prometheus/camera/rev/AppPhotoEffects;)Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "n3.b"

    invoke-static {v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    .line 96
    const-string v0, "PhoenixAppEffects"

    const-string v1, "standalone mist render state delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
