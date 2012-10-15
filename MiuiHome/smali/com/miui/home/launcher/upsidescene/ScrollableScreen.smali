.class public Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
.super Landroid/widget/FrameLayout;
.source "ScrollableScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;,
        Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCurrentScreen:I

.field private mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

.field private mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScreenCount:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 183
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 170
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 180
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 170
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 180
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 170
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 180
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method private calcScreenScrollX(I)I
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    mul-int v0, p1, v1

    .line 467
    .local v0, scrollX:I
    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result v0

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getOverlapEdge()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getOverlapEdge()I
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getScrollRange()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 552
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 553
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 555
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleActionUp()V
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapByVelocity(I)V

    .line 357
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 359
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->recycleVelocityTracker()V

    .line 360
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->recycle()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    .line 530
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->recycle()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    .line 537
    :cond_0
    return-void
.end method

.method private setCurrentScreenInner(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 405
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    if-eq v0, p1, :cond_0

    .line 406
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->notifyGadgets(I)V

    .line 411
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    .line 412
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 7
    .parameter "pointerId"

    .prologue
    .line 419
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mMaximumVelocity:I

    invoke-virtual {v4, v5, v6, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->getXVelocity(III)F

    move-result v4

    float-to-int v2, v4

    .line 420
    .local v2, velocityX:I
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 421
    .local v0, flingDirection:I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    if-lez v4, :cond_0

    .line 422
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 424
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0

    .line 425
    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 426
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-virtual {p0, v4, v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    .line 429
    .local v1, snapUnit:I
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v5

    div-int v3, v4, v5

    .line 430
    .local v3, whichScreen:I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->snapToScreen(II)V

    goto :goto_0
.end method


# virtual methods
.method checkIsBeginDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 372
    .local v0, activePointerId:I
    if-eq v0, v6, :cond_0

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 378
    .local v1, pointerIndex:I
    if-eq v1, v6, :cond_0

    .line 379
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 380
    .local v2, x:F
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 381
    .local v3, xDiff:I
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mTouchSlop:I

    if-le v3, v4, :cond_0

    .line 382
    iput-boolean v5, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 383
    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    .line 384
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initVelocityTrackerIfNotExists()V

    .line 385
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 386
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->postInvalidate()V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 400
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setCurrentScreenInner(I)V

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 576
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 578
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitEditMode()V

    .line 575
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 581
    :cond_1
    return-void
.end method

.method protected finishCurrentGesture()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 352
    return-void
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    return v0
.end method

.method public getScreenCount()I
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getSceneData()Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getScreenWidth()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getSceneData()Lcom/miui/home/launcher/upsidescene/SceneData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->getScreenWidth()I

    move-result v1

    rem-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 493
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    .line 496
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScreenCount:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getScreenData()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public gotoEditMode()V
    .locals 3

    .prologue
    .line 566
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 567
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 569
    check-cast v0, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->gotoEditMode()V

    .line 566
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 572
    :cond_1
    return-void
.end method

.method public isBeingDragged()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    return v0
.end method

.method public notifyGadgets(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->notifyGadgets(I)V

    .line 416
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 197
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/FreeLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    .line 199
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    .line 200
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mTouchSlop:I

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mMaximumVelocity:I

    .line 203
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 237
    .local v0, action:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 284
    :goto_0
    return v3

    .line 241
    :cond_0
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 284
    :goto_1
    iget-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isCurrentGestureFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 247
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->checkIsBeginDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 257
    .local v1, x:F
    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    .line 258
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    .line 260
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initOrResetVelocityTracker()V

    .line 261
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    .line 275
    .end local v1           #x:F
    :pswitch_2
    iput-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 276
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 560
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyScrollableScreenScrolling()V

    .line 563
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 289
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isCurrentGestureFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v5

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->initVelocityTrackerIfNotExists()V

    .line 292
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mGestureVelocityTracker:Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 304
    iput-boolean v5, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    .line 305
    new-instance v4, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->post(Ljava/lang/Runnable;)Z

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    .line 314
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    goto :goto_0

    .line 318
    :pswitch_2
    iget-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-nez v4, :cond_3

    .line 319
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->checkIsBeginDrag(Landroid/view/MotionEvent;)V

    .line 321
    :cond_3
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    if-eq v4, v6, :cond_0

    .line 322
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 323
    .local v2, pointerIndex:I
    if-eq v2, v6, :cond_0

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 325
    .local v3, x:F
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 326
    .local v1, deltaX:I
    iget-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v4, :cond_0

    .line 328
    iput v3, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mLastMotionX:F

    .line 330
    iget v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    goto :goto_0

    .line 336
    .end local v1           #deltaX:I
    .end local v2           #pointerIndex:I
    .end local v3           #x:F
    :pswitch_3
    iget-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v4, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->handleActionUp()V

    goto :goto_0

    .line 341
    :pswitch_4
    iget-boolean v4, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mIsBeingDragged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-nez v4, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->handleActionUp()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->recycleVelocityTracker()V

    .line 515
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 516
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 541
    if-gez p1, :cond_1

    .line 542
    const/4 p1, 0x0

    .line 546
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 547
    return-void

    .line 543
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollRange()I

    move-result p1

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 504
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    .line 505
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    .line 506
    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result v0

    .line 507
    .local v0, newX:I
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScrollX(I)V

    .line 508
    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 1
    .parameter "sceneScreen"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 208
    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
    .locals 1
    .parameter "screenData"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mFreeLayout:Lcom/miui/home/launcher/upsidescene/FreeLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    .line 212
    new-instance v0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;-><init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public snapToScreen(II)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 435
    if-gez p1, :cond_3

    .line 436
    iput v2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    .line 443
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 444
    .local v7, screenDelta:I
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 448
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 450
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->calcScreenScrollX(I)I

    move-result v6

    .line 451
    .local v6, newX:I
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    sub-int v3, v6, v0

    .line 452
    .local v3, delta:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenWidth()I

    move-result v1

    div-int v5, v0, v1

    .line 453
    .local v5, duration:I
    if-lez p2, :cond_1

    .line 454
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 457
    :cond_1
    const/16 v0, 0x12c

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 458
    if-gt v7, v8, :cond_2

    .line 459
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 462
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->invalidate()V

    .line 463
    return-void

    .line 437
    .end local v3           #delta:I
    .end local v5           #duration:I
    .end local v6           #newX:I
    .end local v7           #screenDelta:I
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_4

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    goto :goto_0

    .line 440
    :cond_4
    iput p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mNextScreen:I

    goto :goto_0
.end method
