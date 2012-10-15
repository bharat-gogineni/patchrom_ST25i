.class public Lcom/miui/player/ui/view/VerticalSlideAnimation;
.super Landroid/view/animation/Animation;
.source "VerticalSlideAnimation.java"


# instance fields
.field private mDestination:I

.field private mFinished:Z

.field private mSlidable:Landroid/view/View;

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "slidable"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    .line 20
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mFinished:Z

    .line 39
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 48
    iget-boolean v1, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mFinished:Z

    if-eqz v1, :cond_0

    .line 49
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->setDuration(J)V

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mDestination:I

    iget v3, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 52
    .local v0, offset:I
    iget-object v1, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 44
    return-void
.end method

.method public slideTo(I)V
    .locals 2
    .parameter "destination"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->slideTo(IJ)V

    .line 35
    return-void
.end method

.method public slideTo(IJ)V
    .locals 1
    .parameter "destination"
    .parameter "duration"

    .prologue
    .line 23
    iput p1, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mDestination:I

    .line 24
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mStart:I

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/miui/player/ui/view/VerticalSlideAnimation;->setDuration(J)V

    .line 28
    iget-object v0, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mSlidable:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/view/VerticalSlideAnimation;->mFinished:Z

    .line 31
    return-void
.end method
