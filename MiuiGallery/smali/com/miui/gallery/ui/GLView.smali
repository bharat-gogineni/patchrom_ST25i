.class public Lcom/miui/gallery/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# instance fields
.field private mAnimation:Lcom/miui/gallery/anim/CanvasAnimation;

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/miui/gallery/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/miui/gallery/ui/GLView;

.field private mRoot:Lcom/miui/gallery/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 63
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    .line 65
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mMeasuredWidth:I

    .line 66
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mMeasuredHeight:I

    .line 68
    iput v2, p0, Lcom/miui/gallery/ui/GLView;->mLastWidthSpec:I

    .line 69
    iput v2, p0, Lcom/miui/gallery/ui/GLView;->mLastHeightSpec:I

    .line 71
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mScrollY:I

    .line 72
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mScrollX:I

    .line 73
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mScrollHeight:I

    .line 74
    iput v1, p0, Lcom/miui/gallery/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 326
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 328
    .local v0, sizeChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    return v0

    .line 326
    .end local v0           #sizeChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/miui/gallery/ui/GLView;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 133
    iget-object v0, p1, Lcom/miui/gallery/ui/GLView;->mParent:Lcom/miui/gallery/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iput-object p0, p1, Lcom/miui/gallery/ui/GLView;->mParent:Lcom/miui/gallery/ui/GLView;

    .line 143
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/ui/GLView;->onAttachToRoot(Lcom/miui/gallery/ui/GLRoot;)V

    .line 146
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/miui/gallery/ui/GLRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mParent:Lcom/miui/gallery/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/GLView;->onAttachToRoot(Lcom/miui/gallery/ui/GLRoot;)V

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mParent:Lcom/miui/gallery/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->onDetachFromRoot()V

    .line 115
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 271
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 272
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 273
    .local v10, action:I
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    if-eqz v0, :cond_0

    .line 274
    if-nez v10, :cond_2

    .line 275
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 276
    .local v1, cancel:Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 277
    iget-object v4, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/miui/gallery/ui/GLView;Z)Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    .line 288
    .end local v1           #cancel:Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, i:I
    :goto_0
    if-ltz v11, :cond_6

    .line 291
    invoke-virtual {p0, v11}, Lcom/miui/gallery/ui/GLView;->getComponent(I)Lcom/miui/gallery/ui/GLView;

    move-result-object v8

    .line 292
    .local v8, component:Lcom/miui/gallery/ui/GLView;
    invoke-virtual {v8}, Lcom/miui/gallery/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 280
    .end local v8           #component:Lcom/miui/gallery/ui/GLView;
    .end local v11           #i:I
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/miui/gallery/ui/GLView;Z)Z

    .line 281
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 283
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    .line 285
    :cond_4
    const/4 v0, 0x1

    .line 299
    :goto_1
    return v0

    .line 293
    .restart local v8       #component:Lcom/miui/gallery/ui/GLView;
    .restart local v11       #i:I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/miui/gallery/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iput-object v8, p0, Lcom/miui/gallery/ui/GLView;->mMotionTarget:Lcom/miui/gallery/ui/GLView;

    .line 295
    const/4 v0, 0x1

    goto :goto_1

    .line 299
    .end local v8           #component:Lcom/miui/gallery/ui/GLView;
    .end local v11           #i:I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/miui/gallery/ui/GLView;Z)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "component"
    .parameter "checkBounds"

    .prologue
    .line 255
    iget-object v1, p4, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 256
    .local v1, rect:Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 257
    .local v0, left:I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 258
    .local v2, top:I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 260
    invoke-virtual {p4, p1}, Lcom/miui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 262
    const/4 v3, 0x1

    .line 266
    :goto_0
    return v3

    .line 264
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 266
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .parameter "descendant"
    .parameter "out"

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, xoffset:I
    const/4 v3, 0x0

    .line 376
    .local v3, yoffset:I
    move-object v1, p1

    .line 377
    .local v1, view:Lcom/miui/gallery/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 378
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 386
    :goto_1
    return v4

    .line 379
    :cond_0
    iget-object v0, v1, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 380
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 381
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 382
    iget-object v1, v1, Lcom/miui/gallery/ui/GLView;->mParent:Lcom/miui/gallery/ui/GLView;

    .line 383
    goto :goto_0

    .line 384
    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/miui/gallery/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 386
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/miui/gallery/ui/GLView;
    .locals 1
    .parameter "index"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/miui/gallery/ui/GLRoot;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 198
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->requestRender()V

    .line 199
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/GLView;->setBounds(IIII)Z

    move-result v6

    .line 316
    .local v6, sizeChanged:Z
    if-eqz v6, :cond_1

    .line 317
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    .line 318
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/GLView;->onLayout(ZIIII)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 320
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    .line 321
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/GLView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 416
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 333
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 347
    :cond_0
    return-void

    .line 338
    :cond_1
    iput p1, p0, Lcom/miui/gallery/ui/GLView;->mLastWidthSpec:I

    .line 339
    iput p2, p0, Lcom/miui/gallery/ui/GLView;->mLastHeightSpec:I

    .line 341
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/GLView;->onMeasure(II)V

    .line 343
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/miui/gallery/ui/GLRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    .line 400
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLView;->getComponent(I)Lcom/miui/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/GLView;->onAttachToRoot(Lcom/miui/gallery/ui/GLRoot;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 407
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLView;->getComponent(I)Lcom/miui/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->onDetachFromRoot()V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    .line 410
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 368
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 350
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 390
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 391
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/GLView;->getComponent(I)Lcom/miui/gallery/ui/GLView;

    move-result-object v0

    .line 392
    .local v0, child:Lcom/miui/gallery/ui/GLView;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/GLView;->onVisibilityChanged(I)V

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v0           #child:Lcom/miui/gallery/ui/GLView;
    :cond_1
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/GLView;->renderBackground(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/GLView;->getComponent(I)Lcom/miui/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/miui/gallery/ui/GLView;->renderChild(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/GLView;)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 223
    return-void
.end method

.method protected renderChild(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/GLView;)V
    .locals 6
    .parameter "canvas"
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-virtual {p2}, Lcom/miui/gallery/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/miui/gallery/ui/GLView;->mAnimation:Lcom/miui/gallery/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v3, p2, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/miui/gallery/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 230
    .local v1, xoffset:I
    iget-object v3, p2, Lcom/miui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/miui/gallery/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 232
    .local v2, yoffset:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4, v5}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 234
    iget-object v0, p2, Lcom/miui/gallery/ui/GLView;->mAnimation:Lcom/miui/gallery/anim/CanvasAnimation;

    .line 235
    .local v0, anim:Lcom/miui/gallery/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/miui/gallery/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 237
    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 242
    :goto_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/anim/CanvasAnimation;->apply(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 244
    :cond_1
    invoke-virtual {p2, p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 245
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 246
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4, v5}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 240
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/miui/gallery/ui/GLView;->mAnimation:Lcom/miui/gallery/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    if-nez p1, :cond_1

    .line 92
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    .line 96
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/GLView;->onVisibilityChanged(I)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/miui/gallery/ui/GLView;->mRoot:Lcom/miui/gallery/ui/GLRoot;

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 422
    :cond_0
    return-void
.end method
