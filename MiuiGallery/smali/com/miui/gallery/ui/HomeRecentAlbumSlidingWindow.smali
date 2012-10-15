.class public Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;
.super Lcom/miui/gallery/ui/HomeSlidingWindowBase;
.source "HomeRecentAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$1;,
        Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;,
        Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;,
        Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected final mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

.field private final mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

.field protected mFontHeight:I

.field private final mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

.field private final mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;I)V
    .locals 6
    .parameter "activity"
    .parameter "labelSpec"
    .parameter "drawer"
    .parameter "source"
    .parameter "cacheSize"

    .prologue
    .line 46
    const v4, 0x7f0200c8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;IILcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 47
    invoke-interface {p4, p0}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->setModelListener(Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;)V

    .line 48
    iput-object p2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    .line 49
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->getFontHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mFontHeight:I

    .line 50
    iput-object p4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    .line 51
    new-array v0, p5, [Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iput-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    .line 52
    check-cast p1, Landroid/content/Context;

    .end local p1
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/miui/gallery/ui/ResourceTexture;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContext:Landroid/content/Context;

    const v2, 0x7f020035

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    return-object v0
.end method

.method private getFontHeight()I
    .locals 4

    .prologue
    .line 295
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 296
    .local v1, paint:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v2, v2, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 298
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private static identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method private static identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method private isCoverItemsChanged(I)Z
    .locals 10
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x1

    .line 132
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v7, v7

    rem-int v7, p1, v7

    aget-object v4, v6, v7

    .line 133
    .local v4, original:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    if-nez v4, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v5

    .line 134
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 136
    .local v0, coverItems:[Lcom/miui/gallery/data/MediaItem;
    iget-object v6, v4, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    array-length v6, v6

    array-length v7, v0

    if-ne v6, v7, :cond_0

    .line 137
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v0

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 138
    iget-object v6, v4, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v1, v6, v2

    check-cast v1, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .line 139
    .local v1, g:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mDataVersion:J
    invoke-static {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->access$100(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;)J

    move-result-wide v6

    aget-object v8, v0, v2

    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    .end local v1           #g:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private notifySlotChanged(I)V
    .locals 11
    .parameter "slotIndex"

    .prologue
    .line 175
    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v6, :cond_2

    .line 176
    :cond_0
    const-string v6, "HomeRecentAlbumSlidingWindow"

    const-string v7, "invalid update: %s is outside (%s, %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentStart:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentEnd:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-void

    .line 181
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->updateSlotContent(I)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    .line 183
    .local v3, isActiveSlot:Z
    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    if-eqz v6, :cond_3

    if-eqz v3, :cond_1

    .line 184
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v7, v7

    rem-int v7, p1, v7

    aget-object v6, v6, v7

    iget-object v0, v6, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object v1, v4

    .line 185
    check-cast v1, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .line 186
    .local v1, galleryItem:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 187
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    .line 184
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateSlotContent(I)V
    .locals 10
    .parameter "slotIndex"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    .line 147
    .local v1, data:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    array-length v9, v1

    rem-int v6, p1, v9

    .line 148
    .local v6, pos:I
    aget-object v5, v1, v6

    .line 150
    .local v5, original:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->isCoverItemsChanged(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 151
    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    invoke-interface {v9, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    .line 152
    .local v7, set:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 153
    invoke-static {v7}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v9

    iput v9, v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 154
    if-nez v7, :cond_1

    const/4 v9, 0x0

    :goto_0
    iput-object v9, v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 155
    iget-object v9, v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    check-cast v9, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 156
    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    invoke-interface {v9}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onContentInvalidated()V

    .line 171
    .end local v7           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return-void

    .line 154
    .restart local v7       #set:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v9

    goto :goto_0

    .line 160
    .end local v7           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->prepareSlotContent(I)V

    .line 161
    aget-object v8, v1, v6

    .line 163
    .local v8, update:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 164
    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    invoke-interface {v9, p1, v5, v8}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onWindowContentChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :cond_3
    if-eqz v5, :cond_0

    .line 167
    iget-object v0, v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 168
    .local v3, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .end local v3           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v3}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected cancelSlotImage(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 81
    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 86
    :cond_0
    return-void

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 83
    .local v3, items:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    iget-object v0, v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 84
    .local v2, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v2, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->cancelImageRequest()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected freeSlotContent(I)V
    .locals 8
    .parameter "slotIndex"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    .line 91
    .local v1, data:[Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    array-length v7, v1

    rem-int v3, p1, v7

    .line 92
    .local v3, index:I
    aget-object v6, v1, v3

    .line 93
    .local v6, original:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    if-eqz v6, :cond_0

    .line 94
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 95
    iget-object v0, v6, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v4, v0, v2

    .line 96
    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v4, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .end local v4           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->recycle()V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v0           #arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v2           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method protected getData(I)Ljava/lang/Object;
    .locals 2
    .parameter "slotIndex"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getDataLength()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v0, v0

    return v0
.end method

.method public getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    return-object v0
.end method

.method public onWindowContentChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mIsActive:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->notifySlotChanged(I)V

    goto :goto_0
.end method

.method protected prepareSlotContent(I)V
    .locals 10
    .parameter "slotIndex"

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    .line 105
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    new-instance v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    invoke-direct {v3, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;-><init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$1;)V

    .line 106
    .local v3, item:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    invoke-interface {v6, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 107
    .local v1, coverItems:[Lcom/miui/gallery/data/MediaItem;
    array-length v6, v1

    new-array v6, v6, [Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    iput-object v6, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .line 108
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->identifyCacheFlag(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 109
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->identifyCacheStatus(Lcom/miui/gallery/data/MediaSet;)I

    move-result v6

    iput v6, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 110
    if-nez v4, :cond_0

    :goto_0
    iput-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 112
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 113
    iget-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    new-instance v6, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    aget-object v7, v1, v2

    invoke-direct {v6, p0, p1, v2, v7}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;IILcom/miui/gallery/data/MediaItem;)V

    aput-object v6, v5, v2

    .line 114
    new-instance v0, Lcom/miui/gallery/ui/DisplayItem$CropDimension;

    iget-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v6, v6, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverWidth:I

    iget-object v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v7, v7, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotHeight:I

    invoke-direct {v0, v5, v6, v7}, Lcom/miui/gallery/ui/DisplayItem$CropDimension;-><init>(Lcom/miui/gallery/ui/DisplayItem;II)V

    .line 116
    .local v0, coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    iget-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/CoverDisplayItem;->setCrop(Lcom/miui/gallery/ui/DisplayItem$CropDimension;)V

    .line 117
    if-nez v2, :cond_1

    .line 118
    iget-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v7, v7, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverGap:I

    invoke-virtual {v5, v6, v7}, Lcom/miui/gallery/ui/CoverDisplayItem;->setParentAttribute(II)V

    .line 112
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    .end local v0           #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    .end local v2           #i:I
    :cond_0
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .line 120
    .restart local v0       #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    .restart local v2       #i:I
    :cond_1
    iget-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    aget-object v5, v5, v2

    invoke-virtual {v5, v2}, Lcom/miui/gallery/ui/CoverDisplayItem;->setNeedFadeInFrame(I)V

    goto :goto_2

    .line 124
    .end local v0           #coverCrop:Lcom/miui/gallery/ui/DisplayItem$CropDimension;
    :cond_2
    new-instance v5, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;

    invoke-direct {v5, p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;I)V

    iput-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    .line 126
    new-instance v5, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContext:Landroid/content/Context;

    const v7, 0x7f02000d

    iget-object v8, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v8, v8, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotWidth:I

    iget-object v9, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget v9, v9, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumBlackCoverHeight:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/gallery/ui/ResourceTextureDisplayItem;-><init>(Landroid/content/Context;III)V

    iput-object v5, v3, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    .line 128
    iget-object v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aput-object v3, v5, v6

    .line 129
    return-void
.end method

.method protected requestImagesInSlot(I)V
    .locals 7
    .parameter "slotIndex"

    .prologue
    .line 72
    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v5, :cond_1

    .line 77
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v6, v6

    rem-int v6, p1, v6

    aget-object v3, v5, v6

    .line 74
    .local v3, items:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    iget-object v0, v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 75
    .local v2, item:Lcom/miui/gallery/ui/DisplayItem;
    check-cast v2, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .end local v2           #item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {v2}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected updateAllImageRequests()V
    .locals 9

    .prologue
    .line 196
    const/4 v7, 0x0

    iput v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    .line 197
    iget v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveStart:I

    .local v2, i:I
    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveEnd:I

    .local v6, n:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 198
    iget-object v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    iget-object v8, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    array-length v8, v8

    rem-int v8, v2, v8

    aget-object v7, v7, v8

    iget-object v0, v7, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v0, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v4, v0, v3

    .local v4, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object v1, v4

    .line 199
    check-cast v1, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;

    .line 200
    .local v1, coverItem:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->requestImage()V

    .line 201
    invoke-virtual {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->isRequestInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    .line 198
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v1           #coverItem:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
    .end local v4           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v0           #arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_2
    iget v7, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v7, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->requestNonactiveImages()V

    .line 209
    :goto_2
    return-void

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_2
.end method
