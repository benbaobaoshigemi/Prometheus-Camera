.class final Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;
.super Ljava/lang/Object;
.source "SettingsBackupArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/backup/SettingsBackupArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Scope"
.end annotation


# instance fields
.field final modes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final phoenixOnly:Z


# direct methods
.method constructor <init>([I)V
    .registers 7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 70
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    .line 71
    iput-boolean v0, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    goto :goto_35

    .line 72
    :cond_c
    array-length v1, p1

    if-nez v1, :cond_1a

    .line 73
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    .line 74
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    goto :goto_35

    .line 76
    :cond_1a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    .line 77
    array-length v1, p1

    move v2, v0

    :goto_23
    if-ge v2, v1, :cond_33

    aget v3, p1, v2

    iget-object v4, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 78
    :cond_33
    iput-boolean v0, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->phoenixOnly:Z

    .line 80
    :goto_35
    return-void
.end method


# virtual methods
.method full()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$Scope;->modes:Ljava/util/Set;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
