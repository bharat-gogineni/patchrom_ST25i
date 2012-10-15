.class Lcom/miui/home/launcher/Launcher$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$4;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1638
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    #getter for: Lcom/miui/home/launcher/Launcher;->mScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1639
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    #getter for: Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationEnd()V

    .line 1640
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    #setter for: Lcom/miui/home/launcher/Launcher;->mSceneAnimating:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1641
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    #getter for: Lcom/miui/home/launcher/Launcher;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    .line 1643
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$4$1;->this$1:Lcom/miui/home/launcher/Launcher$4;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    #calls: Lcom/miui/home/launcher/Launcher;->showUpsideEnterOrExitTipIfNeed(Z)V
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;Z)V

    .line 1644
    return-void
.end method
