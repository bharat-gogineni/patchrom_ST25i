.class Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player$FadeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeOutAnimListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Lcom/miui/home/launcher/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;-><init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #calls: Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$4800(Lcom/miui/home/launcher/gadget/Player;)V

    .line 1072
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->access$4902(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Z)Z

    .line 1073
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$4700(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    #getter for: Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->access$5000(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1074
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1079
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1083
    return-void
.end method
