.class Lcom/miui/home/launcher/CellLayout$StayConfirm;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StayConfirm"
.end annotation


# instance fields
.field private lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DropTarget$DragObject;)Lcom/miui/home/launcher/DropTarget$DragObject;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 663
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #getter for: Lcom/miui/home/launcher/CellLayout;->mOccupiedCell:[[Landroid/view/View;
    invoke-static {v3}, Lcom/miui/home/launcher/CellLayout;->access$000(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v4, v4, v8

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v4, v4, v7

    aget-object v0, v3, v4

    .line 664
    .local v0, coveringView:Landroid/view/View;
    instance-of v3, v0, Lcom/miui/home/launcher/DropTarget;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/miui/home/launcher/DropTarget;

    .end local v0           #coveringView:Landroid/view/View;
    move-object v1, v0

    .line 665
    .local v1, targetView:Lcom/miui/home/launcher/DropTarget;
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v3, v3, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 666
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #getter for: Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;
    invoke-static {v3}, Lcom/miui/home/launcher/CellLayout;->access$100(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 668
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DropTarget$DragObject;)V

    .line 669
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #setter for: Lcom/miui/home/launcher/CellLayout;->mLastCoveringView:Lcom/miui/home/launcher/DropTarget;
    invoke-static {v3, v1}, Lcom/miui/home/launcher/CellLayout;->access$102(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;

    .line 688
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    .line 689
    return-void

    .end local v1           #targetView:Lcom/miui/home/launcher/DropTarget;
    .restart local v0       #coveringView:Landroid/view/View;
    :cond_1
    move-object v1, v2

    .line 664
    goto :goto_0

    .line 671
    .end local v0           #coveringView:Landroid/view/View;
    .restart local v1       #targetView:Lcom/miui/home/launcher/DropTarget;
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v3, v3, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-nez v3, :cond_3

    .line 672
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #getter for: Lcom/miui/home/launcher/CellLayout;->mOccupiedCellBak:[[Landroid/view/View;
    invoke-static {v3}, Lcom/miui/home/launcher/CellLayout;->access$200(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v4, v4, v8

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v4, v4, v7

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    .line 673
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #calls: Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V
    invoke-static {v3}, Lcom/miui/home/launcher/CellLayout;->access$300(Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_1

    .line 675
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v3, v3, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 676
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    #calls: Lcom/miui/home/launcher/CellLayout;->rollbackLayout()V
    invoke-static {v3}, Lcom/miui/home/launcher/CellLayout;->access$300(Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_1

    .line 678
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v3, v3, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v3, v7, :cond_6

    .line 679
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget v4, v4, Lcom/miui/home/launcher/DropTarget$DragObject;->x:I

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget v5, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget v5, v5, Lcom/miui/home/launcher/DropTarget$DragObject;->y:I

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget v6, v6, Lcom/miui/home/launcher/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v6, v6, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/home/launcher/CellLayout;->pointToCell(II[I)V

    .line 681
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout;->mCellXY:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v6, v6, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v6, v6, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->lastDragObject:Lcom/miui/home/launcher/DropTarget$DragObject;

    iget-object v7, v7, Lcom/miui/home/launcher/DropTarget$DragObject;->dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v7, v7, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    #calls: Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(IIII)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/CellLayout;->access$400(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto/16 :goto_1

    .line 684
    :cond_6
    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v5, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v5, v5, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v6, v6, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v6, v6, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v7, v7, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v7, v7, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    #calls: Lcom/miui/home/launcher/CellLayout;->cellToGapIndex(III)I
    invoke-static {v4, v5, v6, v7}, Lcom/miui/home/launcher/CellLayout;->access$500(Lcom/miui/home/launcher/CellLayout;III)I

    move-result v4

    #calls: Lcom/miui/home/launcher/CellLayout;->makeEmptyCellAt(I)V
    invoke-static {v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$600(Lcom/miui/home/launcher/CellLayout;I)V

    goto/16 :goto_1
.end method
