.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    #getter for: Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$600(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->val$callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->startLoading()V

    .line 917
    :cond_0
    return-void
.end method
