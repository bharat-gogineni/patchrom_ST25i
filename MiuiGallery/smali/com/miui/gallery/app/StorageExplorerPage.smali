.class public Lcom/miui/gallery/app/StorageExplorerPage;
.super Lcom/miui/gallery/app/StorageExplorerPageBase;
.source "StorageExplorerPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;,
        Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mActionbBarMenu:Landroid/view/Menu;

.field private mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

.field private mAllVolumeBucket:Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;

.field private mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

.field private mCheckedFileCount:I

.field private mCheckedFolderCount:I

.field private mDropdownNavigation:Landroid/view/View;

.field private mFilterFlags:I

.field private mGetContent:Z

.field private mIsPickContent:Z

.field private mIsSetLockscreen:Z

.field private mIsSetWallpaper:Z

.field private mListView:Landroid/widget/EditableListView;

.field private mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

.field private mNavigationBar:Landroid/view/View;

.field private mNavigationBarText:Landroid/widget/TextView;

.field private mNavigationBarUpDownArrow:Landroid/widget/ImageView;

.field private mNavigationClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCrop:Z

.field private mStorageHelper:Lcom/miui/gallery/util/StorageHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;-><init>()V

    .line 135
    const/16 v0, 0x24

    iput v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    .line 153
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$1;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;

    .line 708
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$2;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 789
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$3;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationClick:Landroid/view/View$OnClickListener;

    .line 1029
    return-void
.end method

.method private UpdateUIForExistFolder()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 518
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadRecentAlbumCache()V

    .line 520
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v6}, Lcom/miui/gallery/util/StorageHelper;->hasMountedVolume()Z

    move-result v2

    .line 523
    .local v2, hasMountedVolume:Z
    const v6, 0x7f0b0046

    invoke-virtual {p0, v6}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v10

    if-eqz v2, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    if-eqz v2, :cond_4

    move v6, v8

    :goto_1
    invoke-virtual {v10, v6}, Landroid/widget/EditableListView;->setVisibility(I)V

    .line 526
    const v6, 0x7f0b0001

    invoke-virtual {p0, v6}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v4

    .line 527
    .local v4, navigationBar:Landroid/view/View;
    if-eqz v2, :cond_7

    .line 528
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, bucketPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v6, v0}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v5, v9

    .line 530
    .local v5, showNavigationBar:Z
    :goto_2
    if-eqz v5, :cond_6

    move v6, v8

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    .end local v0           #bucketPath:Ljava/lang/String;
    .end local v5           #showNavigationBar:Z
    :goto_4
    const v6, 0x7f0b0045

    invoke-virtual {p0, v6}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, emptyView:Landroid/view/View;
    if-eqz v2, :cond_9

    .line 539
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v10}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 541
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->isModified()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 542
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->loadAllMedias()V

    .line 551
    :cond_0
    :goto_5
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :goto_6
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    iget-object v7, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v10}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v6, v8}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 561
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v6}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 563
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateActionBarText()V

    .line 564
    return-void

    .end local v1           #emptyView:Landroid/view/View;
    .end local v4           #navigationBar:Landroid/view/View;
    :cond_3
    move v6, v8

    .line 523
    goto/16 :goto_0

    :cond_4
    move v6, v7

    .line 524
    goto/16 :goto_1

    .restart local v0       #bucketPath:Ljava/lang/String;
    .restart local v4       #navigationBar:Landroid/view/View;
    :cond_5
    move v5, v8

    .line 529
    goto :goto_2

    .restart local v5       #showNavigationBar:Z
    :cond_6
    move v6, v7

    .line 530
    goto :goto_3

    .line 533
    .end local v0           #bucketPath:Ljava/lang/String;
    .end local v5           #showNavigationBar:Z
    :cond_7
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 546
    .restart local v1       #emptyView:Landroid/view/View;
    :cond_8
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v10, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v11, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v11}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/gallery/util/StorageHelper;->getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/miui/gallery/util/StorageHelper;->isVolumeMounted(Ljava/lang/String;)Z

    move-result v3

    .line 547
    .local v3, isVolumeMounted:Z
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->isModified()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 548
    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->loadAllMedias()V

    goto :goto_5

    .line 553
    .end local v3           #isVolumeMounted:Z
    :cond_9
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/util/StorageHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/StorageExplorerPage;Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/app/StorageExplorerPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/StorageExplorerPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput p1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/StorageExplorerPage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/StorageExplorerPage;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->onDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/StorageExplorerPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;III)V
    .locals 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 937
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 938
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;IIII)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconId"

    .prologue
    .line 941
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 943
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p5, :cond_0

    .line 944
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 946
    :cond_0
    return-void
.end method

.method private addSortMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 893
    const v0, 0x7f0d011f

    invoke-interface {p1, v5, v5, v4, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 895
    const v1, 0x7f0d0120

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 896
    const/4 v1, -0x1

    const v2, 0x7f0d0121

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 897
    const v1, 0x7f0d0122

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 898
    const/4 v1, -0x2

    const v2, 0x7f0d0123

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 899
    const/4 v1, 0x4

    const v2, 0x7f0d0126

    invoke-direct {p0, v0, v6, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 900
    const/4 v1, -0x3

    const/4 v2, 0x5

    const v3, 0x7f0d0127

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 902
    invoke-interface {v0, v5, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 903
    return-void
.end method

.method private canMultipleChoice()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mGetContent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsPickContent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBriefText(III)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1002
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1004
    if-lez p1, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d012f

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1008
    :cond_0
    if-lez p2, :cond_2

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1010
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0130

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    :cond_2
    if-lez p3, :cond_4

    .line 1016
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1017
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d012e

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1022
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 1026
    iget v0, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFolderCount:I

    iget v1, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    iget v2, p1, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 781
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/util/StorageHelper;->getAllVolumesDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 785
    :goto_0
    return-object v1

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/StorageHelper;->getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, volume:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/StorageHelper;->getVolumeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFileBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;
    .locals 1
    .parameter "path"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAllVolumeBucket:Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;

    .line 570
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->getBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    goto :goto_0
.end method

.method private getLeafPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, displayPath:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 773
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 774
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 776
    .end local v0           #displayPath:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getSelectedMetas()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v5}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 616
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 617
    .local v3, positions:Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 618
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 617
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 623
    .local v2, position:I
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v5, v2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 624
    .local v1, item:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 630
    .end local v0           #index:I
    .end local v1           #item:Lcom/miui/gallery/StorageExplorer/FileInfo;
    .end local v2           #position:I
    .end local v3           #positions:Landroid/util/SparseBooleanArray;
    :cond_2
    return-object v4
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 847
    :cond_0
    new-instance v1, Lcom/miui/gallery/app/StorageExplorerPage$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/StorageExplorerPage$4;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    .line 855
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    const-string v0, "StorageExplorerPage"

    const-string v1, "should select some metas before deleting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    const v3, 0x7f0d0048

    invoke-static {v0, v1, v2, p1, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "id"

    .prologue
    .line 634
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 635
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    :cond_0
    return-void

    .line 634
    .end local v0           #button:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private setupListView()V
    .locals 3

    .prologue
    .line 278
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    .line 280
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;Landroid/app/Activity;Landroid/widget/EditableListView;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    .line 282
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    const v1, 0x7f10000e

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mModeCallback:Lcom/miui/gallery/app/StorageExplorerPage$ModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setKeepExitModeIfNoItemChecked(Z)V

    .line 286
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->canMultipleChoice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 291
    :cond_0
    new-instance v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;-><init>(Lcom/miui/gallery/app/StorageExplorerPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    .line 292
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    return-void
.end method

.method private setupNaivgationBar()V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBar:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBar:Landroid/view/View;

    const v1, 0x7f0b0041

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->setupClick(Landroid/view/View;I)V

    .line 265
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarText:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    .line 267
    const/4 v0, 0x0

    const v1, 0x7f0b0042

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->setupClick(Landroid/view/View;I)V

    .line 268
    const v0, 0x7f0b0048

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    .line 269
    return-void
.end method

.method private showDropdownNavigation(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020088

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    return-void

    .line 272
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 273
    :cond_1
    const v0, 0x7f020087

    goto :goto_1
.end method

.method private switchEditMode()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0
.end method

.method private switchFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 575
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/StorageHelper;->getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, volume:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/StorageHelper;->isMountedVolume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const-string v1, "StorageExplorerPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path to switch is empty for some reason; switch to SD card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object p1, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    .line 588
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->increaseAlbumVisitCount(Ljava/lang/String;)V

    .line 589
    invoke-static {p1}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastVisitedFolderPath(Ljava/lang/String;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getFileBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 592
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    invoke-interface {v1, v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setFilterFlags(I)V

    .line 593
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 595
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 598
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->UpdateUIForExistFolder()V

    .line 599
    return-void
.end method

.method private updateActionBarMenu()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 386
    iget-object v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    if-eqz v8, :cond_1

    move v8, v9

    :goto_0
    const-string v11, "mActionbBarMenu should not be null"

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v8, v11, v12}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v11, 0x7f0b00b8

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 390
    .local v5, menuDelete:Landroid/view/MenuItem;
    iget v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    iget v11, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    add-int/2addr v8, v11

    if-lez v8, :cond_2

    move v8, v9

    :goto_1
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    iget-object v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v11, 0x7f0b00a9

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 395
    .local v6, menuRecentAlbum:Landroid/view/MenuItem;
    iget v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    if-nez v8, :cond_8

    iget v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    if-lez v8, :cond_8

    .line 396
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, hasNonRecentAlbums:Z
    const/4 v3, 0x0

    .line 402
    .local v3, hasZeroMetaDir:Z
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v1

    .line 403
    .local v1, fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 404
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 405
    .local v0, dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    if-nez v0, :cond_3

    .line 406
    const-string v8, "should be DirInfo"

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v1           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v2           #hasNonRecentAlbums:Z
    .end local v3           #hasZeroMetaDir:Z
    .end local v4           #index:I
    .end local v5           #menuDelete:Landroid/view/MenuItem;
    .end local v6           #menuRecentAlbum:Landroid/view/MenuItem;
    :cond_1
    move v8, v10

    .line 386
    goto :goto_0

    .restart local v5       #menuDelete:Landroid/view/MenuItem;
    :cond_2
    move v8, v10

    .line 390
    goto :goto_1

    .line 409
    .restart local v0       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .restart local v1       #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .restart local v2       #hasNonRecentAlbums:Z
    .restart local v3       #hasZeroMetaDir:Z
    .restart local v4       #index:I
    .restart local v6       #menuRecentAlbum:Landroid/view/MenuItem;
    :cond_3
    iget v8, v0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    iget v11, v0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    add-int/2addr v8, v11

    if-nez v8, :cond_4

    .line 411
    const/4 v3, 0x1

    .line 414
    :cond_4
    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/DirInfo;->isRecentAlbum()Z

    move-result v8

    if-nez v8, :cond_0

    .line 415
    const/4 v2, 0x1

    goto :goto_3

    .line 419
    .end local v0           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    :cond_5
    if-nez v2, :cond_6

    .line 420
    const v8, 0x7f0d00b2

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 434
    .end local v1           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v2           #hasNonRecentAlbums:Z
    .end local v3           #hasZeroMetaDir:Z
    .end local v4           #index:I
    :goto_4
    iget-object v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    const v11, 0x7f0b00b7

    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 435
    .local v7, menuSharePhoto:Landroid/view/MenuItem;
    iget v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    if-lez v8, :cond_9

    iget v8, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    if-nez v8, :cond_9

    :goto_5
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 436
    return-void

    .line 422
    .end local v7           #menuSharePhoto:Landroid/view/MenuItem;
    .restart local v1       #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .restart local v2       #hasNonRecentAlbums:Z
    .restart local v3       #hasZeroMetaDir:Z
    .restart local v4       #index:I
    :cond_6
    if-eqz v3, :cond_7

    .line 423
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 426
    :cond_7
    const v8, 0x7f0d00b1

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 430
    .end local v1           #fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    .end local v2           #hasNonRecentAlbums:Z
    .end local v3           #hasZeroMetaDir:Z
    .end local v4           #index:I
    :cond_8
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .restart local v7       #menuSharePhoto:Landroid/view/MenuItem;
    :cond_9
    move v9, v10

    .line 435
    goto :goto_5
.end method

.method private updateActionBarText()V
    .locals 7

    .prologue
    .line 248
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 250
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->getLeafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, leafPath:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0131

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v6}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFolderCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFolderCount()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getImageCount()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v4}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getVideoCount()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/StorageHelper;->getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, volume:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/util/StorageHelper;->isMountedVolume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    sget-object v1, Lcom/miui/gallery/StorageExplorer/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    .line 512
    .end local v0           #volume:Ljava/lang/String;
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->UpdateUIForExistFolder()V

    goto :goto_0
.end method


# virtual methods
.method public canDelete()Z
    .locals 4

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    .line 672
    .local v0, fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 673
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v1, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    .line 674
    .local v1, fileOrFolderPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/gallery/util/GalleryUtils;->showDeleteNoAccessAlert(Ljava/lang/String;Landroid/app/Activity;)V

    .line 676
    const/4 v3, 0x0

    .line 680
    .end local v1           #fileOrFolderPath:Ljava/lang/String;
    :goto_1
    return v3

    .line 672
    .restart local v1       #fileOrFolderPath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    .end local v1           #fileOrFolderPath:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationUpLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Ljava/lang/Integer;Z)V
    .locals 4
    .parameter "lastToggledIndex"
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 439
    if-eqz p1, :cond_2

    .line 440
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 441
    .local v0, delta:I
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 442
    .local v1, info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    .line 458
    .end local v0           #delta:I
    .end local v1           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateActionBarMenu()V

    .line 459
    return-void

    .line 440
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 445
    .restart local v0       #delta:I
    .restart local v1       #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_1
    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    goto :goto_1

    .line 448
    .end local v0           #delta:I
    .end local v1           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v2}, Landroid/widget/EditableListView;->isAllChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileCount()I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    .line 450
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v2

    iget v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    goto :goto_1

    .line 452
    :cond_3
    iput v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFolderCount:I

    .line 453
    iput v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mCheckedFileCount:I

    goto :goto_1
.end method

.method public onClick(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 684
    sparse-switch p1, :sswitch_data_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 686
    :sswitch_0
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActionbBarMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, menuTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00b1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 688
    .local v0, isSetRecentAlbum:Z
    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->setOrHideRecentAlbum(Z)V

    goto :goto_0

    .line 691
    .end local v0           #isSetRecentAlbum:Z
    .end local v1           #menuTitle:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationSend()V

    goto :goto_0

    .line 694
    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->canDelete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v4, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 700
    :sswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onNavigationBarClick()V

    goto :goto_0

    .line 703
    :sswitch_4
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->onOperationUpLevel()Z

    goto :goto_0

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0041 -> :sswitch_4
        0x7f0b0042 -> :sswitch_3
        0x7f0b00a9 -> :sswitch_0
        0x7f0b00b7 -> :sswitch_1
        0x7f0b00b8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->onClick(I)V

    .line 643
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 187
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/StorageHelper;->getInstance(Landroid/content/Context;)Lcom/miui/gallery/util/StorageHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    .line 188
    new-instance v1, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-direct {v1, v2}, Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;-><init>(Lcom/miui/gallery/util/StorageHelper;)V

    iput-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAllVolumeBucket:Lcom/miui/gallery/StorageExplorer/AllVolumeBucket;

    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v1, "get-content"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mGetContent:Z

    .line 199
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mShouldCrop:Z

    if-eqz v1, :cond_2

    .line 200
    :cond_1
    iget v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    .line 203
    :cond_2
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastVisitedFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->getFileBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    iget v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mFilterFlags:I

    invoke-interface {v1, v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setFilterFlags(I)V

    .line 208
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->setupNaivgationBar()V

    .line 209
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->setupListView()V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 907
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 909
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 910
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 912
    invoke-virtual {v0, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 913
    invoke-direct {p0, v2}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 916
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->addSortMenu(Landroid/view/Menu;)V

    .line 918
    const/4 v0, 0x5

    const v1, 0x7f0d012d

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 919
    const/4 v0, 0x7

    const v1, 0x7f0d0139

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->addMenuItem(Landroid/view/Menu;III)V

    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onDestroy()V

    .line 492
    return-void
.end method

.method public onFileClick(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 970
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 971
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/util/GalleryUtils;->processGetContent(Landroid/app/Activity;Landroid/os/Bundle;Landroid/net/Uri;Z)V

    .line 999
    :goto_1
    return-void

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 975
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetWallpaper:Z

    if-eqz v1, :cond_2

    .line 976
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 977
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 996
    :catch_0
    move-exception v0

    .line 997
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 978
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsSetLockscreen:Z

    if-eqz v1, :cond_3

    .line 979
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 980
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 981
    :cond_3
    iget-boolean v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mIsPickContent:Z

    if-eqz v1, :cond_4

    .line 982
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 983
    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 984
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 985
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    goto :goto_1

    .line 987
    :cond_4
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v0

    if-nez v0, :cond_5

    .line 988
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 989
    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v2}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gallery/app/PhotoPage;->sPrepareIntentDataForStorageItem(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 991
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 993
    :cond_5
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->playVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    .line 951
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 953
    if-nez v0, :cond_0

    .line 954
    const-string v0, "StorageExplorerPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist on position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->onFileClick(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 866
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 867
    packed-switch v1, :pswitch_data_0

    .line 886
    :pswitch_0
    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0

    .line 869
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    goto :goto_0

    .line 877
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 878
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/StorageExplorerPage;->onSortChanged(I)V

    goto :goto_0

    .line 882
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onNavigationBarClick()V
    .locals 15

    .prologue
    .line 717
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_1

    .line 718
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mDropdownNavigation:Landroid/view/View;

    const v13, 0x7f0b0049

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 722
    .local v4, list:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 724
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v12}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, filePath:Ljava/lang/String;
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v12, v1}, Lcom/miui/gallery/util/StorageHelper;->getVolumeByDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 726
    .local v11, volume:Ljava/lang/String;
    const/4 v7, 0x0

    .line 727
    .local v7, pos:I
    const/4 v3, 0x0

    .line 728
    .local v3, left:I
    :goto_1
    const/4 v12, -0x1

    if-eq v7, v12, :cond_2

    .line 729
    const-string v12, "/"

    invoke-virtual {v1, v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 730
    .local v0, end:I
    const/4 v12, -0x1

    if-ne v0, v12, :cond_3

    .line 763
    .end local v0           #end:I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    if-lez v12, :cond_0

    .line 764
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    goto :goto_0

    .line 733
    .restart local v0       #end:I
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 734
    .local v8, subFilePath:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 736
    add-int/lit8 v7, v0, 0x1

    .line 737
    goto :goto_1

    .line 740
    :cond_4
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f040011

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 741
    .local v6, listItem:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 743
    const v12, 0x7f0b0036

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 744
    .local v2, img:Landroid/widget/ImageView;
    if-nez v3, :cond_6

    const v12, 0x7f020041

    :goto_2
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    const v12, 0x7f0b0035

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 748
    .local v5, listContent:Landroid/view/View;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 749
    add-int/lit8 v3, v3, 0x14

    .line 751
    const v12, 0x7f0b0037

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 752
    .local v10, text:Landroid/widget/TextView;
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 753
    .local v9, substring:Ljava/lang/String;
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v12, v8}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 754
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v12, v11}, Lcom/miui/gallery/util/StorageHelper;->getVolumeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 756
    :cond_5
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    add-int/lit8 v7, v0, 0x1

    .line 759
    iget-object v12, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mNavigationClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 744
    .end local v5           #listContent:Landroid/view/View;
    .end local v9           #substring:Ljava/lang/String;
    .end local v10           #text:Landroid/widget/TextView;
    :cond_6
    const v12, 0x7f020040

    goto :goto_2
.end method

.method public onOperationSend()V
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 840
    return-void
.end method

.method public onOperationUpLevel()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 801
    invoke-direct {p0, v5}, Lcom/miui/gallery/app/StorageExplorerPage;->showDropdownNavigation(Z)V

    .line 803
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, bucketPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v5

    .line 808
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 809
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/util/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 810
    .local v2, volumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x1

    .line 811
    .local v1, doUpLevel:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 812
    const/4 v1, 0x0

    .line 819
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 823
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    invoke-virtual {v3}, Lcom/miui/gallery/util/StorageHelper;->getAllVolumesVirtualPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    .end local v1           #doUpLevel:Z
    .end local v2           #volumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :goto_2
    move v5, v4

    .line 827
    goto :goto_0

    .line 814
    .restart local v1       #doUpLevel:Z
    .restart local v2       #volumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 816
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v4

    :goto_3
    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_3

    .line 825
    .end local v1           #doUpLevel:Z
    .end local v2           #volumes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getParentPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gallery/app/StorageExplorerPage;->switchFolder(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 925
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/StorageHelper;->isAllVolume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 933
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 928
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 929
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage;->addSortMenu(Landroid/view/Menu;)V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 463
    invoke-super {p0}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onResume()V

    .line 464
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->setMaxTaskNum(I)V

    .line 465
    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->setMaxTaskNum(I)V

    .line 466
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    .line 467
    return-void
.end method

.method public onSortChanged(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/AlbumUtils;->setAlbumSDCardSortBy(Ljava/lang/String;I)V

    .line 833
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->setSortOrder(I)V

    .line 834
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mAdapter:Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->notifyDataSetChanged()V

    .line 836
    :cond_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 603
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 604
    .local v0, target:Landroid/app/Activity;
    :goto_0
    if-ne p2, v2, :cond_0

    .line 605
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 606
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 608
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 609
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 611
    :cond_1
    return-void

    .line 603
    .end local v0           #target:Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPageBase;->onWindowFocusChanged(Z)V

    .line 472
    if-eqz p1, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->updateUI()V

    .line 475
    :cond_0
    return-void
.end method

.method public setOrHideRecentAlbum(Z)V
    .locals 5
    .parameter "isSetRecentAlbum"

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    .line 649
    .local v0, fileInfoArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    iget-object v4, p0, Lcom/miui/gallery/app/StorageExplorerPage;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/miui/gallery/app/StorageExplorerPage;->switchEditMode()V

    .line 652
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v2, filePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 654
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v1, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    .line 660
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v1           #filePath:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 664
    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->setRecentAlbum(Ljava/util/ArrayList;)V

    .line 668
    :goto_1
    return-void

    .line 666
    :cond_2
    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->removeRecentAlbum(Ljava/util/ArrayList;)V

    goto :goto_1
.end method
