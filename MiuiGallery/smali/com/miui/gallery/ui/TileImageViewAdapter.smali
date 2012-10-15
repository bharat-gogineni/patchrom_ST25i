.class public Lcom/miui/gallery/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/TileImageView$Model;


# instance fields
.field protected mBackupImage:Landroid/graphics/Bitmap;

.field protected mFailedToLoad:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private final mIntersectRect:Landroid/graphics/Rect;

.field protected mLevelCount:I

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mRegionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "backup"
    .parameter "regionDecoder"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 44
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 46
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 47
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 48
    invoke-direct {p0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    .line 49
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public declared-synchronized getTile(IIII)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_1

    move-object v0, v5

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 86
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 87
    .local v4, region:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 88
    .local v2, intersectRect:Landroid/graphics/Rect;
    shl-int v6, p4, p1

    add-int/2addr v6, p2

    shl-int v7, p4, p1

    add-int/2addr v7, p3

    invoke-virtual {v4, p2, p3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    iget v9, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 94
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 97
    shl-int v6, v10, p1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    iget-object v7, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    iget-object v6, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    if-nez v0, :cond_2

    .line 111
    const-string v6, "TileImageViewAdapter"

    const-string v7, "fail in decoding region"

    invoke-static {v6, v7}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v5

    .line 112
    goto :goto_0

    .line 104
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    .end local v2           #intersectRect:Landroid/graphics/Rect;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #region:Landroid/graphics/Rect;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 115
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #intersectRect:Landroid/graphics/Rect;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #region:Landroid/graphics/Rect;
    :cond_2
    :try_start_6
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 116
    .local v5, tile:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    shr-int/2addr v6, p1

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    shr-int/2addr v7, p1

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v5

    .line 121
    goto :goto_0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mFailedToLoad:Z

    return v0
.end method

.method public declared-synchronized setBackupImage(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "backup"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 62
    iput p2, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 63
    iput p3, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFailedToLoad()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 146
    return-void
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageWidth:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mImageHeight:I

    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mLevelCount:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/TileImageViewAdapter;->mFailedToLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
