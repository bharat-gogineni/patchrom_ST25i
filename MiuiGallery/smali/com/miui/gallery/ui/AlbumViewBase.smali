.class public Lcom/miui/gallery/ui/AlbumViewBase;
.super Lcom/miui/gallery/ui/AlbumViewRenderer;
.source "AlbumViewBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumViewModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumViewBase$Model;
    }
.end annotation


# static fields
.field private static mLastEntryPath:Ljava/lang/String;


# instance fields
.field private mAlbumSetPath:Ljava/lang/String;

.field protected mIsActive:Z

.field protected mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

.field private mPaused:Z

.field private mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, ""

    sput-object v0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEntryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "spec"
    .parameter "albumSetPath"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/AlbumViewRenderer;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 15
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mVisibleStart:I

    .line 16
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mVisibleEnd:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    .line 22
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mPaused:Z

    .line 23
    iput-boolean v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mIsActive:Z

    .line 34
    invoke-static {p3}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1, p0}, Lcom/miui/gallery/ui/AlbumShowManager;->getInstance(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView;)Lcom/miui/gallery/ui/AlbumShowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    .line 36
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumViewBase;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 37
    iput-object p3, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mAlbumSetPath:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEntryPath:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->resetCache()V

    .line 40
    sput-object p3, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEntryPath:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method private cacheAndPrepareShow(IIZZ)V
    .locals 2
    .parameter "showStart"
    .parameter "showEnd"
    .parameter "toShow"
    .parameter "ifDown"

    .prologue
    .line 134
    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 135
    if-eqz p4, :cond_1

    .line 136
    move v0, p1

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    invoke-direct {p0, v0, p3}, Lcom/miui/gallery/ui/AlbumViewBase;->handleOneItem(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 138
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-lt v0, p1, :cond_2

    invoke-direct {p0, v0, p3}, Lcom/miui/gallery/ui/AlbumViewBase;->handleOneItem(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 140
    :cond_2
    return-void
.end method

.method private handleOneItem(IZ)V
    .locals 8
    .parameter "slotIndex"
    .parameter "toShow"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumViewBase;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v6

    .line 114
    .local v6, rect:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 115
    .local v3, x:I
    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    .line 117
    .local v4, y:I
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    invoke-interface {v0, p1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v2

    .line 119
    .local v2, curItem:Lcom/miui/gallery/data/MediaItem;
    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/AlbumShowManager;->cacheAndPrepareShow(ILcom/miui/gallery/data/MediaItem;IIZ)I

    move-result v7

    .line 124
    .local v7, toBeEnqueueSlot:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    const/4 v0, -0x2

    if-eq v7, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0, v7}, Lcom/miui/gallery/ui/AlbumShowManager;->putToQueue(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getAlbumSetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mAlbumSetPath:Ljava/lang/String;

    return-object v0
.end method

.method public onFirstPageReady()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "AlbumViewBase"

    const-string v1, "on first page ready"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastStart:I

    iget v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 69
    return-void
.end method

.method protected onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 259
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumViewRenderer;->onScrollPositionChanged(I)V

    .line 264
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 265
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 80
    iput p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumViewBase;->setSlotCount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleEnd()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 88
    .local v0, center:I
    invoke-virtual {p0, v0, v0}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 90
    .end local v0           #center:I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleEnd()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 91
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, photosText:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->updateTitleView(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    .line 94
    return-void
.end method

.method public onWindowContentChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->isActiveCache(I)Z

    move-result v1

    .line 54
    .local v1, isActive:Z
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    invoke-interface {v2, p1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 56
    .local v0, curItem:Lcom/miui/gallery/data/MediaItem;
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v2, v0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->resetCacheItem(Lcom/miui/gallery/data/MediaItem;I)V

    .line 59
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->putToQueue(I)V

    .line 63
    .end local v0           #curItem:Lcom/miui/gallery/data/MediaItem;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mIsActive:Z

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mPaused:Z

    .line 286
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->resetCache()V

    .line 287
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumShowManager;->resetCache()V

    .line 291
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->pause()V

    .line 292
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->resume()V

    .line 293
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionDrawer;->prepareDrawing()V

    .line 270
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/AlbumViewRenderer;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 271
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 274
    iput-boolean v3, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mIsActive:Z

    .line 275
    iget-boolean v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 276
    iput-boolean v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mPaused:Z

    .line 277
    iget v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheStart:I

    iget v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheEnd:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    iget v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastStart:I

    iget v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEnd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/AlbumShowManager;->putCacheToShow(IIZ)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    .line 281
    return-void
.end method

.method public setModel(Lcom/miui/gallery/ui/AlbumViewBase$Model;)V
    .locals 3
    .parameter "model"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1, p0}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->setModelListener(Lcom/miui/gallery/ui/AlbumViewModelListener;)V

    .line 106
    invoke-interface {p1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->size()I

    move-result v0

    .line 107
    .local v0, size:I
    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumViewBase;->setSlotCount(I)Z

    .line 108
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumViewBase;->getVisibleEnd()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 110
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumShowManager;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 99
    return-void
.end method

.method protected declared-synchronized updateVisibleRange(II)V
    .locals 13
    .parameter "start"
    .parameter "end"

    .prologue
    .line 145
    monitor-enter p0

    if-le p1, p2, :cond_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_0
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEnd:I

    if-ne p2, v11, :cond_1

    .line 147
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, p1, p2, v11, v12}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 148
    iget-object v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    const/4 v12, 0x1

    invoke-virtual {v11, p1, p2, v12}, Lcom/miui/gallery/ui/AlbumShowManager;->putCacheToShow(IIZ)V

    .line 149
    add-int v11, p1, p2

    div-int/lit8 v11, v11, 0x2

    iput v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 153
    :cond_1
    add-int v11, p1, p2

    :try_start_1
    div-int/lit8 v3, v11, 0x2

    .line 155
    .local v3, curCenter:I
    const/4 v2, 0x0

    .line 156
    .local v2, curCacheStart:I
    const/4 v1, 0x0

    .line 158
    .local v1, curCacheEnd:I
    const/4 v4, 0x1

    .line 159
    .local v4, ifDown:Z
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    if-lt v3, v11, :cond_6

    const/4 v4, 0x1

    .line 162
    :goto_1
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    sub-int v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 166
    .local v0, centerDiff:I
    const/16 v11, 0x15

    if-le v0, v11, :cond_2

    iget-boolean v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mForceUpdateIndex:Z

    if-nez v11, :cond_2

    .line 167
    if-eqz v4, :cond_7

    .line 168
    const/4 v11, 0x0

    sub-int v12, p1, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 169
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    add-int/lit8 v12, p1, 0x15

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 174
    :goto_2
    add-int v11, p1, p2

    div-int/lit8 v3, v11, 0x2

    .line 175
    const/4 v11, 0x0

    invoke-virtual {p0, v3, v11}, Lcom/miui/gallery/ui/AlbumViewBase;->setCenterIndex(IZ)V

    .line 176
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    sub-int v11, v3, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 179
    :cond_2
    const/4 v11, 0x3

    if-le v0, v11, :cond_3

    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    if-eqz v11, :cond_3

    .line 180
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mFastScroll:Z

    .line 183
    :cond_3
    if-eqz v4, :cond_8

    .line 185
    add-int/lit8 v11, p1, -0xa

    iget v12, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    add-int/lit8 v12, v12, -0x40

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 187
    .local v6, preStart:I
    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    add-int/lit8 v11, v2, 0x40

    iget v12, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 195
    .end local v6           #preStart:I
    :goto_3
    iget-object v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    invoke-interface {v11, v2, v1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->setActiveWindow(II)V

    .line 197
    if-eqz v4, :cond_4

    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheEnd:I

    if-eq v1, v11, :cond_5

    :cond_4
    if-nez v4, :cond_9

    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheStart:I

    if-ne v2, v11, :cond_9

    .line 199
    :cond_5
    iput p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastStart:I

    .line 200
    iput p2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEnd:I

    .line 201
    iput v3, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    .line 202
    iput-boolean v4, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastIfDown:Z

    .line 203
    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, v11, v4}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 204
    iget-object v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v11, p1, p2, v4}, Lcom/miui/gallery/ui/AlbumShowManager;->putCacheToShow(IIZ)V

    goto/16 :goto_0

    .line 160
    .end local v0           #centerDiff:I
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 171
    .restart local v0       #centerDiff:I
    :cond_7
    add-int v11, p1, v0

    iget v12, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 172
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    add-int/lit8 v12, p1, 0x15

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 190
    :cond_8
    add-int/lit8 v11, p2, 0xa

    const/16 v12, 0x40

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 191
    .local v5, preEnd:I
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mSize:I

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    add-int/lit8 v11, v1, -0x40

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    .line 208
    .end local v5           #preEnd:I
    :cond_9
    iput p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mVisibleStart:I

    .line 209
    iput p2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mVisibleEnd:I

    .line 211
    const/4 v8, 0x0

    .line 212
    .local v8, realDiffCacheStart:I
    const/4 v7, 0x0

    .line 213
    .local v7, realDiffCacheEnd:I
    const/4 v10, 0x0

    .line 214
    .local v10, reqNewCacheStart:I
    const/4 v9, 0x0

    .line 217
    .local v9, reqNewCacheEnd:I
    if-eqz v4, :cond_c

    .line 218
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheEnd:I

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 219
    move v9, v1

    .line 221
    if-ge v8, p2, :cond_b

    .line 223
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v8, p2, v11, v12}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 224
    move v10, p2

    .line 242
    :goto_4
    if-ge v10, v9, :cond_a

    const/4 v11, 0x0

    invoke-direct {p0, v10, v9, v11, v4}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 243
    :cond_a
    const/4 v11, 0x0

    invoke-direct {p0, p1, p2, v11, v4}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V

    .line 244
    iget-object v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mShowManager:Lcom/miui/gallery/ui/AlbumShowManager;

    invoke-virtual {v11, p1, p2, v4}, Lcom/miui/gallery/ui/AlbumShowManager;->putCacheToShow(IIZ)V

    .line 246
    iput p1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastStart:I

    .line 247
    iput p2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastEnd:I

    .line 248
    iput v2, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheStart:I

    .line 249
    iput v1, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheEnd:I

    .line 250
    iput v3, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCenter:I

    .line 251
    iput-boolean v4, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastIfDown:Z

    .line 252
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mForceUpdateIndex:Z

    goto/16 :goto_0

    .line 226
    :cond_b
    move v10, v8

    goto :goto_4

    .line 230
    :cond_c
    iget v11, p0, Lcom/miui/gallery/ui/AlbumViewBase;->mLastCacheStart:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 231
    move v10, v2

    .line 233
    if-lt v7, p1, :cond_d

    .line 234
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, p1, v7, v11, v12}, Lcom/miui/gallery/ui/AlbumViewBase;->cacheAndPrepareShow(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    move v9, p1

    goto :goto_4

    .line 237
    :cond_d
    move v9, v7

    goto :goto_4
.end method
