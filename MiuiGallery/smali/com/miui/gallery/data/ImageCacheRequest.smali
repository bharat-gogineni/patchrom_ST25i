.class abstract Lcom/miui/gallery/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/miui/gallery/app/GalleryApp;

.field protected mItem:Lcom/miui/gallery/data/MediaItem;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;II)V
    .locals 0
    .parameter "application"
    .parameter "item"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 41
    iput-object p2, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    .line 42
    iput p3, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    .line 43
    iput p4, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mTargetSize:I

    .line 44
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v7, v13, :cond_1

    const-string v7, "THUMB"

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, debugTag:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryApp;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v2

    .line 51
    .local v2, cacheService:Lcom/miui/gallery/data/ImageCacheService;
    iget-object v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    iget v9, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v7, v9}, Lcom/miui/gallery/data/ImageCacheService;->getImageData(Lcom/miui/gallery/data/MediaItem;I)Lcom/miui/gallery/data/ImageCacheService$ImageData;

    move-result-object v3

    .line 52
    .local v3, data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v1, v8

    .line 106
    :cond_0
    :goto_1
    return-object v1

    .line 47
    .end local v2           #cacheService:Lcom/miui/gallery/data/ImageCacheService;
    .end local v3           #data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .end local v4           #debugTag:Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v7, v10, :cond_2

    const-string v7, "MICROTHUMB"

    goto :goto_0

    :cond_2
    const-string v7, "?"

    goto :goto_0

    .line 54
    .restart local v2       #cacheService:Lcom/miui/gallery/data/ImageCacheService;
    .restart local v3       #data:Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .restart local v4       #debugTag:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 55
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    iget-object v7, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    iget v8, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    iget-object v9, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mData:[B

    array-length v9, v9

    iget v10, v3, Lcom/miui/gallery/data/ImageCacheService$ImageData;->mOffset:I

    sub-int/2addr v9, v10

    invoke-static {p1, v7, v8, v9, v6}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    const-string v7, "ImageCacheRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode cached failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v7}, Lcom/miui/gallery/data/ImageCacheRequest;->onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 65
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v1, v8

    goto :goto_1

    .line 67
    :cond_5
    if-nez v1, :cond_6

    .line 68
    const-string v7, "ImageCacheRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decode orig failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v8

    .line 69
    goto :goto_1

    .line 72
    :cond_6
    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-eq v7, v10, :cond_7

    .line 73
    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v1, v7, v13}, Lcom/miui/gallery/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    :cond_7
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v1, v8

    goto :goto_1

    .line 79
    :cond_8
    const/4 v5, 0x1

    .line 81
    .local v5, fShouldStoreInCache:Z
    iget v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    if-ne v7, v13, :cond_a

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v9

    if-ge v7, v9, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenHeightPixel()I

    move-result v9

    if-ge v7, v9, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaItem;->getWidth()I

    move-result v9

    if-ne v7, v9, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v9, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaItem;->getHeight()I

    move-result v9

    if-ne v7, v9, :cond_b

    .line 91
    :cond_9
    const/4 v5, 0x1

    .line 100
    :cond_a
    :goto_2
    if-eqz v5, :cond_0

    .line 101
    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 102
    .local v0, array:[B
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v1, v8

    goto/16 :goto_1

    .line 93
    .end local v0           #array:[B
    :cond_b
    const-string v7, "ImageCacheRequest"

    const-string v9, "test bitmap is too small to save in the cache: %d * %d"

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v5, 0x0

    goto :goto_2

    .line 104
    .restart local v0       #array:[B
    :cond_c
    iget-object v7, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    iget v8, p0, Lcom/miui/gallery/data/ImageCacheRequest;->mType:I

    invoke-virtual {v2, v7, v8, v0}, Lcom/miui/gallery/data/ImageCacheService;->putImageData(Lcom/miui/gallery/data/MediaItem;I[B)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/ImageCacheRequest;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
