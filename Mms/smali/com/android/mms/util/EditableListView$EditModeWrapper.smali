.class Lcom/android/mms/util/EditableListView$EditModeWrapper;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

.field final synthetic this$0:Lcom/android/mms/util/EditableListView;


# direct methods
.method constructor <init>(Lcom/android/mms/util/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/util/EditableListView$EditModeWrapper;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->handleHeadFooterPosition(I)I

    move-result v0

    return v0
.end method

.method private handleHeadFooterPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 625
    if-gez p1, :cond_0

    .line 636
    .end local p1
    :goto_0
    return p1

    .line 632
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->getHeaderViewsCount()I

    move-result v0

    .line 633
    .local v0, numHeaders:I
    if-lt p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v2}, Lcom/android/mms/util/EditableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 634
    :cond_1
    const/4 p1, -0x1

    goto :goto_0

    .line 636
    :cond_2
    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private innerEnterEditMode(Ljava/lang/Integer;)V
    .locals 3
    .parameter "initPosition"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;

    move-result-object v1

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v1}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v2}, Lcom/android/mms/util/EditableListView;->isClickable()Z

    move-result v2

    #setter for: Lcom/android/mms/util/EditableListView;->mPreClickable:Z
    invoke-static {v1, v2}, Lcom/android/mms/util/EditableListView;->access$702(Lcom/android/mms/util/EditableListView;Z)Z

    .line 583
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v2}, Lcom/android/mms/util/EditableListView;->isLongClickable()Z

    move-result v2

    #setter for: Lcom/android/mms/util/EditableListView;->mPreLongClickable:Z
    invoke-static {v1, v2}, Lcom/android/mms/util/EditableListView;->access$802(Lcom/android/mms/util/EditableListView;Z)Z

    .line 584
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v2, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    invoke-virtual {v2}, Lcom/android/mms/util/EditableListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    #setter for: Lcom/android/mms/util/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v1, v2}, Lcom/android/mms/util/EditableListView;->access$902(Lcom/android/mms/util/EditableListView;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    .line 586
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    new-instance v2, Lcom/android/mms/util/EditableListView$EditModeWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/mms/util/EditableListView$EditModeWrapper$1;-><init>(Lcom/android/mms/util/EditableListView$EditModeWrapper;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 595
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/util/EditableListView;->setLongClickable(Z)V

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, innerPosition:Ljava/lang/Integer;
    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->handleHeadFooterPosition(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 601
    const/4 v0, 0x0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;

    move-result-object v1

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->enterEditMode(Ljava/lang/Integer;)V
    invoke-static {v1, v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$1200(Lcom/android/mms/util/EditableListView$EditableListData;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private innerExitEditMode()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;

    move-result-object v0

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->isEditMode()Z
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$200(Lcom/android/mms/util/EditableListView$EditableListData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mPreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$900(Lcom/android/mms/util/EditableListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 618
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mPreClickable:Z
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$700(Lcom/android/mms/util/EditableListView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/EditableListView;->setClickable(Z)V

    .line 619
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    iget-object v1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mPreLongClickable:Z
    invoke-static {v1}, Lcom/android/mms/util/EditableListView;->access$800(Lcom/android/mms/util/EditableListView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/EditableListView;->setLongClickable(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mCheckedData:Lcom/android/mms/util/EditableListView$EditableListData;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$600(Lcom/android/mms/util/EditableListView;)Lcom/android/mms/util/EditableListView$EditableListData;

    move-result-object v0

    #calls: Lcom/android/mms/util/EditableListView$EditableListData;->exitEditMode()V
    invoke-static {v0}, Lcom/android/mms/util/EditableListView$EditableListData;->access$1300(Lcom/android/mms/util/EditableListView$EditableListData;)V

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/util/EditableListView$EditModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1}, Lcom/android/mms/util/EditableListView$EditModeListener;->onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V

    .line 566
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/util/EditableListView$EditModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    #getter for: Lcom/android/mms/util/EditableListView;->mInitPosition:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/android/mms/util/EditableListView;->access$400(Lcom/android/mms/util/EditableListView;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->innerEnterEditMode(Ljava/lang/Integer;)V

    .line 544
    const/4 v0, 0x1

    .line 546
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1}, Lcom/android/mms/util/EditableListView$EditModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 559
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->this$0:Lcom/android/mms/util/EditableListView;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/util/EditableListView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/util/EditableListView;->access$502(Lcom/android/mms/util/EditableListView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 560
    invoke-direct {p0}, Lcom/android/mms/util/EditableListView$EditModeWrapper;->innerExitEditMode()V

    .line 561
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/util/EditableListView$EditModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onVisibleViewCheckStateChanged(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/mms/util/EditableListView$EditModeListener;->onVisibleViewCheckStateChanged(Landroid/view/View;Z)V

    .line 571
    return-void
.end method

.method public setWrapped(Lcom/android/mms/util/EditableListView$EditModeListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/mms/util/EditableListView$EditModeWrapper;->mWrapped:Lcom/android/mms/util/EditableListView$EditModeListener;

    .line 539
    return-void
.end method
