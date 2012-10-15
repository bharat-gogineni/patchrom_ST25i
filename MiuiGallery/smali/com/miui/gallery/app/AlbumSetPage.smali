.class public Lcom/miui/gallery/app/AlbumSetPage;
.super Lcom/miui/gallery/app/AlbumSetPageBase;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mAlbumSetShowType:I

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

.field private mShowDetails:Z

.field private mSortBy:I

.field private mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;-><init>()V

    .line 493
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method private changeShowType(I)V
    .locals 2
    .parameter "showType"

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetView()Lcom/miui/gallery/ui/AlbumSetView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/AlbumSetView;->changeShowType(I)V

    .line 254
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->changeShowType(I)V

    .line 256
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumSetPage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method private getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    check-cast v0, Lcom/miui/gallery/app/AlbumSetDataAdapter;

    return-object v0
.end method

.method private getAlbumSetView()Lcom/miui/gallery/ui/AlbumSetView;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    check-cast v0, Lcom/miui/gallery/ui/AlbumSetView;

    return-object v0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 422
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 423
    .local v0, count:I
    const v2, 0x7f0f0001

    .line 424
    .local v2, string:I
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, format:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    .line 472
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 473
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 474
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 475
    return-void
.end method

.method private setSortBy(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter "item"
    .parameter "sortBy"

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 414
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    if-eq v0, p2, :cond_0

    .line 415
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    .line 416
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->setSortBy(I)V

    .line 417
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refreshPage()V

    .line 419
    :cond_0
    return-void
.end method

.method private setTabClickable(Z)V
    .locals 3
    .parameter "isTabClickable"

    .prologue
    .line 340
    const v2, 0x7f0b0008

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 341
    .local v1, dragRecent:Landroid/widget/LinearLayout;
    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 342
    .local v0, dragAll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 344
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    .line 479
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 482
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 483
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPage$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumSetPage$2;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 490
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 491
    return-void
.end method

.method private toggleDragTab(I)V
    .locals 12
    .parameter "showType"

    .prologue
    const v11, 0x7f020003

    const v10, 0x7f020002

    .line 215
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, resource:Landroid/content/res/Resources;
    const v8, 0x7f08000f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 217
    .local v7, textColorNormal:Landroid/content/res/ColorStateList;
    const v8, 0x7f08000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 220
    .local v6, textColorHighlight:Landroid/content/res/ColorStateList;
    const v8, 0x7f0b000a

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 221
    .local v4, dragRecentText:Landroid/widget/TextView;
    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, dragAllText:Landroid/widget/TextView;
    const v8, 0x7f0b0009

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 223
    .local v3, dragRecentStar:Landroid/widget/ImageView;
    const v8, 0x7f0b000b

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 224
    .local v2, dragRecentBottom:Landroid/widget/ImageView;
    const v8, 0x7f0b000f

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    .local v0, dragAllBottom:Landroid/widget/ImageView;
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 226
    const v8, 0x7f0b0011

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 228
    const v8, 0x7f020004

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 231
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :cond_0
    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 234
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 235
    const v8, 0x7f020005

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 238
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    :cond_1
    return-void
.end method


# virtual methods
.method protected createAlbumSetView()V
    .locals 6

    .prologue
    .line 263
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumSetPageConfig;

    move-result-object v0

    .line 264
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumSetPageConfig;
    new-instance v1, Lcom/miui/gallery/ui/AlbumSetView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v4, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v5, v0, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->labelSpec:Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/ui/AlbumSetView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/AlbumSetViewBase$LabelSpec;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    .line 266
    return-void
.end method

.method protected getNormalMenuId()I
    .locals 1

    .prologue
    .line 359
    const v0, 0x7f100001

    return v0
.end method

.method protected getSortBy()I
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getSortBy()I

    move-result v0

    return v0
.end method

.method protected getTitleViewHeight(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 79
    iget v0, p1, Lcom/miui/gallery/app/Config$AlbumSetPageConfig;->titleViewHeight:I

    return v0
.end method

.method protected handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    .line 105
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 103
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-static {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastVisitedType(I)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleNoneItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0071

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected initializeData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 203
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 205
    new-instance v1, Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v4, 0x100

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;II)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    new-instance v2, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 208
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetView()Lcom/miui/gallery/ui/AlbumSetView;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/ui/AlbumSetView;->setModel(Lcom/miui/gallery/ui/AlbumSetView$Model;I)V

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getAlbumSetDataAdapter()Lcom/miui/gallery/app/AlbumSetDataAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method protected initializeViews()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 270
    invoke-super {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->initializeViews()V

    .line 271
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v8, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 274
    const v8, 0x7f0b0008

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 275
    .local v2, dragRecent:Landroid/widget/LinearLayout;
    const v8, 0x7f0b000d

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    .local v0, dragAll:Landroid/widget/LinearLayout;
    const v8, 0x7f0b0007

    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 278
    .local v7, tabView:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 279
    .local v6, r:Landroid/content/res/Resources;
    const v8, 0x7f09001d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v4

    .line 281
    .local v4, dragWidth:I
    const v8, 0x7f090054

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v8}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v5

    .line 284
    .local v5, paddingLeft:I
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 285
    .local v3, dragRecentParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 287
    .local v1, dragAllParams:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    invoke-virtual {v7, v5, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 294
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v8}, Lcom/miui/gallery/app/AlbumSetPage;->toggleDragTab(I)V

    .line 302
    new-instance v8, Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v8}, Lcom/miui/gallery/ui/TaskListenerForRefresh;-><init>()V

    iput-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    .line 303
    new-instance v8, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v9, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v10, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 304
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v9, Lcom/miui/gallery/app/AlbumSetPage$1;

    invoke-direct {v9, p0}, Lcom/miui/gallery/app/AlbumSetPage$1;-><init>(Lcom/miui/gallery/app/AlbumSetPage;)V

    invoke-virtual {v8, v9}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 309
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 313
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 314
    .local v0, showType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 324
    :goto_0
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    if-eq v0, v1, :cond_0

    .line 325
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 326
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->toggleDragTab(I)V

    .line 327
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->changeShowType(I)V

    .line 329
    :cond_0
    return-void

    .line 316
    :sswitch_0
    const/4 v0, 0x2

    .line 317
    goto :goto_0

    .line 320
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x7f0b0008 -> :sswitch_0
        0x7f0b000d -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 178
    const v0, 0x7f0b002f

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->inflatePageView(II)V

    .line 181
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastVisitedType()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetShowType:I

    .line 182
    new-instance v0, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumSetPage;Lcom/miui/gallery/app/AlbumSetPage$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    .line 185
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/AlbumSetPageBase;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 403
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 367
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 368
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 369
    goto :goto_0

    .line 372
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refresh()V

    move v0, v1

    .line 373
    goto :goto_0

    .line 381
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/app/AlbumSetPage;->setSortBy(Landroid/view/MenuItem;I)V

    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :sswitch_3
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->hideDetails()V

    :goto_1
    move v0, v1

    .line 396
    goto :goto_0

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->showDetails()V

    goto :goto_1

    .line 392
    :cond_1
    const v2, 0x7f0d0070

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 399
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 400
    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x7f0b00aa -> :sswitch_0
        0x7f0b00ab -> :sswitch_4
        0x7f0b00ac -> :sswitch_1
        0x7f0b00b9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->isGetContent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->isGetAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumSetPage;->onSingleTapUp(I)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    .line 168
    .local v0, set:Lcom/miui/gallery/data/MediaSet;
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setAutoLeaveSelectionMode(Z)V

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsSource:Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumSetPage$MyDetailsSource;->findIndex(I)I

    .line 172
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 192
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 193
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSortBy()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    .line 334
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSortBy:I

    invoke-static {p1, v0}, Lcom/miui/gallery/util/AlbumUtils;->prepareOptionsMenu(Landroid/view/Menu;I)V

    .line 335
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMenu:Landroid/view/Menu;

    .line 336
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 199
    return-void
.end method

.method protected onRootPaneLayout(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;IIII)V
    .locals 2
    .parameter "config"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/gallery/app/GalleryActionBar;->getHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {v1, p2, v0, p4, p5}, Lcom/miui/gallery/ui/DetailsHelper;->layout(IIII)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    goto :goto_0
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 465
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 466
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 468
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z

    .line 433
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 434
    invoke-direct {p0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->setTabClickable(Z)V

    .line 435
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    .line 436
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->vibrate()V

    goto :goto_0

    .line 442
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/gallery/app/AlbumSetPage;->mInselectionMode:Z

    .line 443
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/app/AlbumSetPage;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 444
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPage;->setTabClickable(Z)V

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 446
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 448
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->isExcuteRefeshTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->refreshPage()V

    .line 451
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->resetExcuteRefeshTask()V

    goto :goto_0

    .line 456
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 122
    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 127
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 132
    invoke-virtual {p0, p1, v3}, Lcom/miui/gallery/app/AlbumSetPage;->savePositions(I[I)V

    .line 133
    const-string v4, "set-center"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 134
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->isGetAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->isLeafAlbum()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 136
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 138
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 141
    const-string v1, "media-path"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPage;->isGetContent()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    .line 147
    const-string v3, "auto-select-all"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    :cond_4
    const-string v3, "media-path"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "media-name"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "cluster-menu"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 157
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPage;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    goto/16 :goto_0
.end method

.method protected postCreateActionBar(Lcom/miui/gallery/app/GalleryActionBar;Landroid/view/Menu;)V
    .locals 3
    .parameter "actionBar"
    .parameter "menu"

    .prologue
    .line 348
    invoke-static {p2}, Lcom/miui/gallery/util/AlbumUtils;->addAlbumSetSortMenu(Landroid/view/Menu;)V

    .line 350
    const v1, 0x7f0b00aa

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 351
    .local v0, selectItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 352
    const v1, 0x7f0d0043

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/app/FilterUtils;->setupMenuItems(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/data/Path;Z)V

    .line 355
    return-void
.end method
