.class Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;
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
    name = "FadeInAnimListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Lcom/miui/home/launcher/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;-><init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->access$5102(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Z)Z

    .line 1091
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    #getter for: Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->access$4900(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->prepareUpdate()V

    .line 1094
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1099
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    move-result-object v0

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;->this$1:Lcom/miui/home/launcher/gadget/Player$FadeAnimation;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$2900(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1106
    :cond_0
    return-void
.end method
