.class Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;
.super Ljava/lang/Object;
.source "LyricViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeInAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/LyricViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 372
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 376
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 380
    return-void
.end method
