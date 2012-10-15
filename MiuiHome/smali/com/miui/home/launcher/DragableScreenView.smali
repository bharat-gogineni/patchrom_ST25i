.class public Lcom/miui/home/launcher/DragableScreenView;
.super Lmiui/widget/ScreenView;
.source "DragableScreenView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;
    }
.end annotation


# instance fields
.field protected mDragScrollHandler:Landroid/os/Handler;

.field protected mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

.field protected mDragScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 21
    new-instance v0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;-><init>(Lcom/miui/home/launcher/DragableScreenView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method


# virtual methods
.method public onEnterScrollArea(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onExitScrollArea()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lmiui/widget/ScreenView;->onSecondaryPointerDown(Landroid/view/MotionEvent;I)V

    .line 92
    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lmiui/widget/ScreenView;->onSecondaryPointerMove(Landroid/view/MotionEvent;I)V

    .line 100
    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lmiui/widget/ScreenView;->onSecondaryPointerUp(Landroid/view/MotionEvent;I)V

    .line 96
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/16 v5, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-super {p0, p1}, Lmiui/widget/ScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return v2

    .line 51
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragableScreenView;->getTouchState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 53
    iget v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v0, v3

    .line 55
    .local v0, x:I
    if-lt v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragableScreenView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    if-le v0, v3, :cond_3

    .line 56
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    if-nez v3, :cond_0

    .line 57
    iput v2, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 58
    iget-object v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    if-ge v0, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->setDirection(I)V

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    const-wide/16 v4, 0x258

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 58
    goto :goto_1

    .line 63
    :cond_3
    iget v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    if-ne v3, v2, :cond_0

    .line 64
    iput v1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    .line 65
    iget-object v1, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollRunnable:Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public scrollDragingLeft()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mNextScreen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollDragingRight()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragableScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(I)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragableScreenView;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(I)V

    goto :goto_0
.end method
