.class public Lcom/miui/gallery/ui/GridDrawer;
.super Lcom/miui/gallery/ui/IconDrawer;
.source "GridDrawer.java"


# instance fields
.field private final IMPORT_FONT_COLOR:I

.field private final IMPORT_FONT_SIZE:I

.field private final IMPORT_LABEL_MARGIN:I

.field private final mContext:Landroid/content/Context;

.field private final mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mSelectionMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V
    .locals 1
    .parameter "context"
    .parameter "selectionManager"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/IconDrawer;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0xe

    iput v0, p0, Lcom/miui/gallery/ui/GridDrawer;->IMPORT_FONT_SIZE:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/GridDrawer;->IMPORT_FONT_COLOR:I

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/gallery/ui/GridDrawer;->IMPORT_LABEL_MARGIN:I

    .line 38
    iput-object p1, p0, Lcom/miui/gallery/ui/GridDrawer;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V
    .locals 19
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
    .line 53
    move/from16 v0, p3

    neg-int v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 54
    .local v7, x:I
    move/from16 v0, p4

    neg-int v5, v0

    div-int/lit8 v8, v5, 0x2

    .line 56
    .local v8, y:I
    div-int/lit8 v5, p5, 0x5a

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const/16 v17, 0x1

    .line 57
    .local v17, rotated:Z
    :goto_0
    if-eqz v17, :cond_0

    .line 58
    move/from16 v18, p3

    .line 59
    .local v18, temp:I
    move/from16 p3, p4

    .line 60
    move/from16 p4, v18

    .line 61
    move/from16 v0, p3

    neg-int v5, v0

    div-int/lit8 v7, v5, 0x2

    .line 62
    move/from16 v0, p4

    neg-int v5, v0

    div-int/lit8 v8, v5, 0x2

    .end local v18           #temp:I
    :cond_0
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 66
    invoke-static/range {v5 .. v11}, Lcom/miui/gallery/ui/GridDrawer;->drawWithRotation(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIIII)V

    .line 69
    if-eqz v17, :cond_1

    .line 70
    move/from16 v18, p3

    .line 71
    .restart local v18       #temp:I
    move/from16 p3, p4

    .line 72
    move/from16 p4, v18

    .line 73
    move/from16 v18, v7

    .line 74
    move v7, v8

    .line 75
    move/from16 v8, v18

    .end local v18           #temp:I
    :cond_1
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p8

    move/from16 v12, p9

    move v13, v7

    move v14, v8

    move/from16 v15, p3

    move/from16 v16, p4

    .line 78
    invoke-virtual/range {v9 .. v16}, Lcom/miui/gallery/ui/GridDrawer;->drawMediaTypeOverlay(Lcom/miui/gallery/ui/GLCanvas;IZIIII)V

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/ui/GridDrawer;->drawLabelBackground(Lcom/miui/gallery/ui/GLCanvas;III)V

    .line 80
    const/4 v5, 0x3

    move/from16 v0, p7

    if-ne v0, v5, :cond_2

    .line 85
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionMode:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/SelectionManager;->isItemSelected(Lcom/miui/gallery/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 87
    invoke-virtual/range {v5 .. v10}, Lcom/miui/gallery/ui/GridDrawer;->drawSelectedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 94
    :cond_3
    :goto_1
    return-void

    .line 56
    .end local v17           #rotated:Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 91
    .restart local v17       #rotated:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionMode:Z

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/miui/gallery/ui/SelectionManager;->isPressedPath(Lcom/miui/gallery/data/Path;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 92
    invoke-virtual/range {v5 .. v10}, Lcom/miui/gallery/ui/GridDrawer;->drawPressedFrame(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    goto :goto_1
.end method

.method public drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 114
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/GridDrawer;->mSelectionMode:Z

    .line 45
    return-void
.end method
