.class Lcom/miui/gallery/ui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# static fields
.field private static final ANIM_TIME:[I


# instance fields
.field private mAnimationDuration:F

.field private mAnimationKind:I

.field private mAnimationStartTime:J

.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mEdgeView:Lcom/miui/gallery/ui/EdgeView;

.field private mFocusBitmapX:I

.field private mFocusBitmapY:I

.field private mFromScale:F

.field private mFromX:I

.field private mFromY:I

.field private mImageH:I

.field private mImageW:I

.field private mInScale:Z

.field private mScaleMax:F

.field private mScaleMin:F

.field private mScroller:Lcom/miui/gallery/ui/FlingScroller;

.field private mTempPoints:[F

.field private mTempRect:Landroid/graphics/RectF;

.field private mToScale:F

.field private mToX:I

.field private mToY:I

.field private mUseViewSize:Z

.field private mViewH:I

.field private mViewW:I

.field private mViewer:Lcom/miui/gallery/ui/PhotoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/ui/PositionController;->ANIM_TIME:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/gallery/ui/PhotoView;Landroid/content/Context;Lcom/miui/gallery/ui/EdgeView;)V
    .locals 2
    .parameter "viewer"
    .parameter "context"
    .parameter "edgeView"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 83
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PositionController;->mUseViewSize:Z

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mTempRect:Landroid/graphics/RectF;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mTempPoints:[F

    .line 101
    iput-object p1, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    .line 102
    iput-object p3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    .line 103
    new-instance v0, Lcom/miui/gallery/ui/FlingScroller;

    invoke-direct {v0}, Lcom/miui/gallery/ui/FlingScroller;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    .line 104
    return-void
.end method

.method private calculateStableBound(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v2, 0x4000

    .line 585
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v0, v0

    mul-float v1, v2, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    .line 586
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    .line 587
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v0, v0

    mul-float v1, v2, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    .line 588
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    .line 592
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 593
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    .line 597
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 598
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    .line 600
    :cond_1
    return-void
.end method

.method private flingInterpolate(F)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 483
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3, p1}, Lcom/miui/gallery/ui/FlingScroller;->computeScrollOffset(F)V

    .line 484
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 485
    .local v0, oldX:I
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 486
    .local v1, oldY:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 487
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 490
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    if-ne v3, v4, :cond_2

    .line 491
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 492
    .local v2, v:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/ui/EdgeView;->onAbsorb(II)V

    .line 498
    .end local v2           #v:I
    :cond_0
    :goto_0
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    if-le v1, v3, :cond_3

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    if-ne v3, v4, :cond_3

    .line 499
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 500
    .restart local v2       #v:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/ui/EdgeView;->onAbsorb(II)V

    .line 505
    .end local v2           #v:I
    :cond_1
    :goto_1
    return-void

    .line 493
    :cond_2
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    if-ne v3, v4, :cond_0

    .line 494
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 495
    .restart local v2       #v:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/ui/EdgeView;->onAbsorb(II)V

    goto :goto_0

    .line 501
    .end local v2           #v:I
    :cond_3
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    if-ne v3, v4, :cond_1

    .line 502
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 503
    .restart local v2       #v:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/miui/gallery/ui/EdgeView;->onAbsorb(II)V

    goto :goto_1
.end method

.method private getTargetScale()F
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->useCurrentValueAsTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    goto :goto_0
.end method

.method private getTargetX()I
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->useCurrentValueAsTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    goto :goto_0
.end method

.method private getTargetY()I
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->useCurrentValueAsTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    goto :goto_0
.end method

.method private static isAlmostEquals(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 304
    sub-float v0, p0, p1

    .line 305
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private linearInterpolate(F)V
    .locals 9
    .parameter "progress"

    .prologue
    .line 523
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    mul-float v2, v6, v7

    .line 524
    .local v2, fromX:F
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    mul-float v4, v6, v7

    .line 525
    .local v4, toX:F
    sub-float v6, v4, v2

    mul-float/2addr v6, p1

    add-float v0, v2, v6

    .line 527
    .local v0, currentX:F
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    mul-float v3, v6, v7

    .line 528
    .local v3, fromY:F
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    mul-float v5, v6, v7

    .line 529
    .local v5, toY:F
    sub-float v6, v5, v3

    mul-float/2addr v6, p1

    add-float v1, v3, v6

    .line 531
    .local v1, currentY:F
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    iget v8, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 532
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 533
    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 534
    return-void
.end method

.method private scrollBy(FFI)V
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "type"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->getTargetX()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->getTargetY()I

    move-result v1

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 344
    return-void
.end method

.method private startAnimation(IIFI)V
    .locals 4
    .parameter "targetX"
    .parameter "targetY"
    .parameter "scale"
    .parameter "kind"

    .prologue
    .line 401
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    .line 405
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    .line 406
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    .line 408
    iput p1, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    .line 409
    iput p2, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    .line 410
    const v0, 0x3f19999a

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    mul-float/2addr v0, v1

    const v1, 0x3fb33333

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p3, v0, v1}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    .line 416
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 417
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    .line 420
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 421
    iput p4, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    .line 422
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 423
    sget-object v0, Lcom/miui/gallery/ui/PositionController;->ANIM_TIME:[I

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationDuration:F

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PositionController;->advanceAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method private startSnapbackIfNeeded()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 538
    iget-wide v1, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PositionController;->mInScale:Z

    if-nez v1, :cond_0

    .line 540
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView;->isDown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PositionController;->startSnapback()Z

    move-result v0

    goto :goto_0
.end method

.method private static translate(IIIF)I
    .locals 4
    .parameter "value"
    .parameter "size"
    .parameter "newSize"
    .parameter "ratio"

    .prologue
    const/high16 v3, 0x4000

    .line 220
    int-to-float v0, p2

    div-float/2addr v0, v3

    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, p3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private useCurrentValueAsTarget()Z
    .locals 4

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    const/high16 v7, 0x3f80

    .line 430
    iget-wide v5, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    cmp-long v5, v5, v10

    if-nez v5, :cond_0

    .line 479
    :goto_0
    return v4

    .line 432
    :cond_0
    iget-wide v5, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_2

    .line 433
    iput-wide v10, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 434
    iget-object v5, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoView;->isInTransition()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    iget-object v5, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/PhotoView;->notifyTransitionComplete()V

    goto :goto_0

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->startSnapbackIfNeeded()Z

    move-result v4

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 444
    .local v1, now:J
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationDuration:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 445
    const/high16 v3, 0x3f80

    .line 450
    .local v3, progress:F
    :goto_1
    cmpl-float v4, v3, v7

    if-ltz v4, :cond_4

    .line 451
    const/high16 v3, 0x3f80

    .line 452
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 453
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 454
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 455
    iput-wide v8, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 478
    :goto_2
    iget-object v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/gallery/ui/PhotoView;->setPosition(IIF)V

    .line 479
    const/4 v4, 0x1

    goto :goto_0

    .line 447
    .end local v3           #progress:F
    :cond_3
    iget-wide v4, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationDuration:F

    div-float v3, v4, v5

    .restart local v3       #progress:F
    goto :goto_1

    .line 457
    :cond_4
    sub-float v0, v7, v3

    .line 458
    .local v0, f:F
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    packed-switch v4, :pswitch_data_0

    .line 472
    :goto_3
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationKind:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 473
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PositionController;->flingInterpolate(F)V

    goto :goto_2

    .line 461
    :pswitch_0
    sub-float v3, v7, v0

    .line 462
    goto :goto_3

    .line 465
    :pswitch_1
    mul-float v4, v0, v0

    sub-float v3, v7, v4

    .line 466
    goto :goto_3

    .line 469
    :pswitch_2
    mul-float v4, v0, v0

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    sub-float v3, v7, v4

    goto :goto_3

    .line 475
    :cond_5
    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PositionController;->linearInterpolate(F)V

    goto :goto_2

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public beginScale(FF)V
    .locals 4
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v3, 0x4000

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PositionController;->mInScale:Z

    .line 270
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p1, v1

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapX:I

    .line 272
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v1, p2, v1

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapY:I

    .line 274
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PositionController;->mInScale:Z

    .line 292
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->startSnapbackIfNeeded()Z

    .line 293
    return-void
.end method

.method public fling(FF)Z
    .locals 11
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 382
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 387
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    neg-float v3, p1

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    neg-float v4, p2

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/ui/FlingScroller;->fling(IIIIIIII)V

    .line 392
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FlingScroller;->getFinalX()I

    move-result v9

    .line 393
    .local v9, targetX:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FlingScroller;->getFinalY()I

    move-result v10

    .line 394
    .local v10, targetY:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionController;->mScroller:Lcom/miui/gallery/ui/FlingScroller;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FlingScroller;->getDuration()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationDuration:F

    .line 395
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    const/4 v1, 0x5

    invoke-direct {p0, v9, v10, v0, v1}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 396
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentScale()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    return v0
.end method

.method public getImageBounds()Landroid/graphics/RectF;
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/high16 v13, 0x7f80

    const/high16 v12, -0x80

    .line 621
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mTempPoints:[F

    .line 629
    .local v3, points:[F
    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v14

    aput v9, v3, v8

    .line 630
    const/4 v8, 0x1

    const/4 v9, 0x3

    iget v10, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v3, v9

    aput v10, v3, v8

    .line 631
    const/4 v8, 0x2

    const/4 v9, 0x6

    iget v10, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    iget v11, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v3, v9

    aput v10, v3, v8

    .line 632
    const/4 v8, 0x5

    const/4 v9, 0x7

    iget v10, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    iget v11, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v3, v9

    aput v10, v3, v8

    .line 634
    iget-object v4, p0, Lcom/miui/gallery/ui/PositionController;->mTempRect:Landroid/graphics/RectF;

    .line 635
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v4, v13, v13, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 638
    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 639
    .local v5, scale:F
    iget v8, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v1, v8

    .line 640
    .local v1, offsetX:F
    iget v8, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 641
    .local v2, offsetY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v14, :cond_4

    .line 642
    add-int v8, v0, v0

    aget v8, v3, v8

    mul-float/2addr v8, v5

    add-float v6, v8, v1

    .line 643
    .local v6, x:F
    add-int v8, v0, v0

    add-int/lit8 v8, v8, 0x1

    aget v8, v3, v8

    mul-float/2addr v8, v5

    add-float v7, v8, v2

    .line 644
    .local v7, y:F
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v6, v8

    if-gez v8, :cond_0

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 645
    :cond_0
    iget v8, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 646
    :cond_1
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    iput v7, v4, Landroid/graphics/RectF;->top:F

    .line 647
    :cond_2
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    .line 641
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_4
    return-object v4
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    return v0
.end method

.method public getMinimalScale(II)F
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 190
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public isAtLeftEdge()Z
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 662
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/PositionController;->isAlmostEquals(FF)Z

    move-result v0

    return v0
.end method

.method public isAtRightEdge()Z
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 667
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetToFullView()V
    .locals 4

    .prologue
    .line 184
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 185
    return-void
.end method

.method public scaleBy(FFF)V
    .locals 5
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x4000

    .line 283
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->getTargetScale()F

    move-result v2

    mul-float/2addr p1, v2

    .line 284
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    div-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 285
    .local v0, x:I
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v3, p3, v3

    div-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 287
    .local v1, y:I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 288
    return-void
.end method

.method public setImageSize(II)V
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v3, 0x3f80

    .line 109
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/gallery/ui/PositionController;->mUseViewSize:Z

    .line 111
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    .line 112
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    .line 113
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 114
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 115
    iput v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 116
    iput v3, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/gallery/ui/PhotoView;->setPosition(IIF)V

    .line 167
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/gallery/ui/PositionController;->mUseViewSize:Z

    .line 123
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 127
    .local v1, ratio:F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    .line 128
    const/high16 v1, 0x3f80

    .line 132
    :cond_2
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    invoke-static {v4, v5, p1, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 133
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-static {v4, v5, p2, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 134
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 136
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    invoke-static {v4, v5, p1, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    .line 137
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-static {v4, v5, p2, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    .line 138
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mFromScale:F

    .line 140
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    invoke-static {v4, v5, p1, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    .line 141
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-static {v4, v5, p2, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    .line 142
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    .line 144
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    invoke-static {v4, v5, p1, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapX:I

    .line 145
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-static {v4, v5, p2, v1}, Lcom/miui/gallery/ui/PositionController;->translate(IIIF)I

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mFocusBitmapY:I

    .line 147
    iput p1, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    .line 148
    iput p2, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    .line 150
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-virtual {p0, v4, v5}, Lcom/miui/gallery/ui/PositionController;->getMinimalScale(II)F

    move-result v4

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    .line 153
    iget-object v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoView;->retrieveSavedPosition()Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 154
    .local v0, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    if-eqz v0, :cond_5

    .line 157
    const/high16 v4, 0x4370

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 158
    .local v2, scale:F
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 159
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 160
    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    move v2, v3

    .end local v2           #scale:F
    :cond_3
    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 161
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView;->openAnimationStarted()V

    .line 162
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PositionController;->startSnapback()Z

    .line 166
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/gallery/ui/PhotoView;->setPosition(IIF)V

    goto/16 :goto_0

    .line 163
    :cond_5
    iget-wide v3, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 164
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    goto :goto_1
.end method

.method public setViewSize(II)V
    .locals 6
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f80

    .line 224
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    if-nez v4, :cond_2

    :cond_0
    move v0, v3

    .line 226
    .local v0, needLayout:Z
    :goto_0
    iput p1, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    .line 227
    iput p2, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    .line 229
    iget-boolean v4, p0, Lcom/miui/gallery/ui/PositionController;->mUseViewSize:Z

    if-eqz v4, :cond_3

    .line 230
    iput p1, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    .line 231
    iput p2, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    .line 232
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 233
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 234
    iput v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 235
    iput v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    .line 236
    iget-object v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/ui/PhotoView;->setPosition(IIF)V

    .line 254
    :cond_1
    :goto_1
    return-void

    .end local v0           #needLayout:Z
    :cond_2
    move v0, v2

    .line 224
    goto :goto_0

    .line 245
    .restart local v0       #needLayout:Z
    :cond_3
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    move v1, v3

    .line 246
    .local v1, wasMinScale:Z
    :goto_2
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/PositionController;->getMinimalScale(II)F

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    .line 248
    if-nez v0, :cond_4

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    if-eqz v1, :cond_1

    .line 249
    :cond_4
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 250
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 251
    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    iput v2, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 252
    iget-object v2, p0, Lcom/miui/gallery/ui/PositionController;->mViewer:Lcom/miui/gallery/ui/PhotoView;

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/ui/PhotoView;->setPosition(IIF)V

    goto :goto_1

    .end local v1           #wasMinScale:Z
    :cond_5
    move v1, v2

    .line 245
    goto :goto_2
.end method

.method public skipAnimation()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 261
    iget-wide v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-wide v2, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 263
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToX:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 264
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToY:I

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 265
    iget v0, p0, Lcom/miui/gallery/ui/PositionController;->mToScale:F

    iput v0, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    goto :goto_0
.end method

.method public startHorizontalSlide(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 337
    int-to-float v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/ui/PositionController;->scrollBy(FFI)V

    .line 338
    return-void
.end method

.method public startScroll(FFZZ)V
    .locals 7
    .parameter "dx"
    .parameter "dy"
    .parameter "hasNext"
    .parameter "hasPrev"

    .prologue
    const/4 v6, 0x0

    .line 348
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->getTargetX()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v1, v3, v4

    .line 349
    .local v1, x:I
    invoke-direct {p0}, Lcom/miui/gallery/ui/PositionController;->getTargetY()I

    move-result v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v2, v3, v4

    .line 351
    .local v2, y:I
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 355
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    if-eq v3, v4, :cond_0

    .line 356
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    if-ge v2, v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4, v6}, Lcom/miui/gallery/ui/EdgeView;->onPull(II)V

    .line 363
    :cond_0
    :goto_0
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 367
    if-nez p4, :cond_3

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    if-ge v1, v3, :cond_3

    .line 368
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 369
    .local v0, pixels:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/miui/gallery/ui/EdgeView;->onPull(II)V

    .line 370
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    .line 377
    .end local v0           #pixels:I
    :cond_1
    :goto_1
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 378
    return-void

    .line 358
    :cond_2
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    if-le v2, v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    sub-int v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/EdgeView;->onPull(II)V

    goto :goto_0

    .line 371
    :cond_3
    if-nez p3, :cond_1

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    if-le v1, v3, :cond_1

    .line 372
    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 373
    .restart local v0       #pixels:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PositionController;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lcom/miui/gallery/ui/EdgeView;->onPull(II)V

    .line 374
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    goto :goto_1
.end method

.method public startSlideInAnimation(I)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 326
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    neg-int v1, v1

    div-int/lit8 v0, v1, 0x2

    .line 328
    .local v0, fromX:I
    :goto_0
    int-to-float v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    .line 329
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    .line 330
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mFromX:I

    iput v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    .line 331
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mFromY:I

    iput v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    .line 332
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/miui/gallery/ui/PositionController;->mImageH:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    const/4 v4, 0x3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 334
    return-void

    .line 326
    .end local v0           #fromX:I
    :cond_0
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mImageW:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 7

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, needAnimation:Z
    iget v1, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    .line 550
    .local v1, scale:F
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 552
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMin:F

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/common/Utils;->clamp(FFF)F

    move-result v1

    .line 555
    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 556
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v2

    .line 557
    .local v2, x:I
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v3

    .line 559
    .local v3, y:I
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    if-ne v4, v3, :cond_2

    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    .line 560
    :cond_2
    const/4 v0, 0x1

    .line 563
    :cond_3
    if-eqz v0, :cond_4

    .line 564
    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 567
    :cond_4
    return v0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 257
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/ui/PositionController;->mAnimationStartTime:J

    .line 258
    return-void
.end method

.method public up()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PositionController;->startSnapback()Z

    .line 310
    return-void
.end method

.method public zoomIn(FFF)V
    .locals 6
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    .line 170
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    iget p3, p0, Lcom/miui/gallery/ui/PositionController;->mScaleMax:F

    .line 173
    :cond_0
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 174
    .local v2, tempX:I
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, p2, v4

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentScale:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mCurrentY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 176
    .local v3, tempY:I
    invoke-direct {p0, p3}, Lcom/miui/gallery/ui/PositionController;->calculateStableBound(F)V

    .line 177
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundLeft:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mBoundRight:I

    invoke-static {v2, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v0

    .line 178
    .local v0, targetX:I
    iget v4, p0, Lcom/miui/gallery/ui/PositionController;->mBoundTop:I

    iget v5, p0, Lcom/miui/gallery/ui/PositionController;->mBoundBottom:I

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 180
    .local v1, targetY:I
    const/4 v4, 0x4

    invoke-direct {p0, v0, v1, p3, v4}, Lcom/miui/gallery/ui/PositionController;->startAnimation(IIFI)V

    .line 181
    return-void
.end method
