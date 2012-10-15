.class public Lcom/miui/home/launcher/ThumbnailScreen;
.super Landroid/view/ViewGroup;
.source "ThumbnailScreen.java"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildHeight:I

.field protected mChildWidth:I

.field protected mColumnCount:I

.field private mFoucsedThumbnail:Landroid/view/View;

.field private mLastestMoveIndex:I

.field private mLastestMoveTime:J

.field protected mMaxChildrenCount:I

.field private mMovingAnimationStarted:Z

.field protected mOrderThumbnailInRowFirst:Z

.field protected mRowCount:I

.field protected mScreenMarginLeft:I

.field protected mScreenMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 2
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "orderThumbnailInRowFirst"

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveIndex:I

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 39
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    .line 40
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    .line 41
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    .line 42
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    .line 43
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMaxChildrenCount:I

    .line 44
    iput-boolean p6, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/ThumbnailScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMovingAnimationStarted:Z

    return p1
.end method

.method private convertToColumnIndex(I)I
    .locals 3
    .parameter "rawIndex"

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    rem-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMaxChildrenCount:I

    div-int v1, p1, v1

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    div-int v0, p1, v0

    goto :goto_0
.end method

.method private convertToRawIndex(II)I
    .locals 1
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private convertToRowIndex(I)I
    .locals 2
    .parameter "rawIndex"

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    div-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    rem-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    rem-int v0, p1, v0

    goto :goto_0
.end method

.method private getPositionIndex(II)I
    .locals 5
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 305
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginLeft:I

    sub-int/2addr p1, v3

    .line 306
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginTop:I

    sub-int/2addr p2, v3

    .line 308
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    div-int v1, p2, v3

    .line 309
    .local v1, rowIndex:I
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    div-int v0, p1, v3

    .line 312
    .local v0, columnIndex:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    if-lt v1, v3, :cond_2

    .line 313
    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    .line 324
    :cond_1
    :goto_0
    return v2

    .line 321
    :cond_2
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    rem-int v3, p1, v3

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x7

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    mul-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_1

    .line 322
    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    rem-int v3, p2, v3

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x7

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    mul-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_1

    .line 324
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMaxChildrenCount:I

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScreenViewItem only support %d children."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMaxChildrenCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method public getThumbnailIndex(II)I
    .locals 4
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v0, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, thumbnail:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 296
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    .end local v1           #i:I
    .end local v2           #thumbnail:Landroid/view/View;
    :goto_1
    return v1

    .line 293
    .restart local v1       #i:I
    .restart local v2       #thumbnail:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 300
    .end local v2           #thumbnail:Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isMovingAnimationStarted()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMovingAnimationStarted:Z

    return v0
.end method

.method protected layoutChildByIndex(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v1

    .line 60
    .local v1, rowIndex:I
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v0

    .line 62
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginLeft:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginTop:I

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginLeft:I

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginTop:I

    iget v7, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 67
    return-void
.end method

.method public moveThumbnail(III)V
    .locals 5
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 208
    if-eq p2, p3, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 209
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, movingTarget:Landroid/view/View;
    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->removeViewsInLayout(II)V

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, p3, v4, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 216
    if-ge p2, p3, :cond_1

    .line 217
    .local v0, direction:I
    :goto_1
    move v1, p2

    :goto_2
    if-eq v1, p3, :cond_2

    .line 218
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 217
    add-int/2addr v1, v0

    goto :goto_2

    .end local v0           #direction:I
    :cond_1
    move v0, v3

    .line 216
    goto :goto_1

    .line 221
    .restart local v0       #direction:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailScreen;->startMovingAnimation(III)V

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->invalidate()V

    .line 223
    iput v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveIndex:I

    .line 225
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #movingTarget:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public moveThumbnailInto(ZLcom/miui/home/launcher/ThumbnailScreen;I)I
    .locals 5
    .parameter "isMovingToRight"
    .parameter "fromScreen"
    .parameter "fromThumbnail"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, dragingThumbnail:Landroid/view/View;
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->removeView(Landroid/view/View;)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 272
    .local v1, thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 273
    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/miui/home/launcher/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 284
    :goto_0
    return v2

    .line 277
    .end local v1           #thumbnail:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .restart local v1       #thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 279
    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/ThumbnailScreen;->addView(Landroid/view/View;I)V

    .line 280
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/miui/home/launcher/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public moveThumbnailTo(IIII)I
    .locals 6
    .parameter "duration"
    .parameter "lastestPosistion"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 228
    invoke-direct {p0, p3, p4}, Lcom/miui/home/launcher/ThumbnailScreen;->getPositionIndex(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    .local v1, newPosition:I
    if-gez v1, :cond_0

    .line 230
    move v1, p2

    .line 234
    :cond_0
    if-eq v1, p2, :cond_2

    .line 235
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveIndex:I

    if-eq v2, v1, :cond_3

    .line 236
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveTime:J

    .line 237
    iput v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveIndex:I

    .line 238
    move v1, p2

    .line 245
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->moveThumbnail(III)V

    .line 247
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 248
    iget v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    .line 250
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, movingTarget:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->invalidate()V

    .line 254
    return v1

    .line 240
    .end local v0           #movingTarget:Landroid/view/View;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mLastestMoveTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 241
    move v1, p2

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 152
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 147
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildCount()I

    move-result v0

    .line 72
    .local v0, count:I
    if-nez v0, :cond_1

    .line 82
    :cond_0
    return-void

    .line 75
    :cond_1
    sub-int v2, p4, p2

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginLeft:I

    .line 76
    sub-int v2, p5, p3

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    iget v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginTop:I

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 80
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->setMeasuredDimension(II)V

    .line 53
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->measureChildren(II)V

    .line 56
    return-void
.end method

.method public resetThumbnailLayout(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 289
    return-void
.end method

.method public startMovingAnimation(III)V
    .locals 11
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 176
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 178
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    if-ge p2, p3, :cond_0

    move v0, v5

    .line 179
    .local v0, direction:I
    :goto_0
    const/4 v4, 0x0

    .line 180
    .local v4, v:Landroid/view/View;
    move v1, p2

    .local v1, i:I
    :goto_1
    if-eq v1, p3, :cond_1

    .line 181
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    add-int v7, v1, v0

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildHeight:I

    add-int v8, v1, v0

    invoke-direct {p0, v8}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v8

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v9

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v6, v10, v7, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 184
    .local v3, tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    int-to-long v6, p1

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 185
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    sub-int v6, v1, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x14

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 189
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    add-int/2addr v1, v0

    goto :goto_1

    .line 178
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v3           #tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 192
    .restart local v0       #direction:I
    .restart local v1       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    if-eqz v4, :cond_2

    .line 193
    iput-boolean v5, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    new-instance v6, Lcom/miui/home/launcher/ThumbnailScreen$1;

    invoke-direct {v6, p0}, Lcom/miui/home/launcher/ThumbnailScreen$1;-><init>(Lcom/miui/home/launcher/ThumbnailScreen;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    :cond_2
    return-void
.end method

.method public startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .parameter "entering"
    .parameter "duration"
    .parameter "focusedIndex"
    .parameter "animationListener"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 105
    .local v11, interpolator:Landroid/view/animation/Interpolator;
    :goto_0
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    .line 106
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailScreen;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mChildWidth:I

    iget v6, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mScreenMarginLeft:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    int-to-float v12, v4

    .line 110
    .local v12, scaleRatio:F
    if-eqz p1, :cond_1

    move v2, v12

    .line 111
    .local v2, fromRatio:F
    :goto_1
    if-eqz p1, :cond_2

    const/high16 v3, 0x3f80

    .line 112
    .local v3, toRatio:F
    :goto_2
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    move v4, v2

    move v5, v3

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 118
    .local v1, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v9, v4, v5

    .line 119
    .local v9, deltaX:F
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v10, v4, v12

    .line 120
    .local v10, deltaY:F
    if-eqz p1, :cond_3

    .line 121
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v13, v9, v4, v10, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 128
    .local v13, translateAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_3
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v8, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 129
    .local v8, animation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    invoke-virtual {v8, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    move/from16 v0, p2

    int-to-long v4, v0

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 132
    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    invoke-virtual {p0, v8}, Lcom/miui/home/launcher/ThumbnailScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 136
    return-void

    .line 102
    .end local v1           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v2           #fromRatio:F
    .end local v3           #toRatio:F
    .end local v8           #animation:Landroid/view/animation/AnimationSet;
    .end local v9           #deltaX:F
    .end local v10           #deltaY:F
    .end local v11           #interpolator:Landroid/view/animation/Interpolator;
    .end local v12           #scaleRatio:F
    .end local v13           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    .line 110
    .restart local v11       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v12       #scaleRatio:F
    :cond_1
    const/high16 v2, 0x3f80

    goto :goto_1

    .restart local v2       #fromRatio:F
    :cond_2
    move v3, v12

    .line 111
    goto :goto_2

    .line 124
    .restart local v1       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .restart local v3       #toRatio:F
    .restart local v9       #deltaX:F
    .restart local v10       #deltaY:F
    :cond_3
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v13, v4, v9, v5, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v13       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    goto :goto_3
.end method
