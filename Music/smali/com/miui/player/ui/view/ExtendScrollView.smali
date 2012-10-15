.class public Lcom/miui/player/ui/view/ExtendScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;
    }
.end annotation


# instance fields
.field private mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

.field private mIsNeedFling:Z

.field private mLastOldT:I

.field private mLastT:I

.field private mScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 75
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastT:I

    .line 76
    iput v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastOldT:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 18
    return-void
.end method

.method private handleTouchEvent(I)V
    .locals 1
    .parameter "actionEvent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v0}, Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;->onTouchEventStart()V

    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    invoke-interface {v0}, Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;->onTouchEventEnd()V

    goto :goto_0
.end method


# virtual methods
.method public fling(I)V
    .locals 1
    .parameter "velocityY"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 102
    .local v0, returnValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->handleTouchEvent(I)V

    .line 103
    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 80
    iget v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastT:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastOldT:I

    if-eq v0, p4, :cond_1

    :cond_0
    if-eq p2, p4, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    sub-int v1, p4, p2

    invoke-interface {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;->onScroll(I)V

    .line 83
    :cond_1
    iput p2, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastT:I

    .line 84
    iput p4, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mLastOldT:I

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 23
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 109
    .local v0, returnValue:Z
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->handleTouchEvent(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 47
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget v1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    if-ltz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollTo(II)V

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 72
    :cond_0
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/view/ExtendScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public scrollY(I)V
    .locals 3
    .parameter "y"

    .prologue
    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 54
    iput p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mScrollY:I

    .line 55
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/view/ExtendScrollView;->post(Ljava/lang/Runnable;)Z

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setNeedFling(Z)V
    .locals 0
    .parameter "isNeedFling"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mIsNeedFling:Z

    .line 31
    return-void
.end method

.method public setOnExtendScrollListener(Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/player/ui/view/ExtendScrollView;->mExtendScroller:Lcom/miui/player/ui/view/ExtendScrollView$OnExtendScrollListener;

    .line 42
    return-void
.end method
