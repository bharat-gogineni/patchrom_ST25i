.class public Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
.super Landroid/widget/ImageView;
.source "AutoFitImageView.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mCropOutside:Z

.field protected mEmpty:Landroid/graphics/drawable/Drawable;

.field protected mForceLowPriority:Z

.field protected mLoaded:Z

.field protected mMatrixOrientation:I

.field protected mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field protected mRequested:Z

.field protected mSuppressLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mCropOutside:Z

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 25
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    .line 29
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mCropOutside:Z

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 25
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mCropOutside:Z

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 25
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/StorageExplorer/AutoFitImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private fetchThumbnail()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iput-boolean v4, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mRequested:Z

    .line 76
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-nez v6, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    instance-of v6, v6, Lcom/miui/gallery/StorageExplorer/UriMeta;

    if-eqz v6, :cond_2

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->getRawImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingRight:I

    sub-int v3, v6, v7

    .line 83
    .local v3, width:I
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingBottom:I

    sub-int v1, v6, v7

    .line 85
    .local v1, height:I
    mul-int v6, v3, v1

    const v7, 0x9c40

    if-gt v6, v7, :cond_4

    move v2, v4

    .line 90
    .local v2, type:I
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-static {v6, v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, cache:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 92
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget-boolean v7, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mForceLowPriority:Z

    invoke-static {v6, v2, p0, v7}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;ILcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;Z)V

    .line 93
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-static {v6, v2, v5, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    :cond_3
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0           #cache:Landroid/graphics/drawable/Drawable;
    .end local v2           #type:I
    :cond_4
    move v2, v5

    .line 85
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mCropOutside:Z

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    .line 174
    return-void
.end method

.method private updateThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 255
    .end local v0           #current:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    .line 254
    invoke-direct {p0, p1}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget v14, v14, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mOrientation:I

    if-eq v13, v14, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateMatrix()Z

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 199
    .local v8, saveCount:I
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 203
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-virtual {v13}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isVideo()Z

    move-result v13

    if-nez v13, :cond_3

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d00de

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 205
    .local v9, text:Ljava/lang/String;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 206
    .local v7, p:Landroid/graphics/Paint;
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getWidth()I

    move-result v12

    .line 210
    .local v12, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getHeight()I

    move-result v4

    .line 212
    .local v4, height:I
    const/high16 v5, 0x41a0

    .line 213
    .local v5, initSize:F
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    :goto_1
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v13, v13

    int-to-double v15, v12

    const-wide v17, 0x3fe999999999999aL

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_2

    .line 215
    const/high16 v13, 0x3f80

    sub-float/2addr v5, v13

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 218
    :cond_2
    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v4, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13, v14, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 220
    .end local v4           #height:I
    .end local v5           #initSize:F
    .end local v7           #p:Landroid/graphics/Paint;
    .end local v9           #text:Ljava/lang/String;
    .end local v12           #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-virtual {v13}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isVideo()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200e7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 224
    .local v11, videoIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getWidth()I

    move-result v12

    .line 225
    .restart local v12       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getHeight()I

    move-result v4

    .line 226
    .restart local v4       #height:I
    invoke-static {v12, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v2, v13, 0x5

    .line 227
    .local v2, dW:I
    move v1, v2

    .line 228
    .local v1, dH:I
    sub-int v13, v12, v2

    div-int/lit8 v6, v13, 0x2

    .line 229
    .local v6, left:I
    sub-int v13, v4, v1

    div-int/lit8 v10, v13, 0x2

    .line 230
    .local v10, top:I
    add-int v13, v6, v2

    add-int v14, v10, v1

    invoke-virtual {v11, v6, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 186
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateMatrix()Z

    .line 187
    return-void
.end method

.method public onThumbnailReady(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "meta"
    .parameter "drawable"

    .prologue
    .line 237
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView$1;-><init>(Lcom/miui/gallery/StorageExplorer/AutoFitImageView;Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mSuppressLayout:Z

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 181
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 163
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 164
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 167
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->updateMatrix()Z

    .line 168
    return-void
.end method

.method public setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "meta"
    .parameter "empty"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V

    .line 53
    return-void
.end method

.method public setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "meta"
    .parameter "empty"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-ne v0, p1, :cond_0

    .line 57
    iput-boolean p3, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mForceLowPriority:Z

    .line 58
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->fetchThumbnail()V

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 63
    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mEmpty:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    .line 65
    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mRequested:Z

    .line 66
    iput-boolean p3, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mForceLowPriority:Z

    .line 68
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 69
    iput v1, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updateMatrix()Z
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 102
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 103
    .local v7, width:I
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mPaddingBottom:I

    sub-int v3, v8, v9

    .line 104
    .local v3, height:I
    if-lez v7, :cond_0

    if-lez v3, :cond_0

    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 156
    :goto_0
    return v8

    .line 106
    :cond_1
    iget-boolean v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mRequested:Z

    if-nez v8, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->fetchThumbnail()V

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 112
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v2, v8

    .line 116
    .local v2, drawableWidth:F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v1, v8

    .line 117
    .local v1, drawableHeight:F
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    neg-float v9, v2

    div-float/2addr v9, v11

    neg-float v10, v1

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 119
    iget-boolean v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mLoaded:Z

    if-eqz v8, :cond_3

    .line 120
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget v8, v8, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mOrientation:I

    iput v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    .line 125
    iget v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    div-int/lit8 v8, v8, 0x5a

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    .line 126
    int-to-float v8, v7

    div-float v6, v8, v2

    .line 127
    .local v6, scaleWidth:F
    int-to-float v8, v3

    div-float v5, v8, v1

    .line 134
    .local v5, scaleHeight:F
    :goto_1
    iget-boolean v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mCropOutside:Z

    if-eqz v8, :cond_6

    .line 135
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 140
    .local v4, scale:F
    :goto_2
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-virtual {v8}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 141
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 144
    iget v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    if-eqz v8, :cond_3

    .line 148
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mMatrixOrientation:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 153
    .end local v4           #scale:F
    .end local v5           #scaleHeight:F
    .end local v6           #scaleWidth:F
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 154
    iget-object v8, p0, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 156
    .end local v1           #drawableHeight:F
    .end local v2           #drawableWidth:F
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 129
    .restart local v1       #drawableHeight:F
    .restart local v2       #drawableWidth:F
    :cond_5
    int-to-float v8, v3

    div-float v6, v8, v2

    .line 130
    .restart local v6       #scaleWidth:F
    int-to-float v8, v7

    div-float v5, v8, v1

    .restart local v5       #scaleHeight:F
    goto :goto_1

    .line 138
    :cond_6
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .restart local v4       #scale:F
    goto :goto_2
.end method
