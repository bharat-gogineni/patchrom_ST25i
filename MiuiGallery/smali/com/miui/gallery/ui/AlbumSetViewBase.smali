.class public Lcom/miui/gallery/ui/AlbumSetViewBase;
.super Lcom/miui/gallery/ui/SlotViewWithTitle;
.source "AlbumSetViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/AlbumSetViewBase$1;,
        Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;,
        Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;,
        Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;,
        Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;
    }
.end annotation


# instance fields
.field protected final CACHE_SIZE:I

.field protected final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field protected mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

.field protected final mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

.field private final mRandom:Ljava/util/Random;

.field private final mSeed:J

.field protected mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V
    .locals 2
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotViewSpec"
    .parameter "labelSpec"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    .line 16
    const/16 v0, 0x20

    iput v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->CACHE_SIZE:I

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mRandom:Ljava/util/Random;

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mSeed:J

    .line 64
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 65
    invoke-virtual {p0, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 66
    invoke-virtual {p0, p3}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 67
    iput-object p4, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/AlbumSetViewBase;ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/AlbumSetViewBase;ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    return-void
.end method

.method private freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    .locals 1
    .parameter "index"
    .parameter "entry"

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 107
    iget-object v0, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 108
    iget-object v0, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0
.end method

.method private putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V
    .locals 12
    .parameter "slotIndex"
    .parameter "entry"

    .prologue
    const/4 v11, 0x0

    .line 86
    if-eqz p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 89
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mRandom:Ljava/util/Random;

    int-to-long v7, p1

    iget-wide v9, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mSeed:J

    xor-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/util/Random;->setSeed(J)V

    .line 91
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    .line 92
    .local v4, x:I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 94
    .local v5, y:I
    new-instance v3, Lcom/miui/gallery/ui/PositionRepository$Position;

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-direct {v3, v6, v7, v11}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 96
    .local v3, slotCenter:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v1, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    iget v8, v8, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumBlurHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v1, v6, v7, v11}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 97
    .local v1, bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    add-int/lit8 v6, v4, 0xa

    int-to-float v6, v6

    add-int/lit8 v7, v5, 0xa

    int-to-float v7, v7

    invoke-direct {v0, v6, v7, v11}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 99
    .local v0, baseposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget-object v6, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v3, v3, v6}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 100
    iget-object v6, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v1, v1, v6}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 101
    iget-object v6, p2, Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;->displayComboCover:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$GalleryDisplayItem;

    invoke-virtual {p0, v3, v0, v6}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 102
    return-void

    .line 86
    .end local v0           #baseposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v1           #bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #slotCenter:Lcom/miui/gallery/ui/PositionRepository$Position;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected initializeDataWindow(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)V
    .locals 3
    .parameter "dataWindow"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    new-instance v1, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase$MyCacheListener;-><init>(Lcom/miui/gallery/ui/AlbumSetViewBase;Lcom/miui/gallery/ui/AlbumSetViewBase$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setListener(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$Listener;)V

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSlotCount(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateVisibleRange(II)V

    .line 82
    return-void
.end method

.method public onLayoutChanged(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateVisibleRange(II)V

    .line 118
    return-void
.end method

.method public onScrollPositionChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->onScrollPositionChanged(I)V

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getVisibleEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->updateVisibleRange(II)V

    .line 124
    return-void
.end method

.method protected onSizeChanged(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 172
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 206
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->pause()V

    .line 210
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->pause()V

    .line 221
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->resume()V

    .line 222
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionDrawer;->prepareDrawing()V

    .line 167
    invoke-super {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 168
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 213
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->resume()V

    .line 214
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 215
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V
    .locals 1
    .parameter "drawer"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected declared-synchronized updateVisibleRange(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    if-ne p2, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setActiveWindow(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    if-lt v2, p2, :cond_3

    .line 136
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    .local v0, i:I
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 137
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setActiveWindow(II)V

    .line 140
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 141
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 145
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 147
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 148
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->freeSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 150
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, p1, p2}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->setActiveWindow(II)V

    .line 151
    move v0, p1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 152
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 154
    :cond_6
    iget v0, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 155
    iget-object v2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mDataWindow:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->get(I)Lcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->putSlotContent(ILcom/miui/gallery/ui/AlbumSetViewBase$AlbumSetItem;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 158
    :cond_7
    iput p1, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleStart:I

    .line 159
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetViewBase;->mVisibleEnd:I

    .line 161
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
