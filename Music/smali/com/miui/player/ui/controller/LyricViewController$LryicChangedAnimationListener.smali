.class Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;
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
    name = "LryicChangedAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/LyricViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/LyricViewController;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 351
    .local v0, fadeIn:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/LyricViewController;->changeLyric()Z

    .line 352
    new-instance v1, Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;

    iget-object v2, p0, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-direct {v1, v2}, Lcom/miui/player/ui/controller/LyricViewController$FadeInAnimationListener;-><init>(Lcom/miui/player/ui/controller/LyricViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 353
    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricViewController$LryicChangedAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricViewController;

    iget-object v1, v1, Lcom/miui/player/ui/controller/LyricViewController;->mLyricViewFrame:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 354
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 358
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 362
    return-void
.end method
