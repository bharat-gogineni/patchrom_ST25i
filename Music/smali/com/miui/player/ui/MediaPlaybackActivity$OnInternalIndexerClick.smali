.class Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnInternalIndexerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 735
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-boolean v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    .line 741
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getNextIndexerWhenInternalClick()I

    move-result v1

    .line 742
    .local v1, newIndexer:I
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v2, :cond_2

    .line 743
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/controller/AlbumViewController;->startLeaveAnimation(Landroid/view/animation/Animation;)V

    .line 744
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v2, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 745
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 746
    .local v0, bottomIn:Landroid/view/animation/Animation;
    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 747
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/controller/LyricViewController;->startEnterAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 749
    .end local v0           #bottomIn:Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->turnToLyricIndexerMode(I)V
    invoke-static {v2, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$300(Lcom/miui/player/ui/MediaPlaybackActivity;I)V

    goto :goto_0
.end method
