.class Lcom/prometheus/camera/rev/CombinedEntryPoint$2;
.super Landroid/content/ContextWrapper;
.source "CombinedEntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CombinedEntryPoint;->createFilterStateProvider(Ljava/lang/ClassLoader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fam:Landroid/content/res/AssetManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/AssetManager;)V
    .locals 0

    .line 170
    iput-object p2, p0, Lcom/prometheus/camera/rev/CombinedEntryPoint$2;->val$fam:Landroid/content/res/AssetManager;

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/prometheus/camera/rev/CombinedEntryPoint$2;->val$fam:Landroid/content/res/AssetManager;

    return-object v0
.end method
