.class Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;
.super Ljava/lang/Object;
.source "LyricMovementController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/LyricMovementController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/player/ui/controller/LyricMovementController;->mLyricStatus:I

    .line 240
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;
    invoke-static {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->access$100(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/view/ExtendScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mLyricScrollListener:Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;
    invoke-static {v1}, Lcom/miui/player/ui/controller/LyricMovementController;->access$000(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/controller/LyricMovementController$OnLyricScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V

    .line 241
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 246
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/player/ui/controller/LyricMovementController$SlideAnimationListener;->this$0:Lcom/miui/player/ui/controller/LyricMovementController;

    #getter for: Lcom/miui/player/ui/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;
    invoke-static {v0}, Lcom/miui/player/ui/controller/LyricMovementController;->access$100(Lcom/miui/player/ui/controller/LyricMovementController;)Lcom/miui/player/ui/view/ExtendScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V

    .line 251
    return-void
.end method
