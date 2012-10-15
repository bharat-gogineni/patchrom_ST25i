.class Lcom/miui/home/launcher/upsidescene/SceneScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/SceneScreen;->mEditModeBottomBar:Lcom/miui/home/launcher/upsidescene/EditBottomBar;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$500(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/EditBottomBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/EditBottomBar;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatingRefresh()V

    .line 313
    return-void
.end method
