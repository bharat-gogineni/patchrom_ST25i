.class public Lcom/miui/gallery/ui/HomeCameraSlidingWindow;
.super Lcom/miui/gallery/ui/HomeSlidingWindowBase;
.source "HomeCameraSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    }
.end annotation


# instance fields
.field private final mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

.field private final mSource:Lcom/miui/gallery/ui/HomeCameraView$Model;

.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/HomeCameraView$Model;ILcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 6
    .parameter "activity"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"
    .parameter "spec"

    .prologue
    .line 21
    const v4, 0x7f0200c9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;IILcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 22
    invoke-interface {p3, p0}, Lcom/miui/gallery/ui/HomeCameraView$Model;->setModelListener(Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;)V

    .line 23
    iput-object p3, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeCameraView$Model;

    .line 24
    new-array v0, p4, [Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iput-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    .line 25
    iput-object p5, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 26
    return-void
.end method

.method private updateSlotContent(I)V
    .locals 9
    .parameter "slotIndex"

    .prologue
    .line 76
    iget-object v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeCameraView$Model;

    invoke-interface {v7, p1}, Lcom/miui/gallery/ui/HomeCameraView$Model;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    .line 77
    .local v4, item:Lcom/miui/gallery/data/MediaItem;
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    .line 78
    .local v1, data:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    array-length v7, v1

    rem-int v2, p1, v7

    .line 79
    .local v2, index:I
    aget-object v5, v1, v2

    .line 80
    .local v5, original:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    new-instance v6, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    invoke-direct {v6, p0, p1, v4}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeCameraSlidingWindow;ILcom/miui/gallery/data/MediaItem;)V

    .line 81
    .local v6, update:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v7, v7, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iget-object v8, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v8, v8, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-direct {v0, v6, v7, v8}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 82
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    invoke-virtual {v6, v0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 83
    aput-object v6, v1, v2

    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    .line 85
    .local v3, isActive:Z
    iget-object v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 86
    iget-object v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    invoke-interface {v7, p1, v5, v6}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onWindowContentChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :cond_0
    if-eqz v5, :cond_2

    .line 89
    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->isRequestInProgress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    iget v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    .line 92
    :cond_1
    invoke-virtual {v5}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->recycle()V

    .line 94
    :cond_2
    if-eqz v3, :cond_5

    .line 95
    iget v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->cancelNonactiveImages()V

    .line 96
    :cond_3
    iget v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    .line 97
    invoke-virtual {v6}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->requestImage()V

    .line 101
    :cond_4
    :goto_0
    return-void

    .line 99
    :cond_5
    iget v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->requestImage()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelSlotImage(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 51
    iget v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 53
    .local v0, item:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method protected freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    .line 59
    .local v0, data:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    array-length v3, v0

    rem-int v1, p1, v3

    .line 60
    .local v1, index:I
    aget-object v2, v0, v1

    .line 61
    .local v2, original:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->recycle()V

    .line 63
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 65
    :cond_0
    return-void
.end method

.method protected getData(I)Ljava/lang/Object;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getDataLength()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v0, v0

    return v0
.end method

.method public getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeCameraView$Model;

    return-object v0
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->updateSlotContent(I)V

    .line 128
    :cond_0
    return-void
.end method

.method protected prepareSlotContent(I)V
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    new-instance v3, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v4, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeCameraView$Model;

    invoke-interface {v4, p1}, Lcom/miui/gallery/ui/HomeCameraView$Model;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeCameraSlidingWindow;ILcom/miui/gallery/data/MediaItem;)V

    aput-object v3, v1, v2

    .line 71
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v2, v2, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iget-object v3, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v3, v3, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 72
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 73
    return-void
.end method

.method protected requestImagesInSlot(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 44
    iget v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 46
    .local v0, item:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->requestImage()V

    goto :goto_0
.end method

.method protected updateAllImageRequests()V
    .locals 5

    .prologue
    .line 105
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;

    .line 107
    .local v0, data:[Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    iget v1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v3, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveEnd:I

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 108
    array-length v4, v0

    rem-int v4, v1, v4

    aget-object v2, v0, v4

    .line 109
    .local v2, item:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->requestImage()V

    .line 114
    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->isRequestInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    goto :goto_1

    .line 116
    .end local v2           #item:Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
    :cond_2
    iget v4, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mActiveRequestCount:I

    if-nez v4, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->requestNonactiveImages()V

    .line 121
    :goto_2
    return-void

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->cancelNonactiveImages()V

    goto :goto_2
.end method
