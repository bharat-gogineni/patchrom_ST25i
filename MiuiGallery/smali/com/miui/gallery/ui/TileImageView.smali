.class public Lcom/miui/gallery/ui/TileImageView;
.super Lcom/miui/gallery/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/TileImageView$1;,
        Lcom/miui/gallery/ui/TileImageView$TileDecoder;,
        Lcom/miui/gallery/ui/TileImageView$TileQueue;,
        Lcom/miui/gallery/ui/TileImageView$Tile;,
        Lcom/miui/gallery/ui/TileImageView$TileUploader;,
        Lcom/miui/gallery/ui/TileImageView$Model;
    }
.end annotation


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

.field protected mCenterX:I

.field protected mCenterY:I

.field private mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/miui/gallery/ui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mThreadPool:Lcom/miui/gallery/util/ThreadPool;

.field private mTileDecoder:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/miui/gallery/ui/TileImageView$TileUploader;

.field private mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 83
    iput v2, p0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    .line 99
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/miui/gallery/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    .line 100
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/miui/gallery/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    .line 101
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/miui/gallery/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    .line 104
    iput v1, p0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    .line 105
    iput v1, p0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 116
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v3}, Lcom/miui/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/miui/gallery/ui/TileImageView;Lcom/miui/gallery/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mTileUploader:Lcom/miui/gallery/ui/TileImageView$TileUploader;

    .line 134
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryContext;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v1, Lcom/miui/gallery/ui/TileImageView$TileDecoder;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/miui/gallery/ui/TileImageView;Lcom/miui/gallery/ui/TileImageView$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    .line 136
    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/TileImageView;III)Lcom/miui/gallery/ui/TileImageView$Tile;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView;->getTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/TileImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/TileImageView;)Lcom/miui/gallery/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method private activateTile(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 467
    invoke-static {p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v0

    .line 468
    .local v0, key:Ljava/lang/Long;
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 469
    .local v1, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    if-eqz v1, :cond_1

    .line 470
    iget v2, v1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 471
    const/4 v2, 0x1

    iput v2, v1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView;->obtainTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v1

    .line 476
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static drawTile(Lcom/miui/gallery/ui/TileImageView$Tile;Lcom/miui/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 6
    .parameter "tile"
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, 0x437e

    const/high16 v3, 0x4000

    .line 555
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/TileImageView$Tile;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 558
    invoke-interface {p1, p0, p2, p3}, Lcom/miui/gallery/ui/GLCanvas;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 559
    const/4 v1, 0x1

    .line 564
    :goto_1
    return v1

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView$Tile;->getParentTile()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    .line 564
    .local v0, parent:Lcom/miui/gallery/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 565
    :cond_1
    iget v1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 566
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 567
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 572
    :goto_2
    iget v1, p0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 573
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 574
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 579
    :goto_3
    move-object p0, v0

    .line 580
    goto :goto_0

    .line 569
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 570
    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 576
    :cond_3
    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 577
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 285
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 286
    .local v9, radians:D
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 287
    .local v16, w:D
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v5, v0

    .line 289
    .local v5, h:D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 290
    .local v3, cos:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 291
    .local v12, sin:D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 293
    .local v18, width:I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 296
    .local v7, height:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v8, v0

    .line 297
    .local v8, left:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v15, v0

    .line 298
    .local v15, top:I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 299
    .local v11, right:I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v2, v0

    .line 302
    .local v2, bottom:I
    const/16 v19, 0xfe

    shl-int v14, v19, p4

    .line 303
    .local v14, size:I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 304
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 308
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "rotation"

    .prologue
    .line 273
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 274
    return-void
.end method

.method private getTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-static {p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView;->makeTileKey(III)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/TileImageView$Tile;

    return-object v0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getWidth()I

    move-result v21

    .line 193
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getHeight()I

    move-result v14

    .line 201
    .local v14, height:I
    const/high16 v3, 0x3f80

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    .line 206
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 208
    .local v4, range:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/miui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 209
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetX:I

    .line 210
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetY:I

    .line 211
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f40

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 219
    .end local v4           #range:Landroid/graphics/Rect;
    .local v13, fromLevel:I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 220
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 222
    .local v12, endLevel:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 223
    .local v4, range:[Landroid/graphics/Rect;
    move v9, v13

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 224
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/miui/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 223
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 211
    .end local v9           #i:I
    .end local v12           #endLevel:I
    .end local v13           #fromLevel:I
    .local v4, range:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    goto :goto_0

    .line 214
    .end local v4           #range:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 215
    .restart local v13       #fromLevel:I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetX:I

    .line 216
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 228
    .local v4, range:[Landroid/graphics/Rect;
    .restart local v9       #i:I
    .restart local v12       #endLevel:I
    :cond_2
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_3

    .line 260
    :goto_2
    return-void

    .line 230
    :cond_3
    monitor-enter p0

    .line 231
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/miui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 240
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/ui/TileImageView$Tile;>;>;"
    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 242
    .local v20, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileLevel:I

    move/from16 v16, v0

    .line 243
    .local v16, level:I
    move/from16 v0, v16

    if-lt v0, v13, :cond_5

    move/from16 v0, v16

    if-ge v0, v12, :cond_5

    sub-int v3, v16, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 245
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/TileImageView;->recycleTile(Lcom/miui/gallery/ui/TileImageView$Tile;)V

    goto :goto_3

    .line 234
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/ui/TileImageView$Tile;>;>;"
    .end local v16           #level:I
    .end local v20           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 250
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/miui/gallery/ui/TileImageView$Tile;>;>;"
    :cond_6
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_9

    .line 251
    const/16 v3, 0xfe

    shl-int v19, v3, v9

    .line 252
    .local v19, size:I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 253
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, y:I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, bottom:I
    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 254
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, x:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, right:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/miui/gallery/ui/TileImageView;->activateTile(III)V

    .line 254
    add-int v22, v22, v19

    goto :goto_6

    .line 253
    :cond_7
    add-int v23, v23, v19

    goto :goto_5

    .line 250
    .end local v18           #right:I
    .end local v22           #x:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 259
    .end local v11           #bottom:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v19           #size:I
    .end local v23           #y:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->invalidate()V

    goto/16 :goto_2
.end method

.method private static makeTileKey(III)Ljava/lang/Long;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    const/16 v6, 0x10

    .line 484
    int-to-long v0, p0

    .line 485
    .local v0, result:J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 486
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized obtainTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v0

    .line 448
    .local v0, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 449
    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 450
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .end local v0           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/gallery/ui/TileImageView$Tile;

    .end local v0           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/gallery/ui/TileImageView$Tile;-><init>(Lcom/miui/gallery/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateBackupTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "backup"

    .prologue
    .line 144
    if-nez p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 151
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    goto :goto_0

    .line 154
    :cond_3
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 406
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 407
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 408
    .local v1, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/TileImageView$Tile;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/TileImageView;->queueForDecode(Lcom/miui/gallery/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 410
    .end local v1           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcom/miui/gallery/ui/TileImageView$Tile;)Z
    .locals 4
    .parameter "tile"

    .prologue
    const/4 v1, 0x0

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget v2, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move v0, v1

    .line 442
    :goto_0
    return v0

    .line 431
    :cond_0
    const/4 v2, 0x4

    iput v2, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 432
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {p1}, Lcom/miui/gallery/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 434
    .local v0, decodeComplete:Z
    monitor-enter p0

    .line 435
    :try_start_1
    iget v2, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 436
    const/16 v2, 0x40

    iput v2, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 437
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 438
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->push(Lcom/miui/gallery/ui/TileImageView$Tile;)Z

    .line 439
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 432
    .end local v0           #decodeComplete:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 441
    .restart local v0       #decodeComplete:Z
    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 442
    monitor-exit p0

    goto :goto_0

    .line 443
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 441
    :cond_2
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/miui/gallery/ui/GLCanvas;IIIFFF)V
    .locals 13
    .parameter "canvas"
    .parameter "tx"
    .parameter "ty"
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    .line 518
    iget-object v6, p0, Lcom/miui/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 519
    .local v6, source:Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/miui/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 520
    .local v7, target:Landroid/graphics/RectF;
    add-float v9, p5, p7

    add-float v10, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v7, v0, v1, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x437e

    const/high16 v12, 0x437e

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/gallery/ui/TileImageView;->getTile(III)Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v8

    .line 524
    .local v8, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    if-eqz v8, :cond_4

    .line 525
    invoke-virtual {v8, p1}, Lcom/miui/gallery/ui/TileImageView$Tile;->isContentValid(Lcom/miui/gallery/ui/GLCanvas;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 526
    iget v9, v8, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 527
    iget v9, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQuota:I

    if-lez v9, :cond_2

    .line 528
    iget v9, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQuota:I

    .line 529
    invoke-virtual {v8, p1}, Lcom/miui/gallery/ui/TileImageView$Tile;->updateContent(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 538
    :cond_0
    :goto_0
    invoke-static {v8, p1, v6, v7}, Lcom/miui/gallery/ui/TileImageView;->drawTile(Lcom/miui/gallery/ui/TileImageView$Tile;Lcom/miui/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 549
    :cond_1
    :goto_1
    return-void

    .line 531
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/gallery/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 533
    :cond_3
    iget v9, v8, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    .line 534
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/gallery/ui/TileImageView;->mRenderComplete:Z

    .line 535
    invoke-virtual {p0, v8}, Lcom/miui/gallery/ui/TileImageView;->queueForDecode(Lcom/miui/gallery/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 540
    :cond_4
    iget-object v9, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v9, :cond_1

    .line 541
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 542
    .local v2, backup:Lcom/miui/gallery/ui/BasicTexture;
    const/16 v9, 0xfe

    shl-int v5, v9, p4

    .line 543
    .local v5, size:I
    invoke-virtual {v2}, Lcom/miui/gallery/ui/BasicTexture;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 544
    .local v3, scaleX:F
    invoke-virtual {v2}, Lcom/miui/gallery/ui/BasicTexture;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 545
    .local v4, scaleY:F
    int-to-float v9, p2

    mul-float/2addr v9, v3

    move/from16 v0, p3

    int-to-float v10, v0

    mul-float/2addr v10, v4

    add-int v11, p2, v5

    int-to-float v11, v11

    mul-float/2addr v11, v3

    add-int v12, p3, v5

    int-to-float v12, v12

    mul-float/2addr v12, v4

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 547
    invoke-interface {p1, v2, v6, v7}, Lcom/miui/gallery/ui/GLCanvas;->drawTexture(Lcom/miui/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    .line 326
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 328
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    .line 329
    iput-object v5, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    .line 332
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 333
    .local v1, texture:Lcom/miui/gallery/ui/TileImageView$Tile;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/TileImageView$Tile;->recycle()V

    goto :goto_0

    .line 335
    .end local v1           #texture:Lcom/miui/gallery/ui/TileImageView$Tile;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 338
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 340
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 341
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v2

    .line 342
    .local v2, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :goto_1
    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView$Tile;->recycle()V

    .line 344
    iget-object v3, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->pop()Lcom/miui/gallery/ui/TileImageView$Tile;

    move-result-object v2

    goto :goto_1

    .line 346
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-direct {p0, v5}, Lcom/miui/gallery/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 348
    return-void

    .line 346
    .end local v2           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 3

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 264
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->clean()V

    .line 266
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/ui/TileImageView$Tile;

    .line 267
    .local v1, tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/TileImageView;->recycleTile(Lcom/miui/gallery/ui/TileImageView$Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tile:Lcom/miui/gallery/ui/TileImageView$Tile;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 269
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageView;->mActiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    monitor-exit p0

    return-void
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 163
    iput v1, p0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    .line 164
    iput v1, p0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    .line 165
    iput v1, p0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    .line 172
    :goto_0
    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView;->invalidate()V

    .line 174
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    .line 169
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    .line 170
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/ui/GLView;->onLayout(ZIIII)V

    .line 180
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 181
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 351
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v2, Lcom/miui/gallery/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/miui/gallery/ui/TileImageView;Lcom/miui/gallery/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;)Lcom/miui/gallery/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mTileDecoder:Lcom/miui/gallery/util/Future;

    .line 354
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_2

    .line 355
    iget v1, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 356
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/TileImageView;->mIsTextureFreed:Z

    .line 357
    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/TileImageView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/TileImageView;->updateBackupTexture(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_2
    return-void
.end method

.method declared-synchronized queueForDecode(Lcom/miui/gallery/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x2

    iput v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 424
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mDecodeQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->push(Lcom/miui/gallery/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/miui/gallery/ui/TileImageView$Tile;)V
    .locals 3
    .parameter "tile"

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mUploadQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->push(Lcom/miui/gallery/ui/TileImageView$Tile;)Z

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mTileUploader:Lcom/miui/gallery/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/miui/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/TileImageView;->mTileUploader:Lcom/miui/gallery/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;)V

    .line 419
    :cond_0
    return-void

    .line 415
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/miui/gallery/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 458
    const/16 v0, 0x20

    iput v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mTileState:I

    .line 462
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 463
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageView;->mRecycledQueue:Lcom/miui/gallery/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TileImageView$TileQueue;->push(Lcom/miui/gallery/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 363
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/gallery/ui/TileImageView;->mUploadQuota:I

    .line 364
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/TileImageView;->mRenderComplete:Z

    .line 366
    move-object/from16 v0, p0

    iget v5, v0, Lcom/miui/gallery/ui/TileImageView;->mLevel:I

    .line 367
    .local v5, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    move/from16 v20, v0

    .line 369
    .local v20, rotation:I
    if-eqz v20, :cond_0

    .line 370
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getWidth()I

    move-result v1

    div-int/lit8 v15, v1, 0x2

    .local v15, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->getHeight()I

    move-result v1

    div-int/lit8 v16, v1, 0x2

    .line 372
    .local v16, centerY:I
    int-to-float v1, v15

    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 373
    move/from16 v0, v20

    int-to-float v1, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9, v10}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    .line 374
    neg-int v1, v15

    int-to-float v1, v1

    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v9}, Lcom/miui/gallery/ui/GLCanvas;->translate(FFF)V

    .line 377
    .end local v15           #centerX:I
    .end local v16           #centerY:I
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/TileImageView;->mLevelCount:I

    if-eq v5, v1, :cond_2

    .line 378
    const/16 v1, 0xfe

    shl-int v21, v1, v5

    .line 379
    .local v21, size:I
    move/from16 v0, v21

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    mul-float v8, v1, v2

    .line 380
    .local v8, length:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 382
    .local v19, r:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .local v4, ty:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetY:I

    int-to-float v1, v1

    move/from16 v0, v17

    int-to-float v2, v0

    mul-float/2addr v2, v8

    add-float v7, v1, v2

    .line 384
    .local v7, y:F
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .local v3, tx:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_1
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetX:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v2, v8

    add-float v6, v1, v2

    .local v6, x:F
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 386
    invoke-virtual/range {v1 .. v8}, Lcom/miui/gallery/ui/TileImageView;->drawTile(Lcom/miui/gallery/ui/GLCanvas;IIIFFF)V

    .line 384
    add-int v3, v3, v21

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 382
    .end local v6           #x:F
    :cond_1
    add-int v4, v4, v21

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 389
    .end local v3           #tx:I
    .end local v4           #ty:I
    .end local v7           #y:F
    .end local v8           #length:F
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v19           #r:Landroid/graphics/Rect;
    .end local v21           #size:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 390
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/ui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/miui/gallery/ui/BitmapTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_3
    if-eqz v20, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 398
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/TileImageView;->mRenderComplete:Z

    if-eqz v1, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v1, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/miui/gallery/ui/TileImageView;->uploadBackgroundTiles(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 403
    :cond_5
    :goto_2
    return-void

    .line 395
    :catchall_0
    move-exception v1

    if-eqz v20, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    :cond_6
    throw v1

    .line 401
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/miui/gallery/ui/TileImageView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/gallery/ui/TileImageView;->mModel:Lcom/miui/gallery/ui/TileImageView$Model;

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 141
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 312
    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    .line 314
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterX:I

    .line 315
    iput p2, p0, Lcom/miui/gallery/ui/TileImageView;->mCenterY:I

    .line 316
    iput p3, p0, Lcom/miui/gallery/ui/TileImageView;->mScale:F

    .line 317
    iput p4, p0, Lcom/miui/gallery/ui/TileImageView;->mRotation:I

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/ui/TileImageView;->layoutTiles(IIFI)V

    .line 319
    invoke-virtual {p0}, Lcom/miui/gallery/ui/TileImageView;->invalidate()V

    .line 320
    const/4 v0, 0x1

    goto :goto_0
.end method
