.class public abstract Lcom/miui/gallery/ui/AbstractDisplayItem;
.super Lcom/miui/gallery/ui/CoverDisplayItem;
.source "AbstractDisplayItem.java"


# static fields
.field protected static mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapCached:Z

.field protected mCache:Lcom/miui/gallery/common/GalleryCacheManager;

.field protected mContent:Lcom/miui/gallery/ui/Texture;

.field protected mFrameManager:Lcom/miui/gallery/ui/FrameBitmapManager;

.field private mImageRequested:Z

.field protected mMediaItem:Lcom/miui/gallery/data/MediaItem;

.field protected mMediaItems:[Lcom/miui/gallery/data/MediaItem;

.field private mRecycling:Z

.field protected mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/miui/gallery/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ColorTexture;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/MediaItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/ui/CoverDisplayItem;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 36
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 37
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    .line 42
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmapCached:Z

    .line 43
    iput-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCache:Lcom/miui/gallery/common/GalleryCacheManager;

    .line 50
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/ui/AbstractDisplayItem;->init(Lcom/miui/gallery/data/MediaItem;[Lcom/miui/gallery/data/MediaItem;)V

    .line 51
    return-void
.end method

.method public constructor <init>([Lcom/miui/gallery/data/MediaItem;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/miui/gallery/ui/CoverDisplayItem;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 36
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 37
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    .line 42
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmapCached:Z

    .line 43
    iput-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCache:Lcom/miui/gallery/common/GalleryCacheManager;

    .line 54
    invoke-direct {p0, v2, p1}, Lcom/miui/gallery/ui/AbstractDisplayItem;->init(Lcom/miui/gallery/data/MediaItem;[Lcom/miui/gallery/data/MediaItem;)V

    .line 55
    return-void
.end method

.method private getCacheBitmap()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->getMediaItemKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, keyPath:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCache:Lcom/miui/gallery/common/GalleryCacheManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/common/GalleryCacheManager;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 173
    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 174
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmapCached:Z

    .line 177
    :cond_2
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmapCached:Z

    if-eqz v2, :cond_0

    .line 178
    new-instance v1, Lcom/miui/gallery/ui/BitmapTexture;

    iget-object v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 179
    .local v1, texture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v1, v3}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 180
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AbstractDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_0
.end method

.method private inState(I)Z
    .locals 1
    .parameter "states"

    .prologue
    .line 155
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Lcom/miui/gallery/data/MediaItem;[Lcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter "item"
    .parameter "items"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    .line 59
    iput-object p2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    .line 60
    invoke-static {}, Lcom/miui/gallery/common/GalleryCacheManager;->getInstance()Lcom/miui/gallery/common/GalleryCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCache:Lcom/miui/gallery/common/GalleryCacheManager;

    .line 61
    sget-object v0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 62
    invoke-direct {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->getCacheBitmap()V

    .line 63
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 66
    :cond_1
    return-void
.end method

.method private recycleBitmap()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelImageRequest()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 127
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 128
    const/16 v0, 0x8

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 129
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->cancelLoadBitmap()V

    .line 131
    :cond_0
    return-void
.end method

.method protected abstract cancelLoadBitmap()V
.end method

.method public getIdentity()J
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected getMediaItemKeyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestInProgress()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBitmapAvailable(Landroid/graphics/Bitmap;)V
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    .line 146
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method public requestImage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmapCached:Z

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    .line 119
    iget v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 121
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->startLoadBitmap()V

    goto :goto_0
.end method

.method protected abstract startLoadBitmap()V
.end method

.method protected updateContent(Lcom/miui/gallery/ui/Texture;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    .line 186
    return-void
.end method

.method protected updateImage(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "bitmap"
    .parameter "isCancelled"

    .prologue
    const/4 v2, 0x1

    .line 69
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mRecycling:Z

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 74
    iput v2, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 75
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->requestImage()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->recycleBitmap()V

    .line 83
    iput-object p1, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AbstractDisplayItem;->getRotation()I

    move-result v0

    .line 87
    .local v0, rotation:I
    div-int/lit8 v3, v0, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_5

    .line 88
    .local v2, vertical:Z
    :goto_1
    if-eqz v2, :cond_3

    .line 89
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v1, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 90
    .local v1, tmp:I
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v4, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v4, v4, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    iput v4, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    .line 91
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iput v1, v3, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    .line 93
    .end local v1           #tmp:I
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v4, v4, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropWidth:I

    iget-object v5, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget v5, v5, Lcom/miui/gallery/ui/DisplayItem$CropDimension;->cropHeight:I

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/CropUtil;->cropImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    .end local v0           #rotation:I
    .end local v2           #vertical:Z
    :cond_4
    if-nez p1, :cond_6

    const/16 v3, 0x10

    :goto_2
    iput v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mState:I

    .line 97
    iget-object v3, p0, Lcom/miui/gallery/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/AbstractDisplayItem;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    .restart local v0       #rotation:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 96
    .end local v0           #rotation:I
    :cond_6
    const/4 v3, 0x2

    goto :goto_2
.end method
