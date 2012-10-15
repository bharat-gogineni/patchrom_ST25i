.class public Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;,
        Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field protected mContext:Landroid/content/Context;

.field private mCoverBlur:Landroid/graphics/Bitmap;

.field private final mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

.field private final mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field protected mIsActive:Z

.field private final mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

.field protected mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field protected mSize:I

.field private final mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;I)V
    .locals 4
    .parameter "activity"
    .parameter "labelSpec"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .line 50
    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .line 52
    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    .line 53
    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    .line 63
    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    .line 64
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mIsActive:Z

    .line 77
    iput-object p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    .line 78
    iput-object p4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    .line 79
    iput-object p3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 80
    new-array v2, p5, [Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    .line 81
    invoke-interface {p4}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->size()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    .line 83
    new-instance v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$1;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 91
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 92
    check-cast p1, Landroid/content/Context;

    .end local p1
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 94
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .local v0, blurDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mCoverBlur:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$206(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/SelectionDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mCoverBlur:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private cancelImagesInSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 201
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v1, v2, v3

    .line 203
    .local v1, items:Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    iget-object v0, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 204
    .local v0, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 185
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 187
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 188
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->cancelImagesInSlot(I)V

    .line 189
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->cancelImagesInSlot(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    .line 209
    .local v0, data:[Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    array-length v3, v0

    rem-int v1, p1, v3

    .line 210
    .local v1, index:I
    aget-object v2, v0, v1

    .line 211
    .local v2, original:Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    if-eqz v2, :cond_0

    .line 212
    aput-object v4, v0, v1

    .line 213
    iget-object v3, v2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, v2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->recycle()V

    .line 215
    iput-object v4, v2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 218
    :cond_0
    return-void
.end method

.method private getMediaSetDataVersion(Lcom/miui/gallery/data/MediaSet;)J
    .locals 2
    .parameter "set"

    .prologue
    .line 221
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method private static identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method private isCoverItemsChanged(I)Z
    .locals 11
    .parameter "slotIndex"

    .prologue
    const/4 v6, 0x1

    .line 251
    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v8, v8

    rem-int v8, p1, v8

    aget-object v4, v7, v8

    .line 252
    .local v4, original:Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v6

    .line 253
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v7, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 255
    .local v0, coverItems:[Lcom/miui/gallery/data/MediaItem;
    iget-object v5, v4, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 257
    .local v5, orignalComboItem:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getItemCount()I

    move-result v7

    array-length v8, v0

    if-ne v7, v8, :cond_0

    .line 258
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v0

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 259
    invoke-virtual {v5, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 260
    .local v1, g:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v7

    aget-object v9, v0, v2

    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v1           #g:Lcom/miui/gallery/data/MediaItem;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 11
    .parameter "slotIndex"

    .prologue
    const/4 v10, 0x0

    .line 227
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v9

    .line 229
    .local v9, set:Lcom/miui/gallery/data/MediaSet;
    new-instance v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    invoke-direct {v8, v10}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$1;)V

    .line 230
    .local v8, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v3

    .line 231
    .local v3, coverItems:[Lcom/miui/gallery/data/MediaItem;
    array-length v0, v3

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 233
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v4, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumCoverWidth:I

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v5, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumSlotHeight:I

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v6, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumCoverGap:I

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;I[Lcom/miui/gallery/data/MediaItem;III)V

    iput-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 235
    new-instance v7, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getWidth()I

    move-result v1

    iget-object v2, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->getHeight()I

    move-result v2

    invoke-direct {v7, v0, v1, v2}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 237
    .local v7, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    iget-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 239
    invoke-static {v9}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v0

    iput v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->cacheFlag:I

    .line 240
    invoke-static {v9}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v0

    iput v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->cacheStatus:I

    .line 241
    if-nez v9, :cond_1

    move-object v0, v10

    :goto_1
    iput-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 243
    new-instance v0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;-><init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;I)V

    iput-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    .line 244
    new-instance v0, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContext:Landroid/content/Context;

    const v2, 0x7f02000d

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v4, v4, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumSlotWidth:I

    array-length v5, v3

    rsub-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v6, v6, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumCoverGap:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v5, v5, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumBlurHeight:I

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;-><init>(Landroid/content/Context;III)V

    iput-object v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    .line 246
    invoke-direct {p0, v9}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->getMediaSetDataVersion(Lcom/miui/gallery/data/MediaSet;)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->setDataVersion:J

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aput-object v8, v0, v1

    .line 248
    return-void

    .line 231
    .end local v7           #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    .restart local v7       #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    :cond_1
    invoke-virtual {v9}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    goto :goto_1
.end method

.method private requestImagesInSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 194
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    if-lt p1, v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v1, v2, v3

    .line 196
    .local v1, setItem:Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    iget-object v0, v1, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 197
    .local v0, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->requestImage()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 176
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 178
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->requestImagesInSlot(I)V

    .line 180
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->requestImagesInSlot(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 122
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 125
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 126
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->freeSlotContent(I)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->setActiveWindow(II)V

    .line 129
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 130
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->prepareSlotContent(I)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 133
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 134
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->freeSlotContent(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 137
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->freeSlotContent(I)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->setActiveWindow(II)V

    .line 140
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 141
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->prepareSlotContent(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 143
    :cond_6
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 144
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->prepareSlotContent(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 148
    :cond_7
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .line 149
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 314
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    .line 315
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    .local v0, i:I
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 316
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v4, v4

    rem-int v4, v0, v4

    aget-object v3, v3, v4

    iget-object v1, v3, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 317
    .local v1, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->requestImage()V

    .line 318
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v1           #item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    :cond_1
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    if-nez v3, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->requestNonactiveImages()V

    .line 325
    :goto_1
    return-void

    .line 323
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateSlotContent(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    .line 268
    .local v0, data:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    array-length v6, v0

    rem-int v2, p1, v6

    .line 269
    .local v2, pos:I
    aget-object v1, v0, v2

    .line 271
    .local v1, original:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->isCoverItemsChanged(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    .line 273
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->cacheFlag:I

    .line 274
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->cacheStatus:I

    .line 275
    if-nez v3, :cond_1

    :goto_0
    iput-object v5, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 276
    iget-object v5, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    check-cast v5, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;

    invoke-virtual {v5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->updateContent()Z

    .line 277
    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    invoke-interface {v5}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;->onContentInvalidated()V

    .line 292
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    :goto_1
    return-void

    .line 275
    .restart local v3       #set:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .line 281
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->prepareSlotContent(I)V

    .line 282
    aget-object v4, v0, v2

    .line 284
    .local v4, update:Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->isActiveSlot(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 285
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    invoke-interface {v6, p1, v1, v4}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;->onWindowContentChanged(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 288
    :cond_3
    iget-object v6, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    if-eqz v6, :cond_0

    .line 289
    iget-object v6, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->recycle()V

    .line 290
    iput-object v5, v1, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    goto :goto_1
.end method


# virtual methods
.method public freeAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 617
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 618
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->freeSlotContent(I)V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setContentWindow(II)V

    .line 622
    return-void
.end method

.method public get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->isActiveSlot(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected handleSlotChanged(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 296
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    if-lt p1, v2, :cond_2

    .line 297
    :cond_0
    const-string v2, "AlbumSetSlidingWindowBase"

    const-string v3, "invalid update: %s is outside (%s, %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->updateSlotContent(I)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->isActiveSlot(I)Z

    move-result v0

    .line 304
    .local v0, isActiveSlot:Z
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    .line 305
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    .line 306
    .local v1, item:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->requestImage()V

    .line 307
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveRequestCount:I

    goto :goto_0
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 118
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 608
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mIsActive:Z

    .line 610
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 611
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->freeSlotContent(I)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 625
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mIsActive:Z

    .line 626
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 627
    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->prepareSlotContent(I)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->updateAllImageRequests()V

    .line 630
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    if-gt p1, p2, :cond_1

    sub-int v3, p2, p1

    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v6, v6

    if-gt v3, v6, :cond_1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    if-gt p2, v3, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "start = %s, end = %s, length = %s, size = %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget v8, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mData:[Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$MyAlbumSetItem;

    .line 160
    .local v2, data:[Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveStart:I

    .line 161
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mActiveEnd:I

    .line 163
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    array-length v6, v2

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 165
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setContentWindow(II)V

    .line 167
    iget-boolean v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->updateAllImageRequests()V

    .line 168
    :cond_0
    return-void

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #data:[Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;
    :cond_1
    move v3, v5

    .line 153
    goto :goto_0
.end method

.method public setListener(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;

    .line 104
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 100
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSize:I

    return v0
.end method
