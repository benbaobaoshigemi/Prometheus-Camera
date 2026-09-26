.class public final Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;
.super Ljava/lang/Object;
.source "SettingsBackupArchive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/backup/SettingsBackupArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreResult"
.end annotation


# instance fields
.field public final files:I

.field public final prefKeys:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput p1, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;->prefKeys:I

    .line 421
    iput p2, p0, Lcom/prometheus/camera/backup/SettingsBackupArchive$RestoreResult;->files:I

    .line 422
    return-void
.end method
