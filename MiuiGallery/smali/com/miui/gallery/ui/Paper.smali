.class Lcom/miui/gallery/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# instance fields
.field private mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

.field private mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

.field private mHeight:I

.field private mMatrix:[F

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/miui/gallery/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    .line 36
    new-instance v0, Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/miui/gallery/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 2
    .parameter "velocity"

    .prologue
    .line 50
    iget v0, p0, Lcom/miui/gallery/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 51
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/EdgeAnimation;->onAbsorb(F)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_0
.end method

.method public getTransform(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;FF)[F
    .locals 16
    .parameter "target"
    .parameter "base"
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v9

    .line 76
    .local v9, left:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/EdgeAnimation;->getValue()F

    move-result v11

    .line 77
    .local v11, right:F
    move-object/from16 v0, p1

    iget v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    sub-float v12, v1, p4

    .line 81
    .local v12, screenY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/Paper;->mHeight:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    add-float v14, v12, v1

    .line 82
    .local v14, y:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/Paper;->mHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v10, v1, 0x2

    .line 83
    .local v10, range:I
    int-to-float v1, v10

    sub-float/2addr v1, v14

    mul-float/2addr v1, v9

    mul-float v2, v14, v11

    sub-float/2addr v1, v2

    int-to-float v2, v10

    div-float v13, v1, v2

    .line 87
    .local v13, t:F
    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    neg-float v3, v13

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    const/high16 v2, -0x3dcc

    mul-float v8, v1, v2

    .line 89
    .local v8, degrees:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v5, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    move-object/from16 v0, p2

    iget v7, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    invoke-static/range {v1 .. v7}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v2, 0x0

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    move-object/from16 v0, p2

    iget v6, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p1

    iget v6, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    move-object/from16 v0, p2

    iget v7, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p1

    iget v7, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    move-object/from16 v0, p2

    iget v15, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    sub-float/2addr v7, v15

    invoke-static/range {v1 .. v7}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/Paper;->mMatrix:[F

    return-object v1
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/EdgeAnimation;->onRelease()V

    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/EdgeAnimation;->onRelease()V

    .line 61
    return-void
.end method

.method public overScroll(F)V
    .locals 2
    .parameter "distance"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/gallery/ui/Paper;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 42
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationLeft:Lcom/miui/gallery/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/EdgeAnimation;->onPull(F)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/Paper;->mAnimationRight:Lcom/miui/gallery/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/EdgeAnimation;->onPull(F)V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    iput p1, p0, Lcom/miui/gallery/ui/Paper;->mWidth:I

    .line 70
    iput p2, p0, Lcom/miui/gallery/ui/Paper;->mHeight:I

    .line 71
    return-void
.end method
