.class Lcom/miui/player/ui/MediaPlaybackActivity$3;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;->turnToLyricIndexerMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/AlbumViewController;->startEnterAnimation(Landroid/view/animation/Animation;)V

    .line 723
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$3;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    .line 724
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 718
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 714
    return-void
.end method
