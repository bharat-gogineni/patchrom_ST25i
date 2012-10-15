.class Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "AlbumSetSlidingWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelDisplayItem"
.end annotation


# instance fields
.field private mCountText:Ljava/lang/String;

.field private mLastWidth:I

.field private final mSlotIndex:I

.field private mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;I)V
    .locals 0
    .parameter
    .parameter "slotIndex"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 561
    iput p2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mSlotIndex:I

    .line 562
    return-void
.end method


# virtual methods
.method public getIdentity()J
    .locals 2

    .prologue
    .line 603
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public render(Lcom/miui/gallery/ui/GLCanvas;I)I
    .locals 5
    .parameter "canvas"
    .parameter "pass"

    .prologue
    .line 590
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxWidth:I

    iget v4, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mLastWidth:I

    if-eq v3, v4, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->updateContent()Z

    .line 594
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    invoke-static {v3}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    move-result-object v0

    .line 595
    .local v0, s:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxWidth:I

    neg-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 596
    .local v1, x:I
    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxHeight:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->albumLabelOffsetY:I

    sub-int v2, v3, v4

    .line 597
    .local v2, y:I
    iget-object v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    iget v4, v0, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->leftMargin:I

    add-int/2addr v4, v1

    invoke-virtual {v3, p1, v4, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 598
    const/4 v3, 0x0

    return v3
.end method

.method public updateContent()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 566
    const-string v0, ""

    .line 567
    .local v0, title:Ljava/lang/String;
    const-string v5, ""

    .line 568
    .local v5, countText:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mSource:Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$1100(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mSlotIndex:I

    invoke-interface {v1, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase$ModelBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    .line 569
    .local v7, set:Lcom/miui/gallery/data/MediaSet;
    if-eqz v7, :cond_0

    .line 570
    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mCountText:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mLastWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    const/4 v4, 0x0

    .line 585
    :goto_0
    return v4

    .line 577
    :cond_1
    iput-object v0, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mTitle:Ljava/lang/String;

    .line 578
    iput-object v5, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mCountText:Ljava/lang/String;

    .line 579
    iget v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxWidth:I

    iput v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mLastWidth:I

    .line 581
    iget-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->this$0:Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;

    #getter for: Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->mLabelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    invoke-static {v1}, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;->access$400(Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase;)Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    move-result-object v6

    .line 582
    .local v6, s:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;
    iget v1, v6, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->titleFontSize:I

    int-to-float v1, v1

    const/4 v2, -0x1

    iget v3, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mBoxWidth:I

    iget v8, v6, Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;->leftMargin:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZLjava/lang/String;)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/ui/AlbumSetSlidingWindowBase$LabelDisplayItem;->mTextureTitle:Lcom/miui/gallery/ui/StringTexture;

    goto :goto_0
.end method
