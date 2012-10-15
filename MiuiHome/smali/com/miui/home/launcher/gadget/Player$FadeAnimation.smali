.class Lcom/miui/home/launcher/gadget/Player$FadeAnimation;
.super Landroid/view/animation/Animation;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;,
        Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;
    }
.end annotation


# instance fields
.field private final mFadeInAnim:Landroid/view/animation/Animation;

.field private final mFadeOutAnim:Landroid/view/animation/Animation;

.field private mHasWaiting:Z

.field private mIsUpdatePreparing:Z

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Player;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1041
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1042
    const v0, 0x7f040012

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 1043
    const v0, 0x7f040010

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 1044
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeOutAnimListener;-><init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Lcom/miui/home/launcher/gadget/Player$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1045
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/home/launcher/gadget/Player$FadeAnimation$FadeInAnimListener;-><init>(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Lcom/miui/home/launcher/gadget/Player$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1049
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    .line 1054
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z

    .line 1055
    return-void
.end method

.method static synthetic access$4900(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1035
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/miui/home/launcher/gadget/Player$FadeAnimation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1035
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    return p1
.end method


# virtual methods
.method public prepareUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1058
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    if-nez v0, :cond_0

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z

    .line 1060
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$2900(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->this$0:Lcom/miui/home/launcher/gadget/Player;

    #getter for: Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Player;->access$4700(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1062
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mIsUpdatePreparing:Z

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player$FadeAnimation;->mHasWaiting:Z

    goto :goto_0
.end method
