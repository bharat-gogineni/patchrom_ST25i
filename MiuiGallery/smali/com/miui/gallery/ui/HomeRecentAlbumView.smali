.class public Lcom/miui/gallery/ui/HomeRecentAlbumView;
.super Lcom/miui/gallery/ui/AbstractHomeSlotView;
.source "HomeRecentAlbumView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;,
        Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;,
        Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;
    }
.end annotation


# instance fields
.field private final mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;)V
    .locals 0
    .parameter "activity"
    .parameter "drawer"
    .parameter "slotViewSpec"
    .parameter "labelSpec"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AbstractHomeSlotView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;)V

    .line 59
    iput-object p4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    .line 60
    return-void
.end method


# virtual methods
.method public canDisplayShowAllItem()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    .line 141
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    iget-object v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryActivity;->getRecentAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v2

    .line 143
    .local v2, recentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    .line 144
    .local v1, allAlbumCount:I
    invoke-virtual {v2}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v3

    .line 146
    .local v3, recentAlbumCount:I
    if-ge v1, v3, :cond_1

    .line 149
    const-string v6, "HomeRecentAlbumView"

    const-string v7, "allAlbumCount < recentAlbumCount: %d < %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/miui/gallery/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    return v4

    :cond_1
    if-gt v1, v3, :cond_2

    const/4 v6, 0x3

    if-le v1, v6, :cond_0

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method protected createDataWindow(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)Lcom/miui/gallery/ui/HomeSlidingWindowBase;
    .locals 6
    .parameter "model"

    .prologue
    .line 64
    new-instance v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    iget-object v1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    iget-object v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    move-object v4, p1

    check-cast v4, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;I)V

    return-object v0
.end method

.method protected freeSlotContent(Ljava/lang/Object;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 135
    .end local p1
    :goto_0
    return-void

    .line 124
    .restart local p1
    :cond_0
    instance-of v5, p1, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 125
    check-cast v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;

    .line 126
    .local v0, albumSetItem:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .local v1, arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 127
    .local v3, item:Lcom/miui/gallery/ui/DisplayItem;
    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v3           #item:Lcom/miui/gallery/ui/DisplayItem;
    :cond_1
    iget-object v5, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    .line 130
    iget-object v5, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0

    .line 132
    .end local v0           #albumSetItem:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    .end local v1           #arr$:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_2
    instance-of v5, p1, Lcom/miui/gallery/ui/BitmapDisplayItem;

    invoke-static {v5}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 133
    check-cast p1, Lcom/miui/gallery/ui/BitmapDisplayItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->removeDisplayItem(Lcom/miui/gallery/ui/DisplayItem;)V

    goto :goto_0
.end method

.method protected putSlotContent(ILjava/lang/Object;)V
    .locals 21
    .parameter "slotIndex"
    .parameter "entry"

    .prologue
    .line 81
    invoke-super/range {p0 .. p2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->putSlotContent(ILjava/lang/Object;)V

    .line 83
    invoke-virtual/range {p0 .. p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v13

    .line 85
    .local v13, rect:Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    div-int/lit8 v15, v17, 0x2

    .line 86
    .local v15, x:I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    div-int/lit8 v16, v17, 0x2

    .line 87
    .local v16, y:I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v14, v17, v18

    .line 88
    .local v14, width:I
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 90
    .local v7, height:I
    new-instance v4, Lcom/miui/gallery/ui/PositionRepository$Position;

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 91
    .local v4, basePosition:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v12, Lcom/miui/gallery/ui/PositionRepository$Position;

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v12, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 92
    .local v12, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    new-instance v5, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumBlackCoverHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 94
    .local v5, bgposition:Lcom/miui/gallery/ui/PositionRepository$Position;
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/miui/gallery/ui/BitmapDisplayItem;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->canDisplayShowAllItem()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 96
    new-instance v17, Lcom/miui/gallery/ui/PositionRepository$Position;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    check-cast p2, Lcom/miui/gallery/ui/BitmapDisplayItem;

    .end local p2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 118
    :cond_0
    return-void

    .restart local p2
    :cond_1
    move-object/from16 v3, p2

    .line 99
    check-cast v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;

    .line 100
    .local v3, albumSetItem:Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;
    if-eqz v3, :cond_2

    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 102
    iget-object v10, v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->covers:[Lcom/miui/gallery/ui/CoverDisplayItem;

    .line 103
    .local v10, items:[Lcom/miui/gallery/ui/CoverDisplayItem;
    iget-object v0, v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->labelItem:Lcom/miui/gallery/ui/DisplayItem;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v12, v1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 104
    iget-object v0, v3, Lcom/miui/gallery/ui/HomeRecentAlbumView$AlbumSetItem;->bottomCover:Lcom/miui/gallery/ui/DisplayItem;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v5, v1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 108
    const/4 v8, 0x0

    .local v8, i:I
    array-length v11, v10

    .local v11, n:I
    :goto_1
    if-ge v8, v11, :cond_0

    .line 109
    aget-object v9, v10, v8

    .line 110
    .local v9, item:Lcom/miui/gallery/ui/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverGap:I

    move/from16 v18, v0

    mul-int v18, v18, v8

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 113
    .local v6, dx:F
    new-instance v12, Lcom/miui/gallery/ui/PositionRepository$Position;

    .end local v12           #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    int-to-float v0, v15

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v12, v0, v1, v2}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>(FFF)V

    .line 114
    .restart local v12       #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v12, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v9}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->putDisplayItem(Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/PositionRepository$Position;Lcom/miui/gallery/ui/DisplayItem;)V

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    .end local v6           #dx:F
    .end local v8           #i:I
    .end local v9           #item:Lcom/miui/gallery/ui/DisplayItem;
    .end local v10           #items:[Lcom/miui/gallery/ui/CoverDisplayItem;
    .end local v11           #n:I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public updateTitleView(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    .line 73
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    .line 75
    .local v1, allAlbumCount:I
    const v2, 0x7f0d00b5

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->updateTitleViewDesc(I)V

    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->updateTitleView(Ljava/lang/String;)V

    .line 77
    return-void
.end method
