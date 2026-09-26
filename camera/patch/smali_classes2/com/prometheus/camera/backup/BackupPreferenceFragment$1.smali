.class Lcom/prometheus/camera/backup/BackupPreferenceFragment$1;
.super Ljava/lang/Object;
.source "BackupPreferenceFragment.java"

# REQUIRED: this object is handed to the miuix dialog helper `vr.w.c(...)` as its
# positive-button Runnable and stored in a field typed java.lang.Runnable.
# ART's verifier does NOT check interface assignability at class-load time, so a
# missing .implements only surfaces as a ClassCastException when the button is
# tapped -- exactly the crash that shipped in the first build, where this class
# was a DialogInterface.OnClickListener without the matching .implements and
# AlertController$ButtonHandler.handleMessage() blew up on the cast.
# Do not remove.
.implements Ljava/lang/Runnable;

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/backup/BackupPreferenceFragment;->askRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
