.class public Lcom/miui/home/launcher/DragView;
.super Landroid/view/View;
.source "DragView.java"


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomPaint:Landroid/graphics/Paint;

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mHasDrawn:Z

.field private mLayoutParams:Lcom/miui/home/launcher/DragLayer$LayoutParams;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;IIIIII)V
    .locals 15
    .parameter "launcher"
    .parameter "bitmap"
    .parameter "registrationX"
    .parameter "registrationY"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 43
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 44
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 47
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/home/launcher/DragView;->mOffsetX:F

    .line 48
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/home/launcher/DragView;->mOffsetY:F

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 69
    .local v13, res:Landroid/content/res/Resources;
    const v2, 0x7f0b0006

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 71
    .local v9, dragScale:I
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v7, scale:Landroid/graphics/Matrix;
    add-int v2, p7, v9

    div-int v2, v2, p7

    int-to-float v14, v2

    .line 73
    .local v14, scaleFactor:F
    const/high16 v2, 0x3f80

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    :cond_0
    const v2, 0x7f0a002b

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 78
    .local v11, offsetX:I
    const v2, 0x7f0a002c

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 81
    .local v12, offsetY:I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 82
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x6e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4020

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    iget-object v2, p0, Lcom/miui/home/launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/DragView$1;

    invoke-direct {v3, p0, v11, v12}, Lcom/miui/home/launcher/DragView$1;-><init>(Lcom/miui/home/launcher/DragView;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    const/4 v8, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 110
    move/from16 v0, p3

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    .line 111
    move/from16 v0, p4

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 115
    .local v10, ms:I
    invoke-virtual {p0, v10, v10}, Lcom/miui/home/launcher/DragView;->measure(II)V

    .line 116
    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$016(Lcom/miui/home/launcher/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetX:F

    return v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DragView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$116(Lcom/miui/home/launcher/DragView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/DragView;->mOffsetY:F

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/DragLayer$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLayoutParams:Lcom/miui/home/launcher/DragLayer$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/DragView;)Lcom/miui/home/launcher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object v0
.end method


# virtual methods
.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    return v0
.end method

.method move(II)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mLayoutParams:Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 220
    .local v0, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/miui/home/launcher/DragView;->mOffsetX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 221
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/home/launcher/DragView;->mOffsetY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 222
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->requestLayout()V

    .line 223
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/DragView;->mHasDrawn:Z

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mCustomPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mCustomPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/DragView;->setMeasuredDimension(II)V

    .line 157
    return-void
.end method

.method remove()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/miui/home/launcher/DragView$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragView$2;-><init>(Lcom/miui/home/launcher/DragView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->invalidate()V

    .line 190
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 148
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 140
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "paint"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/DragView;->mCustomPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->invalidate()V

    .line 176
    return-void
.end method

.method public show(II)V
    .locals 3
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 201
    new-instance v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/miui/home/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 202
    .local v0, lp:Lcom/miui/home/launcher/DragLayer$LayoutParams;
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->width:I

    .line 203
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->height:I

    .line 204
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->x:I

    .line 205
    iget v1, p0, Lcom/miui/home/launcher/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->y:I

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 207
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iput-object v0, p0, Lcom/miui/home/launcher/DragView;->mLayoutParams:Lcom/miui/home/launcher/DragLayer$LayoutParams;

    .line 209
    iget-object v1, p0, Lcom/miui/home/launcher/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 210
    return-void
.end method
