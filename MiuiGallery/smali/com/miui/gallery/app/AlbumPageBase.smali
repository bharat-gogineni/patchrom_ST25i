.class public abstract Lcom/miui/gallery/app/AlbumPageBase;
.super Lcom/miui/gallery/app/ActivityState;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;,
        Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

.field private mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

.field private mFocusIndex:I

.field protected mGetContent:Z

.field private mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field private mInselectionMode:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field protected mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mMediaSetPath:Lcom/miui/gallery/data/Path;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mShowClusterMenu:Z

.field private mShowDetails:Z

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

.field private mSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mIsActive:Z

    .line 76
    iput v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mFocusIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 89
    iput v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    .line 90
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInitialSynced:Z

    .line 92
    new-instance v0, Lcom/miui/gallery/app/AlbumPageBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AlbumPageBase$1;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 608
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumPageBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->hideDetails()V

    return-void
.end method

.method static synthetic access$1202(Lcom/miui/gallery/app/AlbumPageBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/AlbumPageBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/AlbumPageBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/AlbumPageBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/app/AlbumDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumPageBase;)Lcom/miui/gallery/ui/AlbumViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumPageBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInselectionMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/AlbumPageBase;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mUserDistance:F

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/AlbumPageBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onDown(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumPageBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->onUp()V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 3
    .parameter "loadTaskBit"

    .prologue
    .line 583
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    .line 584
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 587
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0071

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 590
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 593
    :cond_0
    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 514
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 515
    .local v0, count:I
    const/high16 v2, 0x7f0f

    .line 516
    .local v2, string:I
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 517
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
    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    .line 405
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 406
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 407
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    .line 408
    return-void
.end method

.method private initializeViews()V
    .locals 5

    .prologue
    const v3, 0x7f020082

    .line 333
    new-instance v2, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 336
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v1, v3, v3}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 337
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 339
    new-instance v1, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 340
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 341
    new-instance v2, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v2, v1, v3}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 342
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gallery/app/Config$AlbumPageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$AlbumPageConfig;

    move-result-object v0

    .line 344
    .local v0, config:Lcom/miui/gallery/app/Config$AlbumPageConfig;
    iget-object v1, v0, Lcom/miui/gallery/app/Config$AlbumPageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->createAlbumView(Lcom/miui/gallery/ui/SlotView$Spec;)Lcom/miui/gallery/ui/AlbumViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    .line 345
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 346
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 348
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    new-instance v2, Lcom/miui/gallery/app/AlbumPageBase$4;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/AlbumPageBase$4;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 370
    new-instance v1, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 371
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v2, Lcom/miui/gallery/app/AlbumPageBase$5;

    invoke-direct {v2, p0}, Lcom/miui/gallery/app/AlbumPageBase$5;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 376
    return-void
.end method

.method private onDown(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 148
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 149
    .local v1, path:Lcom/miui/gallery/data/Path;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 150
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    .line 151
    return-void

    .line 148
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :cond_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    .line 156
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadTaskBit"

    .prologue
    .line 576
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 579
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mLoadingBits:I

    .line 580
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    .line 389
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 392
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsSource:Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 393
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/AlbumPageBase$6;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumPageBase$6;-><init>(Lcom/miui/gallery/app/AlbumPageBase;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 400
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 401
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 249
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 251
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    new-instance v2, Lcom/miui/gallery/app/AlbumPageBase$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/AlbumPageBase$2;-><init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 261
    return-void
.end method

.method private startTransition(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 264
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v2

    .line 266
    .local v2, repository:Lcom/miui/gallery/ui/PositionRepository;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 269
    .local v0, center:[I
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 271
    .local v1, random:Ljava/util/Random;
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    new-instance v4, Lcom/miui/gallery/app/AlbumPageBase$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/miui/gallery/app/AlbumPageBase$3;-><init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/ui/PositionRepository;[ILjava/util/Random;)V

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/AlbumViewBase;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 288
    return-void

    .line 266
    .end local v0           #center:[I
    .end local v1           #random:Ljava/util/Random;
    :cond_0
    const-string v3, "set-center"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addAlbumSortMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 411
    return-void
.end method

.method protected abstract createAlbumDataAdapter(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)Lcom/miui/gallery/app/AlbumDataAdapter;
.end method

.method protected abstract createAlbumView(Lcom/miui/gallery/ui/SlotView$Spec;)Lcom/miui/gallery/ui/AlbumViewBase;
.end method

.method protected forceRefresh()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPageBase;->setLoadingBit(I)V

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->refresh()V

    .line 476
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->refresh()V

    .line 477
    return-void
.end method

.method protected abstract getMenuResource()I
.end method

.method protected abstract getStartClass()Ljava/lang/Class;
.end method

.method protected initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "MediaSet is null. Path = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->createAlbumDataAdapter(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)Lcom/miui/gallery/app/AlbumDataAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    .line 383
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v1, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/AlbumPageBase$MyLoadingListener;-><init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/app/AlbumPageBase$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 384
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->setModel(Lcom/miui/gallery/ui/AlbumViewBase$Model;)V

    .line 385
    return-void

    :cond_0
    move v0, v2

    .line 379
    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->hideDetails()V

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumViewBase;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 141
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->clearCache()V

    .line 142
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v2, 0x0

    .line 231
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mUserDistance:F

    .line 232
    const v0, 0x7f0b0030

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->inflatePageView(II)V

    .line 233
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 235
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->initializeViews()V

    .line 236
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->initializeData(Landroid/os/Bundle;)V

    .line 237
    const-string v0, "get-content"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGetContent:Z

    .line 238
    const-string v0, "cluster-menu"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowClusterMenu:Z

    .line 239
    new-instance v0, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;-><init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/app/AlbumPageBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsSource:Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->startTransition(Landroid/os/Bundle;)V

    .line 243
    const-string v0, "auto-select-all"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->selectAll()V

    .line 246
    :cond_0
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 417
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 418
    .local v1, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 420
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 421
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, nameText:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 424
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 426
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 427
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 429
    .local v2, inflater:Landroid/view/MenuInflater;
    iget-boolean v4, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGetContent:Z

    if-eqz v4, :cond_0

    .line 430
    const v4, 0x7f10000b

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 434
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->addAlbumSortMenu(Landroid/view/Menu;)V

    .line 436
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-static {v0, v4, v5}, Lcom/miui/gallery/app/FilterUtils;->setupMenuItems(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/data/Path;Z)V

    .line 437
    return v5

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getMenuResource()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 327
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 443
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 468
    invoke-super {p0, p1}, Lcom/miui/gallery/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 445
    :sswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->enterSelectionMode()V

    move v0, v1

    .line 449
    goto :goto_0

    .line 455
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 456
    goto :goto_0

    .line 459
    :sswitch_3
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->hideDetails()V

    .line 465
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->showDetails()V

    goto :goto_1

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x7f0b00aa -> :sswitch_1
        0x7f0b00ab -> :sswitch_2
        0x7f0b00b9 -> :sswitch_3
        0x7f0b00c9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 195
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumPageBase;->onSingleTapUp(I)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 200
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 202
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsSource:Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->findIndex(I)I

    .line 203
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mIsActive:Z

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->pause()V

    .line 311
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->pause()V

    .line 312
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 293
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mIsActive:Z

    .line 294
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumPageBase;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 296
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->setLoadingBit(I)V

    .line 297
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumDataAdapter;->resume()V

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumViewBase;->resume()V

    .line 299
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 300
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPageBase;->setLoadingBit(I)V

    .line 302
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 304
    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 550
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 551
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 553
    return-void

    .line 549
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

    .line 521
    packed-switch p1, :pswitch_data_0

    .line 546
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInselectionMode:Z

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumPageBase;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 526
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionMode:Landroid/view/ActionMode;

    .line 527
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->vibrate()V

    goto :goto_0

    .line 533
    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mInselectionMode:Z

    .line 534
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {p0, v0, v2}, Lcom/miui/gallery/app/AlbumPageBase;->setViewLayout(Lcom/miui/gallery/ui/SlotViewWithTitle;Z)V

    .line 535
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 536
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 541
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .parameter "slotIndex"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumDataAdapter:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumDataAdapter;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 162
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v1, :cond_0

    .line 163
    const-string v2, "AlbumPageBase"

    const-string v3, "item not ready yet, ignore the click"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-boolean v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mShowDetails:Z

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 168
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    iget-boolean v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mGetContent:Z

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->isImage()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->processGetContent(Landroid/app/Activity;Landroid/os/Bundle;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v3}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/AlbumViewBase;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 179
    const-string v2, "index-hint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumPageBase;->mMediaSetPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumPageBase;->getStartClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 188
    .end local v0           #data:Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 189
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mDetailsSource:Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumPageBase$MyDetailsSource;->findIndex(I)I

    .line 190
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumViewBase;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 507
    const-string v0, "AlbumPageBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 484
    :pswitch_0
    if-eqz p3, :cond_0

    .line 485
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mFocusIndex:I

    .line 486
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->setCenterIndex(IZ)V

    goto :goto_0

    .line 490
    :pswitch_1
    if-eqz p3, :cond_0

    .line 491
    const-string v0, "index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mFocusIndex:I

    .line 492
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mAlbumView:Lcom/miui/gallery/ui/AlbumViewBase;

    iget v1, p0, Lcom/miui/gallery/app/AlbumPageBase;->mFocusIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumViewBase;->setCenterIndex(IZ)V

    .line 493
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;->startTransition()V

    goto :goto_0

    .line 497
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumPageBase;->startTransition(Landroid/os/Bundle;)V

    goto :goto_0

    .line 501
    :pswitch_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 557
    const-string v0, "AlbumPageBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/AlbumPageBase$7;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/AlbumPageBase$7;-><init>(Lcom/miui/gallery/app/AlbumPageBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 573
    return-void
.end method
