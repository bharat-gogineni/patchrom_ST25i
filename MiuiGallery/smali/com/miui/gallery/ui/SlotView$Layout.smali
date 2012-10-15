.class public Lcom/miui/gallery/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalPadding:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotGap:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

.field private mUnitCount:I

.field private mVerticalPadding:I

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 7

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotWidth:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    .line 521
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHeight:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotVerticalPadding:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    .line 530
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotHorizontalPadding:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 534
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters(IIIII)V

    .line 536
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 537
    return-void

    .line 523
    :cond_0
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v6, v0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsLand:I

    .line 524
    .local v6, rows:I
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v0, v0, Lcom/miui/gallery/ui/SlotView$Spec;->slotGap:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    .line 525
    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    add-int/lit8 v2, v6, -0x1

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    .line 526
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    goto :goto_0

    .line 523
    .end local v6           #rows:I
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget v6, v0, Lcom/miui/gallery/ui/SlotView$Spec;->rowsPort:I

    goto :goto_1
.end method

.method private initLayoutParameters(IIIII)V
    .locals 5
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "padding"

    .prologue
    .line 507
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v2, p2

    sub-int/2addr v2, p5

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v3, p4

    div-int v1, v2, v3

    .line 508
    .local v1, unitCount:I
    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 509
    :cond_0
    iput v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    .line 512
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    div-int v0, v2, v3

    .line 513
    .local v0, count:I
    mul-int v2, v0, p3

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mContentLength:I

    .line 514
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 572
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 573
    :cond_0
    if-ge p1, p2, :cond_1

    .line 574
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    .line 575
    iput p2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_0
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 546
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 556
    .local v2, position:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    div-int v4, v2, v5

    .line 557
    .local v4, startRow:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 558
    .local v3, start:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v1, v5, v6

    .line 560
    .local v1, endRow:I
    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 561
    .local v0, end:I
    invoke-direct {p0, v3, v0}, Lcom/miui/gallery/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 563
    return-void
.end method


# virtual methods
.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 624
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    add-int v0, v1, v2

    .line 625
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #limit:I
    :cond_0
    return v0
.end method

.method public getSlotHeight()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 590
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v0, v6, 0x0

    .line 591
    .local v0, absoluteX:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    add-int v1, v6, v7

    .line 593
    .local v1, absoluteY:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    sub-int/2addr v0, v6

    .line 594
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    sub-int/2addr v1, v6

    .line 596
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v2, v0, v6

    .line 597
    .local v2, columnIdx:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    div-int v4, v1, v6

    .line 599
    .local v4, rowIdx:I
    if-ltz v2, :cond_0

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    if-lt v2, v6, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v5

    .line 603
    :cond_1
    if-ltz v4, :cond_0

    .line 607
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v0, v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    if-ge v6, v7, :cond_0

    .line 611
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v6, v7

    rem-int v6, v1, v6

    iget v7, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    if-ge v6, v7, :cond_0

    .line 615
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v6, v4

    add-int v3, v6, v2

    .line 619
    .local v3, index:I
    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    if-lt v3, v6, :cond_2

    move v3, v5

    .end local v3           #index:I
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"

    .prologue
    .line 472
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, p1, v4

    .line 473
    .local v1, row:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 476
    .local v0, col:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int v2, v4, v5

    .line 477
    .local v2, x:I
    iget v4, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int v3, v4, v5

    .line 478
    .local v3, y:I
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getSlotWidth()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotWidth:I

    return v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 566
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mScrollPosition:I

    .line 568
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 540
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mWidth:I

    .line 541
    iput p2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHeight:I

    .line 542
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    .line 543
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    .line 459
    iput p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSlotCount:I

    .line 460
    iget v0, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 461
    .local v0, hPadding:I
    iget v1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    .line 462
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$Layout;->initLayoutParameters()V

    .line 463
    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mVerticalPadding:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mHorizontalPadding:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSlotSpec(Lcom/miui/gallery/ui/SlotView$Spec;)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotView$Layout;->mSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    .line 456
    return-void
.end method
