.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    #setter for: Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    invoke-static {v0, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$102(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z

    .line 753
    const-string v0, "Launcher.Model"

    const-string v2, "done with previous binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$1;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
