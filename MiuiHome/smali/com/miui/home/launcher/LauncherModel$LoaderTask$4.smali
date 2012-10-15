.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->loadAndBindMissingIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 860
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 861
    .local v0, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$4;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    #getter for: Lcom/miui/home/launcher/LauncherModel$LoaderTask;->mStopped:Z
    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$600(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 862
    invoke-interface {v0}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->finishBindingMissingItems()V

    .line 864
    :cond_0
    return-void
.end method
