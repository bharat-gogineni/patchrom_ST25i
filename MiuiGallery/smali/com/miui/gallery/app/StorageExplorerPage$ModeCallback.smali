.class Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "StorageExplorerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/app/Activity;Landroid/widget/EditableListView;)V
    .locals 0
    .parameter
    .parameter "activity"
    .parameter "listView"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    .line 306
    invoke-direct {p0, p2, p3}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 2
    .parameter "mode"
    .parameter "checked"

    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onBatchCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 380
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->onCheckStateChanged(Ljava/lang/Integer;Z)V

    .line 381
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    .line 312
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v8, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v8}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/app/StorageExplorerPage;->setViewLayout(Landroid/widget/EditableListView;Z)V

    .line 313
    invoke-super {p0, p1, p2}, Landroid/widget/EditableListView$EditableModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5

    .line 314
    .local v5, ret:Z
    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 316
    .local v2, customView:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 317
    .local v0, button:Landroid/widget/Button;
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v7, v7, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 321
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v7, v7, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v10, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 323
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;
    invoke-static {v7, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->access$202(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/view/Menu;)Landroid/view/Menu;

    .line 325
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v7}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditableListView;->getFirstVisiblePosition()I

    move-result v4

    .local v4, i:I
    :goto_0
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v7}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditableListView;->getLastVisiblePosition()I

    move-result v7

    if-gt v4, v7, :cond_2

    .line 326
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v7}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 327
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_1

    .line 325
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const v7, 0x1020001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 331
    .local v1, checkBox:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 334
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/gallery/app/StorageExplorerPage;->access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x10a

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 336
    .local v3, fadeinAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 339
    .end local v1           #checkBox:Landroid/view/View;
    .end local v3           #fadeinAnimation:Landroid/view/animation/Animation;
    .end local v6           #view:Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I
    invoke-static {v7, v10}, Lcom/miui/gallery/app/StorageExplorerPage;->access$402(Lcom/miui/gallery/app/StorageExplorerPage;I)I

    .line 340
    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #setter for: Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I
    invoke-static {v7, v10}, Lcom/miui/gallery/app/StorageExplorerPage;->access$502(Lcom/miui/gallery/app/StorageExplorerPage;I)I

    .line 342
    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->setViewLayout(Landroid/widget/EditableListView;Z)V

    .line 349
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 350
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$600(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 351
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 2
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 373
    invoke-super/range {p0 .. p5}, Landroid/widget/EditableListView$EditableModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 374
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/miui/gallery/app/StorageExplorerPage;->onCheckStateChanged(Ljava/lang/Integer;Z)V

    .line 375
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 361
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 362
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return v3

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    goto :goto_0
.end method
