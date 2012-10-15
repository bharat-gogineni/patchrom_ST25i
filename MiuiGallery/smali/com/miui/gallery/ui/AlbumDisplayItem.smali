.class public Lcom/miui/gallery/ui/AlbumDisplayItem;
.super Ljava/lang/Object;
.source "AlbumDisplayItem.java"


# instance fields
.field cacheItem:Lcom/miui/gallery/data/MediaItem;

.field private mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

.field private mTextureName:Lcom/miui/gallery/ui/StringTexture;

.field private mTextureSize:Lcom/miui/gallery/ui/StringTexture;

.field public position:Lcom/miui/gallery/ui/PositionRepository$Position;

.field public slotIndex:I

.field public state:I

.field public waitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v3, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    .line 28
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 32
    new-instance v0, Lcom/miui/gallery/ui/ColorTexture;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->waitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    .line 33
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 34
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    .line 35
    iput-object v2, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    .line 37
    iput v3, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    .line 38
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->position:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 39
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method invalidateBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 45
    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/StringTexture;->recycle()V

    .line 50
    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/StringTexture;->recycle()V

    .line 55
    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    .line 58
    :cond_2
    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    .line 60
    return-void
.end method

.method public isInvalid()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;Z)Z
    .locals 17
    .parameter "canvas"
    .parameter "showDetails"

    .prologue
    .line 98
    const/4 v15, 0x0

    .line 99
    .local v15, more:Z
    invoke-static {}, Lcom/miui/gallery/ui/AlbumShowManager;->getInstance()Lcom/miui/gallery/ui/AlbumShowManager;

    move-result-object v16

    .line 100
    .local v16, showManager:Lcom/miui/gallery/ui/AlbumShowManager;
    invoke-static {}, Lcom/miui/gallery/ui/AlbumShowManager;->getInstance()Lcom/miui/gallery/ui/AlbumShowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumShowManager;->getSelectionDrawer()Lcom/miui/gallery/ui/SelectionDrawer;

    move-result-object v1

    .line 101
    .local v1, drawer:Lcom/miui/gallery/ui/SelectionDrawer;
    if-eqz v1, :cond_6

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->getItemWidth()I

    move-result v4

    .line 103
    .local v4, width:I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->getItemHeight()I

    move-result v5

    .line 104
    .local v5, height:I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->getBlurHeight()I

    move-result v12

    .line 105
    .local v12, coverHeight:I
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->getFontSize()I

    move-result v14

    .line 107
    .local v14, fontSize:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 108
    const/4 v15, 0x0

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 147
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v12           #coverHeight:I
    .end local v14           #fontSize:I
    :goto_0
    return v2

    .line 113
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v12       #coverHeight:I
    .restart local v14       #fontSize:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IZ)V

    .line 117
    if-eqz p2, :cond_2

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->getDetailBackground()Lcom/miui/gallery/ui/ResourceTexture;

    move-result-object v8

    neg-int v2, v4

    div-int/lit8 v9, v2, 0x2

    div-int/lit8 v2, v5, 0x2

    add-int/lit8 v10, v2, -0x28

    const/4 v13, 0x0

    move-object v6, v1

    move-object/from16 v7, p1

    move v11, v4

    invoke-virtual/range {v6 .. v13}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIIII)V

    .line 119
    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/ui/AlbumShowManager;->isShowSize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    if-nez v2, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/AlbumShowManager;->getShowTitle(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    const/4 v6, -0x1

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    .line 125
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureSize:Lcom/miui/gallery/ui/StringTexture;

    neg-int v3, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, v14

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v6}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .end local v4           #width:I
    .end local v5           #height:I
    .end local v12           #coverHeight:I
    .end local v14           #fontSize:I
    :cond_2
    :goto_1
    move v2, v15

    .line 147
    goto :goto_0

    .line 127
    .restart local v4       #width:I
    .restart local v5       #height:I
    .restart local v12       #coverHeight:I
    .restart local v14       #fontSize:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    if-nez v2, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/miui/gallery/ui/AlbumShowManager;->getShowTitle(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v14

    const/4 v6, -0x1

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-static {v2, v3, v6, v7, v8}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    .line 132
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mTextureName:Lcom/miui/gallery/ui/StringTexture;

    neg-int v3, v4

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, v14

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v6}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    goto :goto_1

    .line 137
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->waitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;III)V

    .line 138
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 139
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 144
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v12           #coverHeight:I
    .end local v14           #fontSize:I
    :cond_6
    const-string v2, "ERROR"

    const-string v3, "the drawer is null !!!!!!!!!"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "aBitmap"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    .line 89
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p1, v2, v3}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    .line 88
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->state:I

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 85
    const-string v0, "RECYCLE"

    const-string v1, "create a new texture"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/miui/gallery/ui/BitmapTexture;

    invoke-direct {v0, p1, v2, v3}, Lcom/miui/gallery/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->mBitmapTexture:Lcom/miui/gallery/ui/BitmapTexture;

    goto :goto_1
.end method

.method setCacheItem(Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter "curItem"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->cacheItem:Lcom/miui/gallery/data/MediaItem;

    .line 64
    return-void
.end method

.method setSlotIndex(I)V
    .locals 0
    .parameter "aSlotIndex"

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/gallery/ui/AlbumDisplayItem;->slotIndex:I

    .line 68
    return-void
.end method
