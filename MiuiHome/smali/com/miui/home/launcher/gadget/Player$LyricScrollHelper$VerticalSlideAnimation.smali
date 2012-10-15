.class Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;
.super Landroid/view/animation/Animation;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalSlideAnimation"
.end annotation


# instance fields
.field private mDestination:I

.field private mSlidable:Landroid/view/View;

.field private mStart:I

.field final synthetic this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "slidable"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->this$1:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 914
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    .line 915
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 935
    iget v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mDestination:I

    iget v3, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 936
    .local v0, offset:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    .line 937
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 930
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 931
    return-void
.end method

.method public slideTo(I)V
    .locals 2
    .parameter "destination"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->slideTo(IJ)V

    .line 926
    return-void
.end method

.method public slideTo(IJ)V
    .locals 1
    .parameter "destination"
    .parameter "duration"

    .prologue
    .line 918
    iput p1, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mDestination:I

    .line 919
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mStart:I

    .line 920
    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->setDuration(J)V

    .line 921
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper$VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 922
    return-void
.end method
