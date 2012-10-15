.class public Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
.super Lcom/miui/gallery/ui/AbstractDisplayItem;
.source "AlbumSetSlidingWindowBase.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/ui/AbstractDisplayItem;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCoverGap:I

.field private final mCropHeight:I

.field private final mCropWidth:I

.field private mFuture:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaType:I

.field private final mSlotIndex:I

.field private mWaitLoadingDisplayed:Z

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;I[Lcom/miui/gallery/data/MediaItem;III)V
    .locals 1
    .parameter
    .parameter "slotIndex"
    .parameter "items"
    .parameter "cropWidth"
    .parameter "cropHeight"
    .parameter "coverGap"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    .line 340
    invoke-direct {p0, p3}, Lcom/miui/gallery/ui/AbstractDisplayItem;-><init>([Lcom/miui/gallery/data/MediaItem;)V

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mState:I

    .line 342
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mSlotIndex:I

    .line 344
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaType:I

    .line 345
    iput p4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCropWidth:I

    .line 346
    iput p5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCropHeight:I

    .line 347
    iput p6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCoverGap:I

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->onLoadBitmapDone()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCoverGap:I

    return v0
.end method

.method private onLoadBitmapDone()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 509
    .local v0, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    .line 510
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isCancelled()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    .line 511
    return-void
.end method


# virtual methods
.method public cancelLoadBitmap()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 500
    return-void
.end method

.method public getCoverWidth()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCropWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCropHeight:I

    return v0
.end method

.method public getIdentity()J
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aget-object v0, v0, v1

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

.method public getItemCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v0, v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/miui/gallery/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 359
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected getMediaItemKeyPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 383
    :cond_0
    const/4 v2, 0x0

    .line 391
    :goto_0
    return-object v2

    .line 386
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, comboStr:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRotation()I
    .locals 3

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, rotation:I
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v0

    .line 377
    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 519
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCropWidth:I

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCoverGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x1

    .line 396
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->isActiveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$206(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)I

    .line 398
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$200(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #calls: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->requestNonactiveImages()V
    invoke-static {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$300(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)V

    .line 401
    :cond_0
    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getMediaItemKeyPath()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCache:Lcom/miui/gallery/common/GalleryCacheManager;

    invoke-virtual {v2, v0, p1}, Lcom/miui/gallery/common/GalleryCacheManager;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 404
    new-instance v1, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v1, p1, v4}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 405
    .local v1, texture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/BitmapTexture;->setThrottled(Z)V

    .line 407
    iget-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mWaitLoadingDisplayed:Z

    if-eqz v2, :cond_2

    .line 408
    new-instance v2, Lcom/miui/gallery/ui/FadeInTexture;

    const v3, -0xddddde

    invoke-direct {v2, v3, v1}, Lcom/miui/gallery/ui/FadeInTexture;-><init>(ILcom/miui/gallery/ui/BasicTexture;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    if-eqz v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    iget-object v2, v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    invoke-interface {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;->onContentInvalidated()V

    .line 416
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #texture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_1
    return-void

    .line 410
    .restart local v0       #path:Ljava/lang/String;
    .restart local v1       #texture:Lcom/miui/gallery/ui/BitmapTexture;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->updateContent(Lcom/miui/gallery/ui/Texture;)V

    goto :goto_0
.end method

.method public onFutureDone(Lcom/miui/gallery/util/Future;)V
    .locals 3
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
    .line 504
    .local p1, future:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$1000(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$1000(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/miui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 505
    return-void
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 17
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getWidth()I

    move-result v4

    .line 422
    .local v4, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    move-result-object v1

    iget v5, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumSlotHeight:I

    .line 425
    .local v5, height:I
    const/4 v8, 0x0

    .line 426
    .local v8, sourceType:I
    const/4 v14, 0x0

    .line 427
    .local v14, cacheFlag:I
    const/4 v15, 0x0

    .line 428
    .local v15, cacheStatus:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$500(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mSlotIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$500(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v16, v1, v2

    .line 430
    .local v16, set:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    if-nez v16, :cond_0

    .line 431
    const-string v1, "AlbumSetSlidingWindowBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x0

    .line 451
    :goto_0
    return v1

    .line 435
    :cond_0
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 436
    .local v7, path:Lcom/miui/gallery/data/Path;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$600(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/SelectionDrawer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getRotation()I

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaType:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x2

    if-ne v14, v2, :cond_2

    const/4 v12, 0x1

    :goto_1
    const/4 v2, 0x2

    if-ne v14, v2, :cond_3

    const/4 v2, 0x3

    if-eq v15, v2, :cond_3

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v13}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    sget-object v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    if-ne v1, v2, :cond_1

    .line 444
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mWaitLoadingDisplayed:Z

    .line 447
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    instance-of v1, v1, Lcom/miui/gallery/ui/FadeInTexture;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    check-cast v1, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const/4 v1, 0x2

    goto :goto_0

    .line 436
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 451
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mMediaItems:[Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;Lcom/miui/gallery/app/GalleryApp;[Lcom/miui/gallery/data/MediaItem;I)V

    return-object v0
.end method

.method public startLoadBitmap()V
    .locals 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mBitmapCached:Z

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;
    invoke-static {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$700(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mFuture:Lcom/miui/gallery/util/Future;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    const-string v0, "GalleryDisplayItem(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
