.class final Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "LyricViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FadeAnimation"
.end annotation


# instance fields
.field private final mEnd:F

.field private final mStart:F

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricViewController;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/controller/LyricViewController;Landroid/view/View;FF)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mView:Landroid/view/View;

    .line 147
    iput p3, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mStart:F

    .line 148
    iput p4, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mEnd:F

    .line 149
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 154
    iget v1, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mStart:F

    iget v2, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mEnd:F

    iget v3, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mStart:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 155
    .local v0, alpha:F
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 156
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mView:Landroid/view/View;

    iget v1, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->mEnd:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 162
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricViewController$FadeAnimation;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v0, v0, Lcom/miui/player/ui/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 171
    return-void
.end method
