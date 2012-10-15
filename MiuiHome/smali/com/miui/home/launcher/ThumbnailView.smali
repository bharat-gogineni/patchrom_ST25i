.class public Lcom/miui/home/launcher/ThumbnailView;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;
    }
.end annotation


# static fields
.field protected static final LONG_PRESS_DELAY:I


# instance fields
.field protected final ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field protected final EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field protected mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

.field protected mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

.field protected mAnimationDuration:I

.field protected mColumnCountPerScreen:I

.field private mDataRefreshmentRequested:Z

.field private mDragingSource:I

.field private mEnableThumbnailPositionChanging:Z

.field private mEnterAnimationRequested:Z

.field private mExitAnimationRequested:Z

.field private mLayoutRequested:Z

.field private mMeasurmentRequested:Z

.field private mRequesetedColumnCountPerScreen:I

.field private mRequesetedRowCountPerScreen:I

.field private mRequesetedThumbnailHeight:I

.field private mRequesetedThumbnailWidth:I

.field protected mRowCountPerScreen:I

.field private mShowing:Z

.field protected mThumbnailCountPerScreen:I

.field protected mThumbnailHeight:I

.field private mThumbnailPositionChanged:Z

.field private mThumbnailPositionMapping:[I

.field protected mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lcom/miui/home/launcher/ThumbnailView;->LONG_PRESS_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    .line 45
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 46
    iput-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnterAnimationRequested:Z

    .line 47
    iput-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mExitAnimationRequested:Z

    .line 49
    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedRowCountPerScreen:I

    .line 50
    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    .line 51
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailWidth:I

    .line 52
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailWidth:I

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailHeight:I

    .line 61
    new-instance v0, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/miui/home/launcher/ThumbnailView;Lcom/miui/home/launcher/ThumbnailView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    .line 67
    iput-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    .line 68
    iput-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    .line 512
    new-instance v0, Lcom/miui/home/launcher/ThumbnailView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ThumbnailView$1;-><init>(Lcom/miui/home/launcher/ThumbnailView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 541
    new-instance v0, Lcom/miui/home/launcher/ThumbnailView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ThumbnailView$2;-><init>(Lcom/miui/home/launcher/ThumbnailView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAnimationDuration:I

    .line 90
    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ThumbnailView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    return p1
.end method

.method private prepareSwitchingAnimation(Z)V
    .locals 2
    .parameter "entering"

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    if-eqz v0, :cond_3

    .line 186
    :cond_0
    if-eqz p1, :cond_2

    .line 187
    iput-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnterAnimationRequested:Z

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mExitAnimationRequested:Z

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getFocusedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->setCurrentScreen(I)V

    .line 199
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->scrollToScreen(I)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->startSwitchingAnimation(Z)V

    goto :goto_0
.end method

.method private updateScreenGridSize()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 211
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    .line 212
    .local v3, previousRowCountPerScreen:I
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    .line 213
    .local v2, previousColumnCountPerScreen:I
    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    .line 214
    .local v5, previousThumbnailWidth:I
    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    .line 216
    .local v4, previousThumbnailHeight:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 217
    .local v7, screenWidth:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mScreenPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mScreenPaddingBottom:I

    sub-int v6, v8, v9

    .line 219
    .local v6, screenHeigth:I
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedRowCountPerScreen:I

    if-lez v8, :cond_2

    .line 223
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    .line 224
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedRowCountPerScreen:I

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    .line 225
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    div-int v8, v7, v8

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    .line 226
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    div-int v8, v6, v8

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    .line 264
    :cond_0
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    mul-int/2addr v8, v9

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    .line 266
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    if-ne v2, v8, :cond_1

    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    if-ne v5, v8, :cond_1

    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    if-eq v4, v8, :cond_7

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v0

    .line 273
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 274
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailWidth:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 254
    :cond_3
    :goto_1
    iput v10, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    .line 255
    :goto_2
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    if-gt v8, v7, :cond_5

    .line 256
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    goto :goto_2

    .line 238
    :sswitch_0
    iput v6, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    .line 239
    iput v7, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    goto :goto_1

    .line 243
    :sswitch_1
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailHeight:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    .line 244
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailWidth:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    .line 246
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    if-lez v8, :cond_4

    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    if-gtz v8, :cond_3

    .line 247
    :cond_4
    iput v6, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    .line 248
    iput v7, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    goto :goto_1

    .line 259
    :cond_5
    iput v10, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    .line 260
    :goto_3
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    iget v9, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v8, v9

    if-gt v8, v6, :cond_0

    .line 261
    iget v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    goto :goto_3

    .line 276
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/miui/home/launcher/ThumbnailView;->removeScreensInLayout(II)V

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->refreshThumbnails()V

    .line 280
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_7
    return-void

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateThumbnailPositionMapping(II)V
    .locals 7
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v3, 0x1

    .line 465
    if-eq p1, p2, :cond_2

    .line 466
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    aget v2, v4, p1

    .line 467
    .local v2, sourcePosition:I
    if-ge p1, p2, :cond_0

    move v0, v3

    .line 468
    .local v0, direction:I
    :goto_0
    move v1, p1

    .local v1, i:I
    :goto_1
    if-eq v1, p2, :cond_1

    .line 469
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    add-int v6, v1, v0

    aget v5, v5, v6

    aput v5, v4, v1

    .line 468
    add-int/2addr v1, v0

    goto :goto_1

    .line 467
    .end local v0           #direction:I
    .end local v1           #i:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 471
    .restart local v0       #direction:I
    .restart local v1       #i:I
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    aput v2, v4, p2

    .line 473
    iput-boolean v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionChanged:Z

    .line 475
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #sourcePosition:I
    :cond_2
    return-void
.end method


# virtual methods
.method protected clearSwitchingAnimation()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method protected createScreen(Landroid/content/Context;IIII)Lcom/miui/home/launcher/ThumbnailScreen;
    .locals 7
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 286
    new-instance v0, Lcom/miui/home/launcher/ThumbnailScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/ThumbnailScreen;-><init>(Landroid/content/Context;IIIIZ)V

    return-object v0
.end method

.method public enableThumbnailPositionChanging(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    .line 152
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 418
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 392
    :pswitch_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnableThumbnailPositionChanging:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getTouchState()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Lcom/miui/home/launcher/ThumbnailView;->LONG_PRESS_DELAY:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionX:F

    .line 399
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionY:F

    .line 401
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 402
    .local v0, thumbnailScreen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionY:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->getThumbnailIndex(II)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    .line 406
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    if-ltz v2, :cond_2

    .line 407
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    .line 408
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->performHapticFeedback(I)Z

    .line 409
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ThumbnailView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 410
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->onStartDragging(I)V

    .line 413
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/DragableScreenView;->onLayout(ZIIII)V

    .line 373
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    if-eqz v0, :cond_1

    .line 374
    iput-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    .line 376
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnterAnimationRequested:Z

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->prepareSwitchingAnimation(Z)V

    .line 378
    iput-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mEnterAnimationRequested:Z

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mExitAnimationRequested:Z

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->prepareSwitchingAnimation(Z)V

    .line 383
    iput-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mExitAnimationRequested:Z

    .line 386
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredWidth()I

    move-result v1

    .line 346
    .local v1, previousMeasuredWidth:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredHeight()I

    move-result v0

    .line 348
    .local v0, previousMeasuredHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/home/launcher/ThumbnailView;->setMeasuredDimension(II)V

    .line 352
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getMeasuredHeight()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 362
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    .line 363
    invoke-direct {p0}, Lcom/miui/home/launcher/ThumbnailView;->updateScreenGridSize()V

    .line 366
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/DragableScreenView;->onMeasure(II)V

    .line 367
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x5

    const/4 v5, -0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 425
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getTouchState()I

    move-result v3

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mNextScreen:I

    if-ne v3, v5, :cond_0

    .line 426
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 427
    .local v1, pointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionX:F

    .line 428
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionY:F

    .line 431
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 432
    .local v2, screen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mAnimationDuration:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    rem-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miui/home/launcher/ThumbnailScreen;->moveThumbnailTo(IIII)I

    move-result v0

    .line 439
    .local v0, newIndex:I
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 440
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    invoke-direct {p0, v3, v0}, Lcom/miui/home/launcher/ThumbnailView;->updateThumbnailPositionMapping(II)V

    .line 441
    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    goto :goto_0

    .line 445
    .end local v0           #newIndex:I
    .end local v1           #pointerIndex:I
    .end local v2           #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getTouchState()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 446
    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->onEndDragging()V

    .line 448
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mNextScreen:I

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 450
    .restart local v2       #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->resetThumbnailLayout(I)V

    .line 451
    iput v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    .line 453
    iget-boolean v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionChanged:Z

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->onThumbnailPositionChanged([I)V

    .line 455
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionChanged:Z

    goto :goto_0

    .line 448
    .end local v2           #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mNextScreen:I

    goto :goto_1

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected refreshThumbnails()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iput-boolean v12, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getCount()I

    move-result v6

    .line 303
    .local v6, count:I
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int v9, v0, v1

    .line 304
    .local v9, requestScreenCount:I
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v7

    .line 307
    .local v7, currentScreenCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 308
    invoke-virtual {p0, v8}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 307
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 312
    :cond_2
    :goto_2
    if-ge v9, v7, :cond_3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/miui/home/launcher/ThumbnailView;->removeScreen(I)V

    goto :goto_2

    .line 315
    :cond_3
    :goto_3
    if-le v9, v7, :cond_4

    .line 316
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRowCountPerScreen:I

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mColumnCountPerScreen:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/ThumbnailView;->createScreen(Landroid/content/Context;IIII)Lcom/miui/home/launcher/ThumbnailScreen;

    move-result-object v10

    .line 320
    .local v10, screen:Lcom/miui/home/launcher/ThumbnailScreen;
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getHeight()I

    move-result v1

    invoke-virtual {v10, v12, v12, v0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->layout(IIII)V

    .line 321
    invoke-virtual {p0, v10}, Lcom/miui/home/launcher/ThumbnailView;->addView(Landroid/view/View;)V

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 326
    .end local v10           #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_5

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v0, v8, v13, v13}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 328
    .local v11, thumbnail:Landroid/view/View;
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 330
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 331
    .restart local v10       #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailWidth:I

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailHeight:I

    invoke-virtual {v10, v11, v0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->addView(Landroid/view/View;II)V

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 335
    .end local v10           #screen:Lcom/miui/home/launcher/ThumbnailScreen;
    .end local v11           #thumbnail:Landroid/view/View;
    :cond_5
    iput-boolean v12, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionChanged:Z

    .line 336
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    .line 337
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailPositionMapping:[I

    aput v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 339
    :cond_6
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreen:I

    add-int/lit8 v1, v9, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->setCurrentScreen(I)V

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->onInvalidated()V

    .line 100
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAnimationDuration:I

    .line 148
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .parameter "l"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, screenIndex:I
    :goto_0
    if-ltz v1, :cond_1

    .line 158
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    .local v0, screen:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, thumbnailIndex:I
    :goto_1
    if-ltz v2, :cond_0

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 157
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 163
    .end local v0           #screen:Landroid/view/ViewGroup;
    .end local v2           #thumbnailIndex:I
    :cond_1
    return-void
.end method

.method public setScreenGridSize(II)V
    .locals 1
    .parameter "rowCount"
    .parameter "columnCount"

    .prologue
    const/4 v0, 0x1

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedRowCountPerScreen:I

    .line 113
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedColumnCountPerScreen:I

    .line 114
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    .line 115
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 116
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->requestLayout()V

    .line 118
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "padding"

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->setScreenPadding(Landroid/graphics/Rect;)V

    .line 140
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    .line 141
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 142
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->requestLayout()V

    .line 144
    return-void
.end method

.method public setThumbnailMeasureSpec(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 128
    iput p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailWidth:I

    .line 129
    iput p2, p0, Lcom/miui/home/launcher/ThumbnailView;->mRequesetedThumbnailHeight:I

    .line 130
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mMeasurmentRequested:Z

    .line 131
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mDataRefreshmentRequested:Z

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mLayoutRequested:Z

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->requestLayout()V

    .line 134
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    if-ne v0, p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    .line 173
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    if-eqz v0, :cond_2

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->prepareSwitchingAnimation(Z)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->prepareSwitchingAnimation(Z)V

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 7
    .parameter "whichScreen"

    .prologue
    const/4 v3, 0x0

    .line 479
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 481
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getTouchState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int/2addr v4, v5

    if-eq p1, v4, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailScreen;

    .line 487
    .local v2, toScreen:Lcom/miui/home/launcher/ThumbnailScreen;
    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    div-int v0, v4, v5

    .line 488
    .local v0, fromScreenIndex:I
    if-ge v0, p1, :cond_1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ThumbnailScreen;

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    rem-int/2addr v5, v6

    invoke-virtual {v2, v4, v3, v5}, Lcom/miui/home/launcher/ThumbnailScreen;->moveThumbnailInto(ZLcom/miui/home/launcher/ThumbnailScreen;I)I

    move-result v1

    .line 494
    .local v1, newIndex:I
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mAnimationDuration:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mLastMotionY:F

    float-to-int v5, v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/miui/home/launcher/ThumbnailScreen;->moveThumbnailTo(IIII)I

    move-result v1

    .line 501
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mThumbnailCountPerScreen:I

    mul-int/2addr v3, p1

    add-int/2addr v1, v3

    .line 502
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    invoke-direct {p0, v3, v1}, Lcom/miui/home/launcher/ThumbnailView;->updateThumbnailPositionMapping(II)V

    .line 503
    iput v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mDragingSource:I

    .line 506
    .end local v0           #fromScreenIndex:I
    .end local v1           #newIndex:I
    .end local v2           #toScreen:Lcom/miui/home/launcher/ThumbnailScreen;
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/DragableScreenView;->snapToScreen(I)V

    .line 507
    return-void

    .restart local v0       #fromScreenIndex:I
    .restart local v2       #toScreen:Lcom/miui/home/launcher/ThumbnailScreen;
    :cond_1
    move v4, v3

    .line 488
    goto :goto_0
.end method

.method protected startSwitchingAnimation(Z)V
    .locals 0
    .parameter "entering"

    .prologue
    .line 205
    return-void
.end method
