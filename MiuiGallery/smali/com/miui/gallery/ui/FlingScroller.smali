.class Lcom/miui/gallery/ui/FlingScroller;
.super Ljava/lang/Object;
.source "FlingScroller.java"


# instance fields
.field private mCosAngle:D

.field private mCurrV:D

.field private mCurrX:I

.field private mCurrY:I

.field private mDistance:I

.field private mDuration:I

.field private mFinalX:I

.field private mFinalY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mSinAngle:D

.field private mStartX:I

.field private mStartY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getV(F)D
    .locals 6
    .parameter "progress"

    .prologue
    .line 128
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mDistance:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getX(F)I
    .locals 6
    .parameter "f"

    .prologue
    .line 117
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mStartX:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/miui/gallery/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mMinX:I

    int-to-long v2, v2

    iget v4, p0, Lcom/miui/gallery/ui/FlingScroller;->mMaxX:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getY(F)I
    .locals 6
    .parameter "f"

    .prologue
    .line 122
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mStartY:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/miui/gallery/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mMinY:I

    int-to-long v2, v2

    iget v4, p0, Lcom/miui/gallery/ui/FlingScroller;->mMaxY:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/common/Utils;->clamp(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public computeScrollOffset(F)V
    .locals 6
    .parameter "progress"

    .prologue
    const/high16 v5, 0x3f80

    .line 108
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 109
    sub-float v0, v5, p1

    .line 110
    .local v0, f:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4010

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v5, v1

    .line 111
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FlingScroller;->getX(F)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrX:I

    .line 112
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/FlingScroller;->getY(F)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrY:I

    .line 113
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/FlingScroller;->getV(F)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrV:D

    .line 114
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 78
    iput p1, p0, Lcom/miui/gallery/ui/FlingScroller;->mStartX:I

    .line 79
    iput p2, p0, Lcom/miui/gallery/ui/FlingScroller;->mStartY:I

    .line 80
    iput p5, p0, Lcom/miui/gallery/ui/FlingScroller;->mMinX:I

    .line 81
    move/from16 v0, p7

    iput v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mMinY:I

    .line 82
    iput p6, p0, Lcom/miui/gallery/ui/FlingScroller;->mMaxX:I

    .line 83
    move/from16 v0, p8

    iput v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mMaxY:I

    .line 85
    int-to-double v3, p3

    int-to-double v5, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    .line 86
    .local v1, velocity:D
    int-to-double v3, p4

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mSinAngle:D

    .line 87
    int-to-double v3, p3

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mCosAngle:D

    .line 96
    const-wide/high16 v3, 0x4049

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fd5555555555555L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mDuration:I

    .line 100
    iget v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mDuration:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x4010

    div-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mDistance:I

    .line 103
    const/high16 v3, 0x3f80

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/FlingScroller;->getX(F)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mFinalX:I

    .line 104
    const/high16 v3, 0x3f80

    invoke-direct {p0, v3}, Lcom/miui/gallery/ui/FlingScroller;->getY(F)I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/FlingScroller;->mFinalY:I

    .line 105
    return-void
.end method

.method public getCurrVelocityX()I
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mCosAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrVelocityY()I
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/miui/gallery/ui/FlingScroller;->mSinAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mCurrY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mDuration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mFinalX:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/miui/gallery/ui/FlingScroller;->mFinalY:I

    return v0
.end method
