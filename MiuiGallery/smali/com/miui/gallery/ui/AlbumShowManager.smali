.class public Lcom/miui/gallery/ui/AlbumShowManager;
.super Ljava/lang/Object;
.source "AlbumShowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumShowManager$1;,
        Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;
    }
.end annotation


# static fields
.field private static mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

.field private static mInstance:Lcom/miui/gallery/ui/AlbumShowManager;


# instance fields
.field public itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

.field public itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

.field private mDecodeThreadMain:Ljava/lang/Thread;

.field private mDecodeThreadSub:Ljava/lang/Thread;

.field private mQueue:Lcom/miui/gallery/util/QueueInt;

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mShowDetails:Z

.field private mSlotView:Lcom/miui/gallery/ui/SlotView;

.field private mSortBy:I

.field private mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;

    return-void
.end method

.method private constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v1, v4, [Lcom/miui/gallery/ui/AlbumDisplayItem;

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    .line 43
    const/16 v1, 0x15

    new-array v1, v1, [Lcom/miui/gallery/ui/AlbumDisplayItem;

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    .line 46
    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadMain:Ljava/lang/Thread;

    .line 47
    iput-object v3, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadSub:Ljava/lang/Thread;

    .line 49
    const/16 v1, -0x3e7

    iput v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mShowDetails:Z

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 58
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    new-instance v2, Lcom/miui/gallery/ui/AlbumDisplayItem;

    invoke-direct {v2}, Lcom/miui/gallery/ui/AlbumDisplayItem;-><init>()V

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lcom/miui/gallery/util/QueueInt;

    invoke-direct {v1, v4}, Lcom/miui/gallery/util/QueueInt;-><init>(I)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mQueue:Lcom/miui/gallery/util/QueueInt;

    .line 62
    new-instance v1, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;-><init>(Lcom/miui/gallery/ui/AlbumShowManager;Lcom/miui/gallery/ui/AlbumShowManager$1;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadMain:Ljava/lang/Thread;

    .line 63
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadMain:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    new-instance v1, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;

    invoke-direct {v1, p0, v3}, Lcom/miui/gallery/ui/AlbumShowManager$DecodeThread;-><init>(Lcom/miui/gallery/ui/AlbumShowManager;Lcom/miui/gallery/ui/AlbumShowManager$1;)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadSub:Ljava/lang/Thread;

    .line 65
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mDecodeThreadSub:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 67
    new-instance v1, Lcom/miui/gallery/ui/ResourceTexture;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0200e4

    invoke-direct {v1, v2, v3}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    .line 68
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/ui/AlbumShowManager;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumShowManager;)Lcom/miui/gallery/util/QueueInt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mQueue:Lcom/miui/gallery/util/QueueInt;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumShowManager;Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->decodeInThread(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumShowManager;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumShowManager;->insertBitmapBySlot(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private decodeInThread(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "item"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->getFromCache(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, ret:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumShowManager;->getItemWidth()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/miui/gallery/ui/AlbumShowManager;->decodeMediaItemFile(Lcom/miui/gallery/data/MediaItem;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method private getFromCache(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "curItem"

    .prologue
    .line 165
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryApp;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v1

    .line 166
    .local v1, cacheService:Lcom/miui/gallery/data/ImageCacheService;
    const/4 v4, 0x3

    invoke-virtual {v1, p1, v4}, Lcom/miui/gallery/data/ImageCacheService;->getImageData(Lcom/miui/gallery/data/MediaItem;I)Lcom/miui/gallery/data/ImageCacheService$ImageData;

    move-result-object v2

    .line 167
    .local v2, data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    const/4 v0, 0x0

    .line 169
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 170
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 172
    const/4 v4, 0x0

    iget-object v5, v2, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    iget v6, v2, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v7, v2, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    array-length v7, v7

    iget v8, v2, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v7, v3}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string v4, "ERROR"

    const-string v5, "decode cached failed "

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/ui/AlbumShowManager;
    .locals 2

    .prologue
    .line 367
    const-class v1, Lcom/miui/gallery/ui/AlbumShowManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/AlbumShowManager;
    .locals 3
    .parameter "activity"
    .parameter "slotView"

    .prologue
    .line 356
    const-class v1, Lcom/miui/gallery/ui/AlbumShowManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/ui/AlbumShowManager;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    sput-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;

    .line 362
    :cond_0
    sget-object v2, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/SlotView;

    iput-object v0, v2, Lcom/miui/gallery/ui/AlbumShowManager;->mSlotView:Lcom/miui/gallery/ui/SlotView;

    .line 363
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mInstance:Lcom/miui/gallery/ui/AlbumShowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertBitmapBySlot(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "slotIndex"
    .parameter "aBitmap"

    .prologue
    const/4 v3, 0x2

    .line 258
    rem-int/lit8 v0, p1, 0x40

    .line 259
    .local v0, cacheIndex:I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v2, v0

    .line 261
    .local v1, curItem:Lcom/miui/gallery/ui/AlbumDisplayItem;
    iget v2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    if-eq v2, p1, :cond_1

    .line 263
    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget v2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    if-ne v2, v3, :cond_2

    .line 269
    const-string v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re-insert same id when ready for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/AlbumDisplayItem;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    iget v2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    if-ne v2, v3, :cond_0

    .line 278
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSlotView:Lcom/miui/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SlotView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public cacheAndPrepareShow(ILcom/miui/gallery/data/MediaItem;IIZ)I
    .locals 6
    .parameter "slotIndex"
    .parameter "curItem"
    .parameter "x"
    .parameter "y"
    .parameter "toShow"

    .prologue
    .line 322
    const/4 v2, -0x1

    .line 324
    .local v2, ret:I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->getCacheIndexBySlot(I)I

    move-result v0

    .line 325
    .local v0, cacheIndex:I
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->getShowIndexBySlot(I)I

    move-result v3

    .line 326
    .local v3, showIndex:I
    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v4, v0

    .line 328
    .local v1, renderItem:Lcom/miui/gallery/ui/AlbumDisplayItem;
    iput p3, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->x:I

    .line 329
    iput p4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->y:I

    .line 331
    iget v4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    if-ne v4, p1, :cond_3

    .line 332
    iget v4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    if-nez v4, :cond_1

    .line 333
    const/4 v4, 0x1

    iput v4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    .line 334
    iput-object p2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 335
    move v2, p1

    .line 350
    :goto_0
    iget-object v4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v4, :cond_4

    const/4 p1, -0x2

    .line 352
    .end local p1
    :cond_0
    :goto_1
    return p1

    .line 336
    .restart local p1
    :cond_1
    iget v4, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 337
    if-eqz p5, :cond_2

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aput-object v1, v4, v3

    .line 338
    :cond_2
    const/4 p1, -0x1

    goto :goto_1

    .line 344
    :cond_3
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDisplayItem;->invalidateBitmap()V

    .line 345
    iput p1, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    .line 346
    iput-object p2, v1, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 347
    move v2, p1

    goto :goto_0

    :cond_4
    move p1, v2

    .line 352
    goto :goto_1
.end method

.method public decodeMediaItemFile(Lcom/miui/gallery/data/MediaItem;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "item"
    .parameter "targetSize"

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryApp;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v2

    .line 188
    .local v2, cacheService:Lcom/miui/gallery/data/ImageCacheService;
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    :goto_0
    return-object v4

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 195
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, p2}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    if-nez v1, :cond_2

    .line 202
    const-string v5, "ERROR"

    const-string v6, "decode orig failed "

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/gallery/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 206
    :cond_2
    const/4 v4, 0x1

    invoke-static {v1, p2, v4}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 208
    .local v0, array:[B
    const/4 v4, 0x3

    invoke-virtual {v2, p1, v4, v0}, Lcom/miui/gallery/data/ImageCacheService;->putImageData(Lcom/miui/gallery/data/MediaItem;I[B)V

    move-object v4, v1

    .line 210
    goto :goto_0
.end method

.method public getBlurHeight()I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotUpCoverBlurHeight:I

    return v0
.end method

.method public getCacheIndexBySlot(I)I
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 307
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 308
    rem-int/lit8 v0, p1, 0x40

    .line 309
    .local v0, cacheIndex:I
    return v0

    .line 307
    .end local v0           #cacheIndex:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDetailBackground()Lcom/miui/gallery/ui/ResourceTexture;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mUpCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotDetailFontSize:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/miui/gallery/ui/AlbumShowManager;->mConfig:Lcom/miui/gallery/app/Config$AlbumPageConfig;

    iget-object v0, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    return v0
.end method

.method public getSelectionDrawer()Lcom/miui/gallery/ui/SelectionDrawer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    return-object v0
.end method

.method public getShowIndexBySlot(I)I
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 313
    if-gez p1, :cond_0

    const-string v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the slotIndex is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 315
    rem-int/lit8 v0, p1, 0x15

    .line 316
    .local v0, showIndex:I
    return v0

    .line 314
    .end local v0           #showIndex:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShowTitle(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;
    .locals 3
    .parameter "item"

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string v0, ""

    .line 392
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 379
    iget v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    packed-switch v1, :pswitch_data_0

    .line 389
    :pswitch_0
    const-string v0, ""

    .local v0, title:Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v0           #title:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 382
    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForDisplay()Ljava/lang/String;

    move-result-object v0

    .line 383
    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0

    .line 386
    .end local v0           #title:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/gallery/util/GalleryUtils$FormatDisplaySize;->getDisplaySize(J)Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isActiveCache(I)Z
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->getCacheIndexBySlot(I)I

    move-result v0

    .line 144
    .local v0, cacheIndex:I
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumDisplayItem;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 145
    .local v1, ret:Z
    :goto_0
    return v1

    .line 144
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isShowDetails()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mShowDetails:Z

    return v0
.end method

.method public isShowSize()Z
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCacheToShow(IIZ)V
    .locals 7
    .parameter "slotStart"
    .parameter "slotEnd"
    .parameter "ifDown"

    .prologue
    const/4 v6, 0x0

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, cacheIndex:I
    const/4 v3, 0x0

    .line 288
    .local v3, showIndex:I
    const/4 v4, 0x0

    .line 289
    .local v4, showStart:I
    const/4 v2, 0x0

    .line 290
    .local v2, showEnd:I
    if-eqz p3, :cond_0

    .line 291
    add-int/lit8 v5, p1, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 292
    add-int/lit8 v5, p2, -0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 299
    :goto_0
    move v1, v4

    .local v1, i:I
    :goto_1
    if-gt v1, v2, :cond_1

    .line 300
    rem-int/lit8 v0, v1, 0x40

    .line 301
    rem-int/lit8 v3, v1, 0x15

    .line 302
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v6, v6, v0

    aput-object v6, v5, v3

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v1           #i:I
    :cond_0
    add-int/lit8 v5, p1, -0x3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 296
    add-int/lit8 v5, p2, -0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 304
    .restart local v1       #i:I
    :cond_1
    return-void
.end method

.method public putToQueue(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mQueue:Lcom/miui/gallery/util/QueueInt;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/QueueInt;->put(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetCache()V
    .locals 5

    .prologue
    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumDisplayItem;->invalidateBitmap()V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x15

    if-ge v1, v2, :cond_4

    .line 245
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 243
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayShow:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 247
    .local v0, asse:Z
    :goto_3
    if-nez v0, :cond_1

    .line 248
    const-string v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHY NOT THE STATE IS WAIT for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 246
    .end local v0           #asse:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mQueue:Lcom/miui/gallery/util/QueueInt;

    invoke-virtual {v2}, Lcom/miui/gallery/util/QueueInt;->clear()V

    .line 254
    return-void
.end method

.method public resetCacheItem(Lcom/miui/gallery/data/MediaItem;I)V
    .locals 2
    .parameter "curItem"
    .parameter "slotIndex"

    .prologue
    .line 149
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumShowManager;->getCacheIndexBySlot(I)I

    move-result v0

    .line 151
    .local v0, cacheIndex:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumDisplayItem;->invalidateBitmap()V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/miui/gallery/ui/AlbumDisplayItem;->setCacheItem(Lcom/miui/gallery/data/MediaItem;)V

    .line 153
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->itemArrayCache:[Lcom/miui/gallery/ui/AlbumDisplayItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/miui/gallery/ui/AlbumDisplayItem;->setSlotIndex(I)V

    .line 154
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 158
    return-void
.end method

.method public setSortBy(I)V
    .locals 2
    .parameter "sortBy"

    .prologue
    const/4 v1, 0x1

    .line 396
    iput p1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    .line 397
    iget v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mSortBy:I

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 401
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mShowDetails:Z

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumShowManager;->mShowDetails:Z

    goto :goto_0
.end method
