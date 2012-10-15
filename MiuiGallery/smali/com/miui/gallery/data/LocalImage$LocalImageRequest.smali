.class public Lcom/miui/gallery/data/LocalImage$LocalImageRequest;
.super Lcom/miui/gallery/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V
    .locals 1
    .parameter "application"
    .parameter "item"
    .parameter "type"

    .prologue
    .line 197
    invoke-static {p3}, Lcom/miui/gallery/util/GalleryUtils;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/data/ImageCacheRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;II)V

    .line 198
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 202
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 206
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 210
    .local v5, thumbData:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 212
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :cond_0
    move-object v1, v2

    .line 217
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v5, :cond_1

    .line 218
    invoke-static {p2}, Lcom/miui/gallery/util/GalleryUtils;->getTargetSize(I)I

    move-result v6

    invoke-static {p1, v5, v3, v6}, Lcom/miui/gallery/data/DecodeUtils;->requestDecodeIfBigEnough(Lcom/miui/gallery/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 228
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v5           #thumbData:[B
    :goto_1
    return-object v0

    .line 214
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v5       #thumbData:[B
    :catch_0
    move-exception v4

    .line 215
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v6, "LocalImage"

    const-string v7, "fail to get exif thumb"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .end local v5           #thumbData:[B
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 225
    const/4 v0, 0x0

    goto :goto_1

    .line 228
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Lcom/miui/gallery/util/GalleryUtils;->getTargetSize(I)I

    move-result v7

    invoke-static {p1, v6, v3, v7}, Lcom/miui/gallery/data/DecodeUtils;->requestDecode(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 214
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v5       #thumbData:[B
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/miui/gallery/data/ImageCacheRequest;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
