.class Lcom/miui/home/launcher/Launcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->hideSceneScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$6;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$6;->this$0:Lcom/miui/home/launcher/Launcher;

    #getter for: Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationEnd()V

    .line 1689
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$6;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1690
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$6;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x4

    #calls: Lcom/miui/home/launcher/Launcher;->notifyGadgetStateChanged(I)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$1200(Lcom/miui/home/launcher/Launcher;I)V

    .line 1691
    return-void
.end method
