.class Lcom/miui/home/launcher/ThumbnailView$1;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailView;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 528
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    iget-object v1, v1, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    iget-object v1, v1, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 530
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 534
    .end local v0           #listener:Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailView;->clearSwitchingAnimation()V

    .line 535
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 524
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 515
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    iget-object v1, v1, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView$1;->this$0:Lcom/miui/home/launcher/ThumbnailView;

    iget-object v1, v1, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 517
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 521
    .end local v0           #listener:Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    return-void
.end method
