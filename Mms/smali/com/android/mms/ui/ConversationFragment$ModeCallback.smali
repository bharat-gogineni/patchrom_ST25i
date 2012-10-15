.class Lcom/android/mms/ui/ConversationFragment$ModeCallback;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lcom/android/mms/util/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

.field private mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationFragment;Lcom/android/mms/ui/ConversationFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationFragment$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationFragment;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationFragment$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    return-object v0
.end method

.method private createMenu(Landroid/view/ActionMode;)V
    .locals 7
    .parameter "mode"

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x603001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, customView:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 598
    new-instance v3, Landroid/widget/EditableListView$DropDownMenu;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v4

    const v2, 0x60b0002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v5, 0x7f0f0005

    new-instance v6, Lcom/android/mms/ui/ConversationFragment$ModeCallback$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationFragment$ModeCallback$1;-><init>(Lcom/android/mms/ui/ConversationFragment$ModeCallback;)V

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/widget/EditableListView$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    .line 610
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    const v3, 0x7f0a018b

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    :cond_0
    return-void
.end method

.method private updateMenu(I)V
    .locals 7
    .parameter "checkCount"

    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    const v3, 0x7f0a018d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v6}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    invoke-virtual {v2, v1}, Landroid/widget/EditableListView$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mSelectionMenu:Landroid/widget/EditableListView$DropDownMenu;

    const v3, 0x7f1000f1

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 624
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v2}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    const v2, 0x7f0a0183

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    const v2, 0x7f0a0182

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 554
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 565
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 556
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v0

    .line 557
    .local v0, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$700(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/ui/ConversationFragment$ThreadListQueryHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationFragment;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000dd
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckStateChanged(Lcom/android/mms/util/EditableListView$EditableListViewCheckable;)V
    .locals 3
    .parameter "checkable"

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-interface {p1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setCheckedItem(Ljava/util/HashSet;)V

    .line 576
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 578
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    invoke-interface {v1}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    .line 579
    .local v0, checkCount:I
    if-nez v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->exitEditMode()V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->updateMenu(I)V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$500(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 538
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 540
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationListAdapter;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 541
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enterCheckMode()V

    .line 543
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->getEditableListViewCheckable()Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->createMenu(Landroid/view/ActionMode;)V

    .line 546
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationFragment;->access$400(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListAdapter;

    .line 570
    .local v0, adapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->exitCheckMode()V

    .line 571
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibleViewCheckStateChanged(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 588
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v0, :cond_0

    .line 589
    check-cast p1, Lcom/android/mms/ui/ConversationListItem;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/mms/ui/ConversationListItem;->onCheckStateChanged(Z)V

    .line 591
    :cond_0
    return-void
.end method
