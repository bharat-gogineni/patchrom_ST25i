.class public abstract Lcom/miui/gallery/ui/HomeSlidingWindowBase;
.super Ljava/lang/Object;
.source "HomeSlidingWindowBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;,
        Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;,
        Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;
    }
.end annotation


# instance fields
.field protected mActiveEnd:I

.field protected mActiveRequestCount:I

.field protected mActiveStart:I

.field protected mContentEnd:I

.field protected mContentStart:I

.field private final mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field protected mIsActive:Z

.field protected mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

.field protected mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field protected final mShowAllDisplayItem:Lcom/miui/gallery/ui/BitmapDisplayItem;

.field private mSize:I

.field protected final mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;IILcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V
    .locals 4
    .parameter "activity"
    .parameter "drawer"
    .parameter "recentItemSize"
    .parameter "showAllResId"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveRequestCount:I

    .line 51
    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .line 52
    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    .line 54
    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    .line 55
    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    .line 64
    iput-boolean v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mIsActive:Z

    .line 70
    iput-object p2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 73
    invoke-interface {p5}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->size()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    .line 74
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bitmapShowAll:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/app/Config$HomePageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v1, v2, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    .line 78
    .local v1, showSize:I
    new-instance v2, Lcom/miui/gallery/ui/BitmapDisplayItem;

    invoke-direct {v2, v0, v1, v1}, Lcom/miui/gallery/ui/BitmapDisplayItem;-><init>(Landroid/graphics/Bitmap;II)V

    iput-object v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mShowAllDisplayItem:Lcom/miui/gallery/ui/BitmapDisplayItem;

    .line 80
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 82
    new-instance v2, Lcom/miui/gallery/ui/HomeSlidingWindowBase$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$1;-><init>(Lcom/miui/gallery/ui/HomeSlidingWindowBase;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/HomeSlidingWindowBase;)Lcom/miui/gallery/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    return-object v0
.end method

.method private getShowAllIndex()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 142
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 145
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 146
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->freeSlotContent(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->setActiveWindow(II)V

    .line 149
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 150
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->prepareSlotContent(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 154
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->freeSlotContent(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 157
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->freeSlotContent(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->setActiveWindow(II)V

    .line 160
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 161
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->prepareSlotContent(I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 163
    :cond_6
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 164
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->prepareSlotContent(I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 168
    :cond_7
    iput p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .line 169
    iput p2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    goto :goto_0
.end method


# virtual methods
.method protected cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 215
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 217
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 218
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->cancelSlotImage(I)V

    .line 219
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->cancelSlotImage(I)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method protected abstract cancelSlotImage(I)V
.end method

.method protected abstract freeSlotContent(I)V
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .parameter "slotIndex"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getShowAllIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mShowAllDisplayItem:Lcom/miui/gallery/ui/BitmapDisplayItem;

    .line 129
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->isActiveSlot(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s), mSize: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getData(I)Ljava/lang/Object;
.end method

.method protected abstract getDataLength()I
.end method

.method public getShowAllItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mShowAllDisplayItem:Lcom/miui/gallery/ui/BitmapDisplayItem;

    return-object v0
.end method

.method public abstract getSource()Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 138
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 2
    .parameter "size"
    .parameter "totalMediaItemCount"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 235
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    .line 236
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    invoke-interface {v0, v1, p2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onSizeChanged(II)V

    .line 238
    :cond_0
    return-void
.end method

.method public onUpdateVisibleRange()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    invoke-interface {v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;->onUpdateVisibleRange()V

    .line 226
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 241
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mIsActive:Z

    .line 242
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->freeSlotContent(I)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method protected abstract prepareSlotContent(I)V
.end method

.method protected abstract requestImagesInSlot(I)V
.end method

.method protected requestNonactiveImages()V
    .locals 5

    .prologue
    .line 206
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 208
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 209
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->requestImagesInSlot(I)V

    .line 210
    iget v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->requestImagesInSlot(I)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 248
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mIsActive:Z

    .line 249
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->prepareSlotContent(I)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->updateAllImageRequests()V

    .line 253
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    if-lt p2, v4, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "There should be at least one item, because last item is [Show all]"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->getDataLength()I

    move-result v2

    .line 181
    .local v2, dataLength:I
    if-gt p1, p2, :cond_3

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, p1

    if-gt v3, v2, :cond_3

    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    if-gt p2, v3, :cond_3

    move v3, v4

    :goto_2
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

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget v8, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iput p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    .line 188
    add-int/lit8 v3, p2, -0x1

    iput v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    .line 190
    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveStart:I

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mActiveEnd:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 192
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 194
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 196
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->setContentWindow(II)V

    .line 197
    iget-boolean v3, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mIsActive:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->updateAllImageRequests()V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #dataLength:I
    :cond_2
    move v3, v5

    .line 177
    goto :goto_1

    .restart local v2       #dataLength:I
    :cond_3
    move v3, v5

    .line 181
    goto :goto_2
.end method

.method public setListener(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mListener:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Listener;

    .line 107
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 103
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/gallery/ui/HomeSlidingWindowBase;->mSize:I

    return v0
.end method

.method protected abstract updateAllImageRequests()V
.end method
