.class public Lcom/miui/gallery/ui/HighlightDrawer;
.super Lcom/miui/gallery/ui/IconDrawer;
.source "HighlightDrawer.java"


# instance fields
.field private mHighlightItem:Lcom/miui/gallery/data/Path;

.field private mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V
    .locals 0
    .parameter "context"
    .parameter "selectionManager"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/IconDrawer;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/miui/gallery/ui/HighlightDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V
    .locals 18
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "path"
    .parameter "dataSourceType"
    .parameter "mediaType"
    .parameter "isPanorama"
    .parameter "labelBackgroundHeight"
    .parameter "wantCache"
    .parameter "isCaching"

    .prologue
    .line 41
    move/from16 v0, p3

    neg-int v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 42
    .local v7, x:I
    move/from16 v0, p4

    neg-int v5, v0

    div-int/lit8 v8, v5, 0x2

    .local v8, y:I
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 44
    invoke-static/range {v5 .. v11}, Lcom/miui/gallery/ui/HighlightDrawer;->drawWithRotation(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIIII)V

    .line 46
    div-int/lit8 v5, p5, 0x5a

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 47
    move/from16 v17, p3

    .line 48
    .local v17, temp:I
    move/from16 p3, p4

    .line 49
    move/from16 p4, v17

    .line 50
    move/from16 v0, p3

    neg-int v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 51
    move/from16 v0, p4

    neg-int v5, v0

    div-int/lit8 v8, v5, 0x2

    .end local v17           #temp:I
    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p8

    move/from16 v12, p9

    move v13, v7

    move v14, v8

    move/from16 v15, p3

    move/from16 v16, p4

    .line 54
    invoke-virtual/range {v9 .. v16}, Lcom/miui/gallery/ui/HighlightDrawer;->drawMediaTypeOverlay(Lcom/miui/gallery/ui/GLCanvas;IZIIII)V

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/HighlightDrawer;->drawLabelBackground(Lcom/miui/gallery/ui/GLCanvas;III)V

    .line 57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/HighlightDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/SelectionManager;->isPressedPath(Lcom/miui/gallery/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 58
    invoke-virtual/range {v5 .. v10}, Lcom/miui/gallery/ui/HighlightDrawer;->drawPressedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/HighlightDrawer;->mHighlightItem:Lcom/miui/gallery/data/Path;

    move-object/from16 v0, p6

    if-ne v0, v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 60
    invoke-virtual/range {v5 .. v10}, Lcom/miui/gallery/ui/HighlightDrawer;->drawSelectedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public setHighlightItem(Lcom/miui/gallery/data/Path;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/ui/HighlightDrawer;->mHighlightItem:Lcom/miui/gallery/data/Path;

    .line 34
    return-void
.end method
