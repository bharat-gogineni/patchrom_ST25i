.class public Lcom/miui/gallery/app/SinglePhotoDataAdapter;
.super Lcom/miui/gallery/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/app/PhotoPage$Model;
.implements Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;,
        Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;
    }
.end annotation


# instance fields
.field private mDataListener:Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;

.field private mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcom/miui/gallery/data/MediaItem;

.field private mLargeListener:Lcom/miui/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoView:Lcom/miui/gallery/ui/PhotoView;

.field private mTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/miui/gallery/util/ThreadPool;

.field private mThumbListener:Lcom/miui/gallery/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaItem;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/miui/gallery/ui/TileImageViewAdapter;-><init>()V

    .line 105
    new-instance v0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter$2;-><init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/miui/gallery/util/FutureListener;

    .line 124
    new-instance v0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter$3;-><init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/miui/gallery/util/FutureListener;

    .line 72
    invoke-static {p3}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    .line 73
    invoke-virtual {p3}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 75
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PhotoView;

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    .line 76
    new-instance v0, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter$1;-><init>(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 89
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/SinglePhotoDataAdapter;Lcom/miui/gallery/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/miui/gallery/util/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private destroyDecodeGifImage()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    invoke-virtual {v0}, Lcom/miui/gallery/util/DecodeGifImage;->getFutureTask()Lcom/miui/gallery/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    .line 68
    :cond_0
    return-void
.end method

.method private static isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, -0x1

    .line 141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyItemInvalid()V
    .locals 3

    .prologue
    .line 211
    const-string v1, "SinglePhotoDataAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item is invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;

    invoke-interface {v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;->onItemInvalid()V

    .line 215
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onDecodeLargeComplete(Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->notifyItemInvalid()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p1, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 156
    iget-object v1, p1, Lcom/miui/gallery/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 157
    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/miui/gallery/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->notifyItemInvalid()V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-interface {p1}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    .local v0, backup:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 176
    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    .line 177
    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 179
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reloadThumbnail()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    if-nez v0, :cond_0

    .line 195
    iget-boolean v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/miui/gallery/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->isGifMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Lcom/miui/gallery/util/DecodeGifImage;

    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/miui/gallery/util/DecodeGifImage;-><init>(JLcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/util/DecodeGifImage$GifFrameListener;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDecodeGifImage:Lcom/miui/gallery/util/DecodeGifImage;

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    iget-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/MediaItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/miui/gallery/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyDirty()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->notifyItemInvalid()V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    .line 225
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->reloadThumbnail()V

    goto :goto_0
.end method

.method public onUpdateGifFrame(JLcom/miui/gallery/util/Future;)V
    .locals 4
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p3}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 186
    .local v0, backup:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setBackupImage(Landroid/graphics/Bitmap;II)V

    .line 187
    iget-object v2, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    .line 235
    .local v0, task:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<*>;"
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 237
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 238
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mTask:Lcom/miui/gallery/util/Future;

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->destroyDecodeGifImage()V

    .line 244
    return-void
.end method

.method public previous()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->reloadThumbnail()V

    .line 230
    return-void
.end method

.method public setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 279
    return-void
.end method

.method public setDataListener(Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->mDataListener:Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;

    .line 93
    return-void
.end method
