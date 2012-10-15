.class public Lcom/miui/gallery/app/HomePage;
.super Lcom/miui/gallery/app/ActivityState;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;
.implements Lcom/miui/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/HomePage$MyDetailsSource;,
        Lcom/miui/gallery/app/HomePage$MyLoadingListener;,
        Lcom/miui/gallery/app/HomePage$SelectionMaskManager;,
        Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;,
        Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;,
        Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

.field private mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

.field private mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mCameraSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

.field private mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

.field private mEyePosition:Lcom/miui/gallery/app/EyePosition;

.field private mGetAlbum:Z

.field private mGetContent:Z

.field private mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsLoadFinished:Z

.field private mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

.field private mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

.field private mLoadingBits:I

.field private mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

.field private mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

.field private mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

.field private mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

.field private mShowDetails:Z

.field private mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

.field private mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 110
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 111
    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 113
    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 114
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    .line 115
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z

    .line 117
    new-instance v0, Lcom/miui/gallery/app/HomePage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/HomePage$1;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 1053
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/HomePage;I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/HomePage;->savePositions(I[I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$MyDetailsSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomePageItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomePageItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    return-void
.end method

.method static synthetic access$2402(Lcom/miui/gallery/app/HomePage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/miui/gallery/app/HomePage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/miui/gallery/app/HomePage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2702(Lcom/miui/gallery/app/HomePage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/miui/gallery/app/HomePage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->updateCameraViewVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeCameraView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HomeRecentAlbumView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mX:F

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mY:F

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/HomePage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mZ:F

    return v0
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 487
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 488
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 491
    :cond_0
    return-void
.end method

.method private enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 835
    .line 837
    if-eqz p2, :cond_0

    .line 838
    const v0, 0x7f0200df

    .line 843
    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/gallery/ui/HomePageItemView;->setItemClickable(Z)V

    .line 844
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/ui/HomePageItemView;->setItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    return-void

    .line 840
    :cond_0
    const v0, 0x7f0200dd

    goto :goto_0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 827
    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 828
    .local v0, count:I
    const/high16 v2, 0x7f0f

    .line 829
    .local v2, string:I
    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 830
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
    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    .line 949
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 950
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 951
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->invalidate()V

    .line 952
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 580
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/MediaSetUtils;->createCameraMediaSet(Lcom/miui/gallery/data/DataManager;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 582
    new-instance v1, Lcom/miui/gallery/app/HomeCameraDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/app/Config$GlobalConfig;->getHomeCameraViewRecentItemSize()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    .line 585
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v2, Lcom/miui/gallery/app/HomePage$MyLoadingListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/gallery/app/HomePage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 587
    new-instance v1, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    .line 588
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 589
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setModel(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 591
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 592
    new-instance v1, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    .line 594
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    new-instance v2, Lcom/miui/gallery/app/HomePage$MyLoadingListener;

    invoke-direct {v2, p0, v5}, Lcom/miui/gallery/app/HomePage$MyLoadingListener;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V

    .line 596
    new-instance v1, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    .line 597
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 598
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setModel(Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V

    .line 601
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->setSource(Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method private initializeViews()V
    .locals 14

    .prologue
    const v11, 0x7f020082

    .line 606
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v10

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->dynamicConfigCameraView(Landroid/content/Context;)V

    .line 607
    new-instance v9, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v9, v10}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 608
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v9, p0}, Lcom/miui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/miui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 609
    new-instance v9, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v10}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 612
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v9, v11, v11}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 613
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 615
    new-instance v10, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    iget-object v11, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v10, v9, v11}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v10, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 617
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Lcom/miui/gallery/app/Config$HomePageConfig;->get(Landroid/content/Context;)Lcom/miui/gallery/app/Config$HomePageConfig;

    move-result-object v1

    .line 620
    .local v1, config:Lcom/miui/gallery/app/Config$HomePageConfig;
    const v9, 0x7f0b0056

    invoke-virtual {p0, v9}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v5

    .line 621
    .local v5, layoutCameraView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 633
    .local v0, cameraLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 634
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getHomeCameraViewHeight()I

    move-result v9

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 636
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/view/View;->setRight(I)V

    .line 637
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/view/View;->setBottom(I)V

    .line 640
    new-instance v9, Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v11, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v12, v1, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/gallery/ui/HomeCameraView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    .line 641
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 644
    new-instance v9, Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v11, p0, Lcom/miui/gallery/app/HomePage;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    iget-object v12, v1, Lcom/miui/gallery/app/Config$HomePageConfig;->slotViewSpec:Lcom/miui/gallery/ui/SlotView$Spec;

    iget-object v13, v1, Lcom/miui/gallery/app/Config$HomePageConfig;->recentAlbumLabelSpec:Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/miui/gallery/ui/HomeRecentAlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionDrawer;Lcom/miui/gallery/ui/SlotView$Spec;Lcom/miui/gallery/ui/HomeRecentAlbumView$LabelSpec;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    .line 646
    new-instance v8, Lcom/miui/gallery/ui/TitleView;

    invoke-virtual {p0}, Lcom/miui/gallery/app/HomePage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b005c

    invoke-direct {v8, v9, v10}, Lcom/miui/gallery/ui/TitleView;-><init>(Landroid/app/Activity;I)V

    .line 648
    .local v8, titleView:Lcom/miui/gallery/ui/TitleView;
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v9

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/data/AllAlbumCache;->everReloaded()Z

    move-result v9

    if-nez v9, :cond_1

    .line 649
    const v9, 0x7f0d00b6

    invoke-virtual {v8, v9}, Lcom/miui/gallery/ui/TitleView;->setTitle(I)V

    .line 653
    :goto_0
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v9, v8}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->setTitleView(Lcom/miui/gallery/ui/TitleView;)V

    .line 654
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 656
    const v9, 0x7f0b0062

    invoke-virtual {p0, v9}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/ui/HomePageItemView;

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    .line 657
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    const v10, 0x7f0d0075

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/HomePageItemView;->initialize(I)V

    .line 658
    const v9, 0x7f0b0064

    invoke-virtual {p0, v9}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/ui/HomePageItemView;

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    .line 659
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    const v10, 0x7f0d0076

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/HomePageItemView;->initialize(I)V

    .line 662
    new-instance v9, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-direct {v9, p0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;-><init>(Lcom/miui/gallery/app/HomePage;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    .line 665
    const v9, 0x7f0b005d

    invoke-virtual {p0, v9}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 666
    .local v2, countText:Landroid/widget/TextView;
    instance-of v9, v2, Lmiui/widget/GradientTextView;

    if-eqz v9, :cond_0

    move-object v4, v2

    .line 667
    check-cast v4, Lmiui/widget/GradientTextView;

    .line 668
    .local v4, gtv:Lmiui/widget/GradientTextView;
    invoke-virtual {v4}, Lmiui/widget/GradientTextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 669
    .local v6, res:Landroid/content/res/Resources;
    const v9, 0x7f080011

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 670
    .local v7, start:I
    const v9, 0x7f080012

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 671
    .local v3, end:I
    invoke-virtual {v4, v7, v3}, Lmiui/widget/GradientTextView;->setGradientColor(II)V

    .line 674
    .end local v3           #end:I
    .end local v4           #gtv:Lmiui/widget/GradientTextView;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #start:I
    :cond_0
    new-instance v9, Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v9}, Lcom/miui/gallery/ui/TaskListenerForRefresh;-><init>()V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    .line 675
    new-instance v9, Lcom/miui/gallery/ui/ActionModeHandler;

    iget-object v10, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v11, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    iget-object v12, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-direct {v9, v10, v11, v12}, Lcom/miui/gallery/ui/ActionModeHandler;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SelectionManager;Lcom/miui/gallery/ui/MenuExecutor$TaskListener;)V

    iput-object v9, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    .line 676
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    new-instance v10, Lcom/miui/gallery/app/HomePage$2;

    invoke-direct {v10, p0}, Lcom/miui/gallery/app/HomePage$2;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/ActionModeHandler;->setActionModeListener(Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;)V

    .line 682
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    new-instance v10, Lcom/miui/gallery/app/HomePage$3;

    invoke-direct {v10, p0}, Lcom/miui/gallery/app/HomePage$3;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/HomePageItemView;->setItemOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v9, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    new-instance v10, Lcom/miui/gallery/app/HomePage$4;

    invoke-direct {v10, p0}, Lcom/miui/gallery/app/HomePage$4;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/HomePageItemView;->setItemOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    return-void

    .line 651
    .end local v2           #countText:Landroid/widget/TextView;
    :cond_1
    const v9, 0x7f0d00b5

    invoke-virtual {v8, v9}, Lcom/miui/gallery/ui/TitleView;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private onEnterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 886
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    .line 887
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->vibrate()V

    .line 890
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->setNotInSelectionMode()V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->setNotInSelectionMode()V

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 898
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 900
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->onEnterSelectionMode()V

    .line 901
    return-void
.end method

.method private onLeaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 904
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 905
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 907
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeCameraViewGestureLisenter;->setNotInSelectionMode()V

    .line 908
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumViewGestureLisenter:Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$HomeRecentAlbumViewGestureLisenter;->setNotInSelectionMode()V

    .line 910
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 911
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewCloudAlbums:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 913
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->onLeaveSelectionMode()V

    .line 914
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 529
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMounted()V

    .line 530
    return-void
.end method

.method private savePositions(I[I)V
    .locals 9
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 203
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/HomeCameraView;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 204
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/HomeCameraView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 205
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeCameraView;->getScrollX()I

    move-result v2

    .line 206
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeCameraView;->getScrollY()I

    move-result v3

    .line 207
    .local v3, scrollY:I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    aput v4, p2, v7

    .line 208
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    aput v4, p2, v8

    .line 210
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 211
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    iget-object v5, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->appendPositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 212
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 213
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getScrollX()I

    move-result v2

    .line 214
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->getScrollY()I

    move-result v3

    .line 215
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    aput v4, p2, v7

    .line 216
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    aput v4, p2, v8

    .line 218
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 494
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 497
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/HomePage;->mLoadingBits:I

    .line 498
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    .line 956
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Lcom/miui/gallery/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    .line 959
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v3, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 960
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/HomePage$7;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/HomePage$7;-><init>(Lcom/miui/gallery/app/HomePage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->setSelectionDrawer(Lcom/miui/gallery/ui/SelectionDrawer;)V

    .line 967
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 968
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 801
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    new-instance v2, Lcom/miui/gallery/app/HomePage$5;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/HomePage$5;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeCameraView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 813
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    new-instance v2, Lcom/miui/gallery/app/HomePage$6;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/HomePage$6;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 824
    return-void
.end method

.method private updateCameraViewVisibility()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1012
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v4

    .line 1013
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v5

    .line 1015
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1016
    iget-object v6, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->getMetrics(I)I

    move-result v6

    .line 1018
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/app/Config$GlobalConfig;->getHomeCameraViewHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1021
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Landroid/view/View;->setBottom(I)V

    .line 1024
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1029
    :goto_0
    iget-object v6, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v6, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setVisibility(I)V

    .line 1030
    iget-object v6, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_1
    invoke-virtual {v6, v2}, Lcom/miui/gallery/ui/HomeCameraView;->setHorizontalTitleVisibility(I)V

    .line 1031
    if-eqz v0, :cond_3

    move v2, v1

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_4

    move v2, v1

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_5

    move v2, v1

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    if-eqz v0, :cond_6

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    return-void

    :cond_1
    move v0, v2

    .line 1027
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1030
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1031
    goto :goto_2

    :cond_4
    move v2, v3

    .line 1032
    goto :goto_3

    :cond_5
    move v2, v3

    .line 1034
    goto :goto_4

    :cond_6
    move v3, v1

    .line 1036
    goto :goto_5

    .line 1037
    :cond_7
    new-instance v0, Lcom/miui/gallery/app/HomePage$9;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/HomePage$9;-><init>(Lcom/miui/gallery/app/HomePage;)V

    goto :goto_6
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    .line 467
    const-string v1, "HomePage"

    const-string v2, "test HomePage.onCreate() start"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    .line 470
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    .line 471
    const v1, 0x7f0b002e

    const v2, 0x7f040016

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/HomePage;->inflatePageView(II)V

    .line 473
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->initializeViews()V

    .line 474
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage;->initializeData(Landroid/os/Bundle;)V

    .line 475
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 476
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/miui/gallery/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/miui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    .line 477
    new-instance v1, Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/HomePage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V

    iput-object v1, p0, Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    .line 478
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->startTransition()V

    .line 481
    const-string v1, "HomePage"

    const-string v2, "test HomePage.onCreate() end"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 711
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 712
    .local v1, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 714
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    invoke-virtual {v0, v6}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 715
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 718
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 720
    iget-object v4, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 723
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 725
    .local v2, inflater:Landroid/view/MenuInflater;
    iget-boolean v4, p0, Lcom/miui/gallery/app/HomePage;->mGetContent:Z

    if-eqz v4, :cond_2

    .line 737
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z

    if-eqz v4, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->updateCameraViewVisibility()V

    .line 740
    :cond_1
    return v6

    .line 728
    :cond_2
    iget-boolean v4, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    if-nez v4, :cond_0

    .line 732
    const v4, 0x7f100007

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->lockRendering()V

    .line 181
    iput p1, p0, Lcom/miui/gallery/app/HomePage;->mX:F

    .line 182
    iput p2, p0, Lcom/miui/gallery/app/HomePage;->mY:F

    .line 183
    iput p3, p0, Lcom/miui/gallery/app/HomePage;->mZ:F

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->unlockRendering()V

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 186
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 746
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 774
    :goto_0
    return v0

    .line 748
    :sswitch_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 749
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    .line 750
    goto :goto_0

    .line 752
    :sswitch_1
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->hideDetails()V

    :goto_1
    move v0, v2

    .line 764
    goto :goto_0

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->showDetails()V

    goto :goto_1

    .line 759
    :cond_1
    const v1, 0x7f0d0070

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 766
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->refresh()V

    move v0, v1

    .line 767
    goto :goto_0

    .line 770
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/gallery/settings/GallerySettings;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 771
    goto :goto_0

    .line 746
    :sswitch_data_0
    .sparse-switch
        0x7f0b00ab -> :sswitch_3
        0x7f0b00ac -> :sswitch_2
        0x7f0b00b9 -> :sswitch_1
        0x7f0b00c9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 502
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 503
    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 504
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->pause()V

    .line 505
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->pause()V

    .line 506
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->pause()V

    .line 507
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->pause()V

    .line 508
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->pause()V

    .line 509
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->pause()V

    .line 510
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 512
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 514
    iput-object v2, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 518
    iput-object v2, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 520
    :cond_1
    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage;->mIsLoadFinished:Z

    .line 521
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomePage;->clearLoadingBit(I)V

    .line 524
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleTextVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 538
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 539
    iput-boolean v2, p0, Lcom/miui/gallery/app/HomePage;->mIsActive:Z

    .line 540
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 542
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 544
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->setSelectionMaskStorageExplorer(I)V

    .line 551
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    .line 552
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->resume()V

    .line 553
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumDataAdapter:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->resume()V

    .line 554
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeCameraView;->resume()V

    .line 557
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->setHorizontalTitleVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraView:Lcom/miui/gallery/ui/HomeCameraView;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->getTotalMediaObjectCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/HomeCameraView;->updateTitleView(I)V

    .line 563
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumView:Lcom/miui/gallery/ui/HomeRecentAlbumView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/HomeRecentAlbumView;->resume()V

    .line 565
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->resume()V

    .line 566
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ActionModeHandler;->resume()V

    .line 567
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomePage;->setLoadingBit(I)V

    .line 569
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mCameraSyncTask:Lcom/miui/gallery/util/Future;

    .line 570
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRecentAlbumSyncTask:Lcom/miui/gallery/util/Future;

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/HomePage;->updateCloudAlbumsUI()V

    .line 577
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mItemViewStorageExplorer:Lcom/miui/gallery/ui/HomePageItemView;

    invoke-direct {p0, v0, v2}, Lcom/miui/gallery/app/HomePage;->enableItemView(Lcom/miui/gallery/ui/HomePageItemView;Z)V

    .line 547
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionMaskManager:Lcom/miui/gallery/app/HomePage$SelectionMaskManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomePage$SelectionMaskManager;->setSelectionMaskStorageExplorer(I)V

    goto :goto_0
.end method

.method public onSelectionChange(Lcom/miui/gallery/data/Path;Z)V
    .locals 2
    .parameter "path"
    .parameter "selected"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 943
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/miui/gallery/data/Path;Z)V

    .line 945
    return-void

    .line 942
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 918
    packed-switch p1, :pswitch_data_0

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 920
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->onEnterSelectionMode()V

    goto :goto_0

    .line 924
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->onLeaveSelectionMode()V

    .line 926
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->isExcuteRefeshTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->refresh()V

    .line 929
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mTaskListener:Lcom/miui/gallery/ui/TaskListenerForRefresh;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TaskListenerForRefresh;->resetExcuteRefeshTask()V

    goto :goto_0

    .line 934
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActionModeHandler:Lcom/miui/gallery/ui/ActionModeHandler;

    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 780
    packed-switch p1, :pswitch_data_0

    .line 792
    const-string v0, "HomePage"

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

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage;->startTransition()V

    goto :goto_0

    .line 786
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 972
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 973
    const-string v0, "HomePage"

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

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/HomePage$8;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/HomePage$8;-><init>(Lcom/miui/gallery/app/HomePage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 990
    return-void
.end method

.method public updateCloudAlbumsUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 993
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/HomePage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    return-void
.end method
