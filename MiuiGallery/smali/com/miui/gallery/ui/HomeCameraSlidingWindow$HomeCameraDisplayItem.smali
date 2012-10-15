.class public Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;
.super Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;
.source "HomeCameraSlidingWindow.java"

# interfaces
.implements Lcom/miui/gallery/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomeCameraSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeCameraDisplayItem"
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
.field final synthetic this$0:Lcom/miui/gallery/ui/HomeCameraSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomeCameraSlidingWindow;ILcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter
    .parameter "slotIndex"
    .parameter "item"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeCameraSlidingWindow;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$AbstractHomeSlotViewDisplayItem;-><init>(Lcom/miui/gallery/ui/HomeSlidingWindowBase;ILcom/miui/gallery/data/MediaItem;Z)V

    .line 135
    return-void
.end method


# virtual methods
.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 13
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v0}, Lcom/miui/gallery/ui/Texture;->getWidth()I

    move-result v3

    .line 141
    .local v3, width:I
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-interface {v0}, Lcom/miui/gallery/ui/Texture;->getHeight()I

    move-result v4

    .line 143
    .local v4, height:I
    iget v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mBoxWidth:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v11, v0, v1

    .line 144
    .local v11, scalex:F
    iget v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mBoxHeight:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v12, v0, v1

    .line 145
    .local v12, scaley:F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 147
    .local v10, scale:F
    int-to-float v0, v3

    mul-float/2addr v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 148
    int-to-float v0, v4

    mul-float/2addr v0, v10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 151
    if-nez p2, :cond_3

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, path:Lcom/miui/gallery/data/Path;
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v6

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeCameraSlidingWindow;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    iget-object v2, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->getRotation()I

    move-result v5

    iget v7, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mMediaType:I

    iget-boolean v8, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mIsPanorama:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IZ)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    sget-object v1, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mWaitLoadingTexture:Lcom/miui/gallery/ui/ColorTexture;

    if-ne v0, v1, :cond_1

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mWaitLoadingDisplayed:Z

    .line 159
    :cond_1
    const/4 v9, 0x0

    .line 160
    .local v9, result:I
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    instance-of v0, v0, Lcom/miui/gallery/ui/FadeInTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mContent:Lcom/miui/gallery/ui/Texture;

    check-cast v0, Lcom/miui/gallery/ui/FadeInTexture;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    or-int/lit8 v9, v9, 0x2

    .line 168
    .end local v6           #path:Lcom/miui/gallery/data/Path;
    .end local v9           #result:I
    :cond_2
    :goto_0
    return v9

    .line 165
    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeCameraSlidingWindow;

    iget-object v0, v0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow;->mSelectionDrawer:Lcom/miui/gallery/ui/SelectionDrawer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/miui/gallery/ui/SelectionDrawer;->drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 168
    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const-string v0, "HomeCameraDisplayItem[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/gallery/ui/HomeCameraSlidingWindow$HomeCameraDisplayItem;->mSlotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
