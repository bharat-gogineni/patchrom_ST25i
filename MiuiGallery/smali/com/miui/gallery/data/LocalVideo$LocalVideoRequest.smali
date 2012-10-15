.class public Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;
.super Lcom/miui/gallery/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V
    .locals 1
    .parameter "application"
    .parameter "item"
    .parameter "type"

    .prologue
    .line 173
    invoke-static {p3}, Lcom/miui/gallery/util/GalleryUtils;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/data/ImageCacheRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;II)V

    .line 174
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/miui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 180
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/miui/gallery/data/ImageCacheRequest;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
