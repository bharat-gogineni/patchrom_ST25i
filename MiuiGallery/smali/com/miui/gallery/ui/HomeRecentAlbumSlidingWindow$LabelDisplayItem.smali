.class Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "HomeRecentAlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelDisplayItem"
.end annotation


# instance fields
.field private mLastWidth:I

.field private final mSlotIndex:I

.field private mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;I)V
    .locals 0
    .parameter
    .parameter "slotIndex"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 310
    iput p2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    .line 311
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 352
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 6
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 338
    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    if-eq v4, v5, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->updateContent()Z

    .line 342
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v1

    .line 343
    .local v1, s:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    neg-int v4, v4

    div-int/lit8 v2, v4, 0x2

    .line 344
    .local v2, x:I
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v4

    iget v0, v4, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->recentAlbumBlackCoverHeight:I

    .line 345
    .local v0, blackCoverHeight:I
    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v5}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v5

    iget v5, v5, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 346
    .local v3, y:I
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    iget v5, v1, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    add-int/2addr v5, v2

    invoke-virtual {v4, p1, v5, v3}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 347
    const/4 v4, 0x0

    return v4
.end method

.method public updateContent()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 315
    const-string v2, ""

    .line 317
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mSource:Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$400(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mSlotIndex:I

    invoke-interface {v4, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 318
    .local v1, set:Lcom/miui/gallery/data/MediaSet;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTitle:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    const/4 v3, 0x0

    .line 333
    :goto_0
    return v3

    .line 326
    :cond_1
    iput-object v2, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTitle:Ljava/lang/String;

    .line 327
    iget v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iput v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mLastWidth:I

    .line 329
    iget-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;

    #getter for: Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->mLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    invoke-static {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;->access$200(Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow;)Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    move-result-object v0

    .line 330
    .local v0, s:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;
    iget v4, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->titleFontSize:I

    int-to-float v4, v4

    const/4 v5, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mBoxWidth:I

    iget v7, v0, Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;->leftMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v2, v4, v5, v6, v3}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/ui/HomeRecentAlbumSlidingWindow$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    goto :goto_0
.end method
