.class public Lcom/miui/player/ui/controller/MultiChoiceController;
.super Ljava/lang/Object;
.source "MultiChoiceController.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;,
        Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;,
        Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;,
        Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$MultiChoiceModeListener;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMenu:Landroid/view/Menu;

.field private mActionMode:Landroid/view/ActionMode;

.field private final mCachedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIgnoreHeaderCount:I

.field private mItemViewBinder:Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

.field private final mListView:Landroid/widget/AbsListView;

.field private mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

.field private final mSelectAllListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

.field private mUpdateLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/miui/player/ui/controller/MultiChoiceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/controller/MultiChoiceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;ILcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V
    .locals 1
    .parameter "lv"
    .parameter "ignoreHeaderCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "I",
            "Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    .local p3, callback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;,"Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mUpdateLocked:Z

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    .line 273
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/controller/MultiChoiceController$1;-><init>(Lcom/miui/player/ui/controller/MultiChoiceController;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectAllListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 34
    iput-object p1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    .line 35
    iput p2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mIgnoreHeaderCount:I

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 37
    iput-object p3, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V
    .locals 1
    .parameter "lv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            "Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    .local p2, callback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;,"Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/player/ui/controller/MultiChoiceController;-><init>(Landroid/widget/AbsListView;ILcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;)V

    .line 42
    return-void
.end method

.method private getFooterViewCount()I
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->getListViewFooterCount(Landroid/widget/AdapterView;)I

    move-result v0

    return v0
.end method

.method private getHeaderViewCount()I
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->getListViewHeaderCount(Landroid/widget/AdapterView;)I

    move-result v0

    return v0
.end method

.method private keepMultiChoiceState(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 168
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 171
    :cond_0
    return-void
.end method

.method private updateSelectionBar(I)V
    .locals 3
    .parameter "size"

    .prologue
    .line 291
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    invoke-interface {v1, p1}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->getSelectionMsg(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090004

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->setItemTitle(II)V

    .line 296
    :cond_0
    return-void

    .line 293
    :cond_1
    const v0, 0x7f090003

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Landroid/view/View;I)V
    .locals 3
    .parameter "itemView"
    .parameter "position"

    .prologue
    .line 119
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mItemViewBinder:Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mItemViewBinder:Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getHeaderViewCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;->bindView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method public clean()I
    .locals 3

    .prologue
    .line 83
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    .line 84
    .local v1, lv:Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    .line 86
    .local v0, count:I
    invoke-virtual {v1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 87
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 88
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateMenu()V

    .line 90
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    invoke-interface {v2}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->notifyDataSetChanged()V

    .line 92
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    if-eqz v2, :cond_0

    .line 93
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateSelectionBar(I)V

    .line 95
    :cond_0
    return v0
.end method

.method public isAllSelected()Z
    .locals 4

    .prologue
    .line 112
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    .line 114
    .local v0, lv:Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getHeaderViewCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getFooterViewCount()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mIgnoreHeaderCount:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 108
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leave()Z
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 101
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 229
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v0, p2, v1}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->handleActionItem(Landroid/view/MenuItem;Ljava/util/Set;)V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    const/4 v3, 0x1

    .line 236
    new-instance v0, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectAllListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;-><init>(Landroid/content/Context;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    .line 237
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->getSelectionBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 239
    iput-object p1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMode:Landroid/view/ActionMode;

    .line 240
    iput-object p2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    .line 241
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-interface {v0, v3, v1}, Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateSelectionBar(I)V

    .line 246
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 253
    iput-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMode:Landroid/view/ActionMode;

    .line 254
    iput-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    .line 255
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;->dismiss()V

    .line 257
    iput-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-interface {v0, v1, v2}, Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;->onModeChanged(ZLandroid/widget/AbsListView;)V

    .line 263
    :cond_1
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 4
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 176
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    .line 178
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    iget v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mIgnoreHeaderCount:I

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getHeaderViewCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getFooterViewCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_2

    .line 180
    :cond_0
    invoke-direct {p0, p5}, Lcom/miui/player/ui/controller/MultiChoiceController;->keepMultiChoiceState(Z)V

    .line 201
    .end local v1           #keys:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :cond_1
    :goto_0
    return-void

    .line 184
    .restart local v1       #keys:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getHeaderViewCount()I

    move-result v2

    sub-int/2addr p2, v2

    .line 185
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    invoke-interface {v2, p2}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, key:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_3

    .line 187
    if-eqz p5, :cond_4

    .line 188
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mUpdateLocked:Z

    if-nez v2, :cond_1

    .line 195
    invoke-virtual {p0, p2, p5}, Lcom/miui/player/ui/controller/MultiChoiceController;->setItemChecked(IZ)Z

    .line 196
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateMenu()V

    .line 198
    invoke-direct {p0, p5}, Lcom/miui/player/ui/controller/MultiChoiceController;->keepMultiChoiceState(Z)V

    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 267
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iput-object p2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public selectAll()I
    .locals 8

    .prologue
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    const/4 v7, 0x1

    .line 61
    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mListView:Landroid/widget/AbsListView;

    .line 62
    .local v2, lv:Landroid/widget/AbsListView;
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    .line 63
    .local v3, oldCount:I
    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getHeaderViewCount()I

    move-result v5

    iget v6, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mIgnoreHeaderCount:I

    add-int v0, v5, v6

    .line 64
    .local v0, headerCount:I
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    invoke-direct {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->getFooterViewCount()I

    move-result v6

    sub-int v4, v5, v6

    .line 66
    .local v4, total:I
    iput-boolean v7, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mUpdateLocked:Z

    .line 67
    move v1, v0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 68
    invoke-virtual {v2, v1, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mUpdateLocked:Z

    .line 71
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateMenu()V

    .line 73
    iget-object v5, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    invoke-interface {v5}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->notifyDataSetChanged()V

    .line 75
    iget-object v5, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    if-eqz v5, :cond_1

    .line 76
    sub-int v5, v4, v0

    invoke-direct {p0, v5}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateSelectionBar(I)V

    .line 79
    :cond_1
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v5

    sub-int/2addr v5, v3

    return v5
.end method

.method setItemChecked(IZ)Z
    .locals 2
    .parameter "position"
    .parameter "value"

    .prologue
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    const/4 v0, 0x0

    .line 129
    iget-boolean v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mUpdateLocked:Z

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/MultiChoiceController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    invoke-interface {v0}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->notifyDataSetChanged()V

    .line 138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setItemViewBinder(Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;)V
    .locals 0
    .parameter "itemBinder"

    .prologue
    .line 49
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iput-object p1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mItemViewBinder:Lcom/miui/player/ui/controller/MultiChoiceController$ItemViewBinder;

    .line 50
    return-void
.end method

.method public setOnModeChangedListener(Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 45
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iput-object p1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mModeChangedListener:Lcom/miui/player/ui/controller/MultiChoiceController$ModeChangedListener;

    .line 46
    return-void
.end method

.method public updateMenu()V
    .locals 4

    .prologue
    .line 204
    .local p0, this:Lcom/miui/player/ui/controller/MultiChoiceController;,"Lcom/miui/player/ui/controller/MultiChoiceController<TT;>;"
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, mb:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    instance-of v1, v1, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    .end local v0           #mb:Lcom/android/internal/view/menu/MenuBuilder;
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 210
    .restart local v0       #mb:Lcom/android/internal/view/menu/MenuBuilder;
    :cond_0
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 215
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCallback:Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;

    iget-object v2, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mActionMenu:Landroid/view/Menu;

    iget-object v3, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Lcom/miui/player/ui/controller/MultiChoiceController$MultiChoiceItemProvider;->createActionMenu(Landroid/view/Menu;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mSelectionBar:Lcom/miui/player/ui/controller/MultiChoiceController$SelectionBar;

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/miui/player/ui/controller/MultiChoiceController;->mCachedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/controller/MultiChoiceController;->updateSelectionBar(I)V

    .line 225
    :cond_3
    return-void

    .line 217
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_4
    throw v1
.end method
