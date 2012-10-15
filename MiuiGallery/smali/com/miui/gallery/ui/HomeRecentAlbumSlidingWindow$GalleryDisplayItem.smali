.class Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;
.super Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;
.source "HomeRecentAlbumSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryDisplayItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;",
        "Lcom/miui/gallery/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCoverIndex:I

.field private final mDataVersion:J

.field final synthetic this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;IILcom/miui/gallery/data/MediaItem;)V
    .locals 2
    .parameter
    .parameter "slotIndex"
    .parameter "coverIndex"
    .parameter "item"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeSlidingWindowBase;ILcom/miui/gallery/data/MediaItem;Z)V

    .line 227
    iput p3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    .line 228
    invoke-virtual {p4}, Lcom/miui/gallery/data/MediaItem;->getDataVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mDataVersion:J

    return-wide v0
.end method


# virtual methods
.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 18
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v1

    iget v4, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumCoverWidth:I

    .line 235
    .local v4, width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v1

    iget v5, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumSlotHeight:I

    .line 238
    .local v5, height:I
    const/4 v14, 0x0

    .line 239
    .local v14, cacheFlag:I
    const/4 v15, 0x0

    .line 240
    .local v15, cacheStatus:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    invoke-static {v1}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$300(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mData:[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    invoke-static {v3}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$300(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)[Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v17, v1, v2

    .line 242
    .local v17, set:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;
    if-nez v17, :cond_0

    .line 243
    const-string v1, "HomeRecentAlbumSlidingWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1

    .line 247
    :cond_0
    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->setPath:Lcom/miui/gallery/data/Path;

    .line 248
    .local v7, path:Lcom/miui/gallery/data/Path;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    if-nez v1, :cond_1

    .line 249
    move-object/from16 v0, v17

    iget v14, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheFlag:I

    .line 250
    move-object/from16 v0, v17

    iget v15, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$MyAlbumSetItem;->cacheStatus:I

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    iget-object v1, v1, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->getRotation()I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mMediaType:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mIsPanorama:Z

    const/4 v11, 0x0

    const/4 v2, 0x2

    if-ne v14, v2, :cond_2

    const/4 v12, 0x1

    :goto_1
    const/4 v2, 0x2

    if-ne v14, v2, :cond_3

    const/4 v2, 0x3

    if-eq v15, v2, :cond_3

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v13}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->isParent()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mChildCount:I

    if-eqz v1, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mChildCount:I

    add-int/lit8 v16, v1, -0x1

    .local v16, i:I
    :goto_3
    if-ltz v16, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    iget-object v8, v1, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mCoverBlur:Lcom/miui/gallery/ui/ResourceTexture;

    div-int/lit8 v1, v4, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mChildPixelGap:I

    mul-int v2, v2, v16

    add-int v10, v1, v2

    neg-int v1, v5

    div-int/lit8 v11, v1, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mChildPixelGap:I

    move-object/from16 v9, p1

    move v13, v5

    invoke-virtual/range {v8 .. v13}, Lcom/miui/gallery/ui/ResourceTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 262
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 254
    .end local v16           #i:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 267
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    sget-object v2, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    if-ne v1, v2, :cond_5

    .line 268
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mWaitLoadingDisplayed:Z

    .line 271
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    instance-of v1, v1, Lcom/miui/gallery/ui/FadeInTexture;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    check-cast v1, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 275
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    const-string v0, "GalleryDisplayItem(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$GalleryDisplayItem;->mCoverIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
