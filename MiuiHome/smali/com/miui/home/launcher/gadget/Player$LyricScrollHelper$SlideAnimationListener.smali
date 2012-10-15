.class Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$SlideAnimationListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimationListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$SlideAnimationListener;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Lcom/miui/home/launcher/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$SlideAnimationListener;-><init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$SlideAnimationListener;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->mLyricMoveStatus:I
    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$4102(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;I)I

    .line 946
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 951
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 956
    return-void
.end method
