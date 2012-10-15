.class public Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindowBase.java"

# interfaces
.implements Lcom/miui/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComboImageRequest"
.end annotation

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

.field protected mItems:[Lcom/miui/gallery/data/MediaItem;

.field private mType:I

.field final synthetic this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;Lcom/miui/gallery/app/GalleryApp;[Lcom/miui/gallery/data/MediaItem;I)V
    .locals 0
    .parameter
    .parameter "application"
    .parameter "items"
    .parameter "type"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 476
    iput-object p3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mItems:[Lcom/miui/gallery/data/MediaItem;

    .line 477
    iput p4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mType:I

    .line 478
    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"

    .prologue
    .line 481
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v6, v6

    new-array v1, v6, [Landroid/graphics/Bitmap;

    .line 482
    .local v1, covers:[Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mItems:[Lcom/miui/gallery/data/MediaItem;

    array-length v3, v6

    .line 485
    .local v3, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 486
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mItems:[Lcom/miui/gallery/data/MediaItem;

    aget-object v5, v6, v2

    .line 488
    .local v5, thisItem:Lcom/miui/gallery/data/MediaItem;
    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->mType:I

    invoke-static {v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->decodeMediaItem(Lcom/miui/gallery/data/MediaItem;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    .local v0, cover:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getCoverWidth()I

    move-result v6

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getHeight()I

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/miui/gallery/util/CropUtil;->cropImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v2

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v0           #cover:Landroid/graphics/Bitmap;
    .end local v5           #thisItem:Lcom/miui/gallery/data/MediaItem;
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    iget-object v6, v6, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mCoverBlur:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$800(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getCoverWidth()I

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->this$1:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->mCoverGap:I
    invoke-static {v8}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->access$900(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;)I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v1, v6, v7, v8, v9}, Lcom/miui/gallery/common/BitmapUtils;->mergeCoversByGap([Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 493
    .local v4, targetBitmap:Landroid/graphics/Bitmap;
    return-object v4
.end method

.method public bridge synthetic run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem$ComboImageRequest;->run(Lcom/miui/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
