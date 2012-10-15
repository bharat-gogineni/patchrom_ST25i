.class public Lcom/miui/gallery/ui/PhotoView;
.super Lcom/miui/gallery/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;,
        Lcom/miui/gallery/ui/PhotoView$ImageData;,
        Lcom/miui/gallery/ui/PhotoView$Model;,
        Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;,
        Lcom/miui/gallery/ui/PhotoView$MyScaleListener;,
        Lcom/miui/gallery/ui/PhotoView$MyGestureListener;,
        Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field private final mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

.field private mDownloadButtonShowing:Z

.field private mEdgeView:Lcom/miui/gallery/ui/EdgeView;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

.field private mIgnoreUpEvent:Z

.field private mImageRotation:I

.field private mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

.field private mLoadingSpinnerThumbnail:Lcom/miui/gallery/ui/ProgressSpinner;

.field private mLoadingState:I

.field private mLoadingText:Lcom/miui/gallery/ui/StringTexture;

.field private mLoadingThumbnailText:Lcom/miui/gallery/ui/StringTexture;

.field private mModel:Lcom/miui/gallery/ui/PhotoView$Model;

.field private mNeedNotifyAfterTransition:Z

.field private mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

.field private mOpenedItemPath:Lcom/miui/gallery/data/Path;

.field private mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

.field private final mPositionController:Lcom/miui/gallery/ui/PositionController;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

.field private mShowVideoPlayIcon:Z

.field private mThumbnailLoading:Z

.field private final mTileView:Lcom/miui/gallery/ui/TileImageView;

.field private mTransitionMode:I

.field private mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

.field private mWaitingThumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-direct {p0}, Lcom/miui/gallery/ui/GLView;-><init>()V

    .line 81
    new-array v3, v8, [Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .line 95
    iput v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 106
    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 107
    iput-boolean v4, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 108
    iput-boolean v4, p0, Lcom/miui/gallery/ui/PhotoView;->mDownloadButtonShowing:Z

    .line 109
    const-string v3, ""

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mWaitingThumbnail:Ljava/lang/String;

    .line 546
    iput-boolean v4, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    .line 119
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 120
    new-instance v3, Lcom/miui/gallery/ui/TileImageView;

    invoke-direct {v3, p1}, Lcom/miui/gallery/ui/TileImageView;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    .line 121
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 122
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/miui/gallery/ui/EdgeView;

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    .line 124
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PhotoView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 125
    new-instance v3, Lcom/miui/gallery/ui/ProgressSpinner;

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/ProgressSpinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 126
    new-instance v3, Lcom/miui/gallery/ui/ProgressSpinner;

    invoke-direct {v3, v0}, Lcom/miui/gallery/ui/ProgressSpinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinnerThumbnail:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 127
    const v3, 0x7f0d0035

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v7}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingText:Lcom/miui/gallery/ui/StringTexture;

    .line 130
    const v3, 0x7f0d0039

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v7}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 133
    const v3, 0x7f0d0036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v7}, Lcom/miui/gallery/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/miui/gallery/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 137
    new-instance v3, Lcom/miui/gallery/ui/PhotoView$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/ui/PhotoView$1;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    .line 167
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v6, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyScaleListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    invoke-direct {v3, v0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 170
    new-instance v3, Lcom/miui/gallery/ui/DownUpDetector;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$MyDownUpListener;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    invoke-direct {v3, v4}, Lcom/miui/gallery/ui/DownUpDetector;-><init>(Lcom/miui/gallery/ui/DownUpDetector$DownUpListener;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    .line 172
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 173
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    new-instance v4, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    invoke-direct {v4, p0, v6}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;-><init>(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/ui/PhotoView$1;)V

    aput-object v4, v3, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v3, Lcom/miui/gallery/ui/PositionController;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-direct {v3, p0, v0, v4}, Lcom/miui/gallery/ui/PositionController;-><init>(Lcom/miui/gallery/ui/PhotoView;Landroid/content/Context;Lcom/miui/gallery/ui/EdgeView;)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 177
    new-instance v3, Lcom/miui/gallery/ui/ResourceTexture;

    const v4, 0x7f02005d

    invoke-direct {v3, v0, v4}, Lcom/miui/gallery/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->onTransitionComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/gallery/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/ui/PhotoView;)[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/ui/PhotoView;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/PhotoView;->swipeImages(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/miui/gallery/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mIgnoreUpEvent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$2000(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    return-object p1
.end method

.method static synthetic access$2100(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/ProgressSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/ui/PhotoView;)Lcom/miui/gallery/ui/ProgressSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinnerThumbnail:Lcom/miui/gallery/ui/ProgressSpinner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    return p1
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 362
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 748
    div-int/lit8 v0, p0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private layoutScreenNails()V
    .locals 9

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v6

    .line 381
    .local v6, width:I
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v3

    .line 385
    .local v3, height:I
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v7}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 386
    .local v0, bounds:Landroid/graphics/RectF;
    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 387
    .local v4, left:I
    iget v7, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 388
    .local v5, right:I
    sub-int v7, v5, v4

    invoke-static {v7, v6}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v2

    .line 391
    .local v2, gap:I
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x0

    aget-object v1, v7, v8

    .line 393
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    sub-int v7, v4, v7

    invoke-virtual {v1, v7}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->layoutRightEdgeAt(I)V

    .line 399
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x1

    aget-object v1, v7, v8

    .line 400
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->layoutLeftEdgeAt(I)V

    .line 404
    :cond_1
    return-void
.end method

.method private onTransitionComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 705
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 706
    .local v0, mode:I
    iput v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 708
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToNextImage()V

    .line 715
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/miui/gallery/ui/PhotoView;->mNeedNotifyAfterTransition:Z

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/miui/gallery/ui/PhotoView$Model;->notifyDirty()V

    .line 717
    iput-boolean v2, p0, Lcom/miui/gallery/ui/PhotoView;->mNeedNotifyAfterTransition:Z

    goto :goto_0

    .line 711
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 712
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_1
.end method

.method private setTileViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 193
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->getImageWidth()I

    move-result v4

    sub-int v0, v4, p1

    .line 194
    .local v0, inverseX:I
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->getImageHeight()I

    move-result v4

    sub-int v1, v4, p2

    .line 195
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    .line 196
    .local v3, t:Lcom/miui/gallery/ui/TileImageView;
    iget v2, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 197
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 201
    :goto_0
    return v4

    .line 199
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 200
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 201
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/miui/gallery/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private stopCurrentSwipingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 470
    iput v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 472
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToNextImage()V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 474
    iput v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 475
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 476
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_0
.end method

.method private swipeImages(F)Z
    .locals 12
    .parameter "velocity"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    iget v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eq v8, v11, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v6

    .line 485
    :cond_1
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v2, v8, v7

    .line 486
    .local v2, next:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v8, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v3, v8, v6

    .line 488
    .local v3, prev:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v5

    .line 492
    .local v5, width:I
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 493
    .local v0, controller:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    .line 494
    .local v1, isMinimal:Z
    const/high16 v8, 0x4396

    sget v9, Lcom/miui/gallery/util/GalleryUtils$ScreenMetrics;->sDpiRatio:F

    mul-float v4, v8, v9

    .line 496
    .local v4, swipe_threshold:F
    neg-float v8, v4

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtRightEdge()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 499
    invoke-virtual {v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 500
    iput v10, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 501
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1100(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v6

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v6, v7

    .line 502
    goto :goto_0

    .line 504
    :cond_3
    cmpl-float v8, p1, v4

    if-lez v8, :cond_0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->isAtLeftEdge()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 506
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 507
    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    iput v11, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 509
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1100(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v6

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v6, v7

    .line 510
    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 676
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v1, v2, v4

    .line 677
    .local v1, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 678
    .local v0, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 679
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget-object v2, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1902(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 681
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 682
    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1902(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 683
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoView$Model;->next()V

    .line 684
    iput-boolean v4, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 685
    return-void
.end method

.method private switchToPreviousImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 689
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v1, v2, v4

    .line 690
    .local v1, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 691
    .local v0, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/TileImageView;->invalidateTiles()V

    .line 692
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/ui/BitmapTexture;->recycle()V

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget-object v2, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1902(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 694
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Lcom/miui/gallery/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/ui/TileImageView;->mBackupImage:Lcom/miui/gallery/ui/BitmapTexture;

    .line 695
    const/4 v2, 0x0

    #setter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mTexture:Lcom/miui/gallery/ui/BitmapTexture;
    invoke-static {v0, v2}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1902(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;Lcom/miui/gallery/ui/BitmapTexture;)Lcom/miui/gallery/ui/BitmapTexture;

    .line 696
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/miui/gallery/ui/PhotoView$Model;->previous()V

    .line 697
    iput-boolean v4, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 698
    return-void
.end method

.method private updateLoadingState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 306
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getLevelCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 308
    iput v3, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->isFailedToLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 311
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    goto :goto_0

    .line 312
    :cond_3
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    if-eqz v0, :cond_1

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V
    .locals 4
    .parameter "which"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v0, v1, p1

    .line 227
    .local v0, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    if-nez p2, :cond_2

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p2, Lcom/miui/gallery/ui/PhotoView$ImageData;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p2, Lcom/miui/gallery/ui/PhotoView$ImageData;->rotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized canBeNotified()Z
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableLoading()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 290
    return-void
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public isInTransition()Z
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowLoading()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    return v0
.end method

.method public notifyImageInvalidated(I)V
    .locals 8
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/miui/gallery/ui/PhotoView$Model;->getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 240
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 241
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/miui/gallery/ui/PhotoView$Model;->getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 246
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 247
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 254
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/miui/gallery/ui/PhotoView$Model;->getImageRotation()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 255
    iget v3, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    div-int/lit8 v3, v3, 0x5a

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    .line 256
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v4, v4, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v5, v5, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 262
    :goto_1
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->updateLoadingState()V

    .line 263
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    check-cast v3, Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/miui/gallery/app/PhotoDataAdapter;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 264
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailTypeByFilePath(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, type:I
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, fileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mWaitingThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v7, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 270
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    invoke-interface {v3}, Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;->onThumbnailDownloaded()V

    .line 273
    :cond_2
    iput-boolean v6, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 274
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 259
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v2           #type:I
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v4, v4, Lcom/miui/gallery/ui/TileImageView;->mImageHeight:I

    iget-object v5, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    iget v5, v5, Lcom/miui/gallery/ui/TileImageView;->mImageWidth:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0, v1, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 323
    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 330
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageView;->notifyModelInvalidated()V

    .line 332
    iput v1, p0, Lcom/miui/gallery/ui/PhotoView;->mImageRotation:I

    .line 333
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 334
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->updateLoadingState()V

    .line 338
    :goto_1
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getPreviousImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    .line 326
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/PhotoView$Model;->getNextImage()Lcom/miui/gallery/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/ui/PhotoView;->updateScreenNailEntry(ILcom/miui/gallery/ui/PhotoView$ImageData;)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/ui/PhotoView;->notifyImageInvalidated(I)V

    goto :goto_1
.end method

.method public notifyOnNewImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/miui/gallery/ui/PositionController;->setImageSize(II)V

    .line 641
    return-void
.end method

.method public notifyTransitionComplete()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 702
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 351
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/miui/gallery/ui/TileImageView;->layout(IIII)V

    .line 352
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mEdgeView:Lcom/miui/gallery/ui/EdgeView;

    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/miui/gallery/ui/EdgeView;->layout(IIII)V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/miui/gallery/ui/PositionController;->setViewSize(II)V

    .line 355
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 356
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->updateDrawingSize()V

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v0           #arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v1           #entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 344
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mDownUpDetector:Lcom/miui/gallery/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public openAnimationStarted()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 874
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 840
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/PositionController;->skipAnimation()V

    .line 841
    iput v5, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 842
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/TileImageView;->freeTextures()V

    .line 843
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 844
    .local v1, entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4, v5}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    .end local v1           #entry:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    :cond_0
    return-void
.end method

.method protected render(Lcom/miui/gallery/ui/GLCanvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 411
    .local v10, p:Lcom/miui/gallery/ui/PositionController;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 412
    invoke-super/range {p0 .. p1}, Lcom/miui/gallery/ui/GLView;->render(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 416
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v2, 0x0

    aget-object v11, v1, v2

    .line 420
    .local v11, prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    const/4 v2, 0x1

    aget-object v9, v1, v2

    .line 422
    .local v9, nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z
    invoke-static {v11}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1000(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->draw(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 423
    :cond_1
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mVisible:Z
    invoke-static {v9}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1000(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->draw(Lcom/miui/gallery/ui/GLCanvas;)V

    .line 432
    .end local v9           #nextNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    .end local v11           #prevNail:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v13

    .line 433
    .local v13, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v7

    .line 434
    .local v7, h:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 435
    .local v14, x:I
    div-int/lit8 v15, v7, 0x2

    .line 436
    .local v15, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x6

    .line 438
    .local v5, s:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingText:Lcom/miui/gallery/ui/StringTexture;

    .line 440
    .local v8, m:Lcom/miui/gallery/ui/StringTexture;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinner:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 441
    .local v12, r:Lcom/miui/gallery/ui/ProgressSpinner;
    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v1, v2}, Lcom/miui/gallery/ui/ProgressSpinner;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 442
    invoke-virtual {v8}, Lcom/miui/gallery/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    .line 449
    .end local v8           #m:Lcom/miui/gallery/ui/StringTexture;
    .end local v12           #r:Lcom/miui/gallery/ui/ProgressSpinner;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    if-eqz v1, :cond_4

    .line 450
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 451
    .restart local v8       #m:Lcom/miui/gallery/ui/StringTexture;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingSpinnerThumbnail:Lcom/miui/gallery/ui/ProgressSpinner;

    .line 452
    .restart local v12       #r:Lcom/miui/gallery/ui/ProgressSpinner;
    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    invoke-virtual {v12}, Lcom/miui/gallery/ui/ProgressSpinner;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v15, v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v1, v2}, Lcom/miui/gallery/ui/ProgressSpinner;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 453
    invoke-virtual {v8}, Lcom/miui/gallery/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    .line 458
    .end local v8           #m:Lcom/miui/gallery/ui/StringTexture;
    .end local v12           #r:Lcom/miui/gallery/ui/ProgressSpinner;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/PhotoView;->mShowVideoPlayIcon:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/miui/gallery/ui/Texture;

    div-int/lit8 v2, v5, 0x2

    sub-int v3, v14, v2

    div-int/lit8 v2, v5, 0x2

    sub-int v4, v15, v2

    move-object/from16 v2, p1

    move v6, v5

    invoke-interface/range {v1 .. v6}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 464
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->advanceAnimation()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/ui/PhotoView;->invalidate()V

    .line 465
    :cond_6
    return-void

    .line 444
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/gallery/ui/PhotoView;->mLoadingState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/miui/gallery/ui/PhotoView;->mDownloadButtonShowing:Z

    if-nez v1, :cond_3

    .line 445
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/miui/gallery/ui/StringTexture;

    .line 446
    .restart local v8       #m:Lcom/miui/gallery/ui/StringTexture;
    invoke-virtual {v8}, Lcom/miui/gallery/ui/StringTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v14, v1

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1, v2}, Lcom/miui/gallery/ui/StringTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;II)V

    goto/16 :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/TileImageView;->prepareTextures()V

    .line 850
    return-void
.end method

.method public retrieveSavedPosition()Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 862
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v2}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 866
    .local v0, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    iput-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    .line 869
    .end local v0           #position:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setDownloadButtonShowing(Z)V
    .locals 0
    .parameter "downloadButtonShowing"

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mDownloadButtonShowing:Z

    .line 298
    return-void
.end method

.method public setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    if-ne v0, p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mModel:Lcom/miui/gallery/ui/PhotoView$Model;

    .line 184
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mTileView:Lcom/miui/gallery/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TileImageView;->setModel(Lcom/miui/gallery/ui/TileImageView$Model;)V

    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->notifyOnNewImage()V

    goto :goto_0
.end method

.method public declared-synchronized setNeedNotifyAfterTransition()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mNeedNotifyAfterTransition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpenedItem(Lcom/miui/gallery/data/Path;)V
    .locals 0
    .parameter "itemPath"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mOpenedItemPath:Lcom/miui/gallery/data/Path;

    .line 854
    return-void
.end method

.method public setPhotoTapListener(Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mPhotoTapListener:Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;

    .line 190
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/PhotoView;->setTileViewPosition(IIF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoView;->layoutScreenNails()V

    .line 210
    :cond_0
    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 2
    .parameter "waitThumbnail"

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/PhotoView;->mThumbnailLoading:Z

    .line 284
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mHandler:Lcom/miui/gallery/ui/SynchronizedHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 285
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoView;->mWaitingThumbnail:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public showVideoPlayIcon(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/miui/gallery/ui/PhotoView;->mShowVideoPlayIcon:Z

    .line 858
    return-void
.end method

.method public snapToNeighborImage()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 518
    iget v10, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    if-eqz v10, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v8

    .line 520
    :cond_1
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v3, v10, v9

    .line 521
    .local v3, next:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    iget-object v10, p0, Lcom/miui/gallery/ui/PhotoView;->mScreenNails:[Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;

    aget-object v4, v10, v8

    .line 523
    .local v4, prev:Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v7

    .line 524
    .local v7, width:I
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 526
    .local v1, controller:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v1}, Lcom/miui/gallery/ui/PositionController;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 527
    .local v0, bounds:Landroid/graphics/RectF;
    iget v10, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 528
    .local v2, left:I
    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 529
    .local v5, right:I
    sub-int v10, v5, v2

    invoke-static {v10, v7}, Lcom/miui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v10

    add-int/lit16 v6, v10, 0x100

    .line 532
    .local v6, threshold:I
    invoke-virtual {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    if-ge v6, v10, :cond_2

    .line 533
    const/4 v8, 0x3

    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 534
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v3}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1100(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v8, v10

    invoke-virtual {v1, v8}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v8, v9

    .line 535
    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {v4}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    if-ge v6, v2, :cond_0

    .line 538
    const/4 v8, 0x4

    iput v8, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 539
    #getter for: Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->mOffsetX:I
    invoke-static {v4}, Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;->access$1100(Lcom/miui/gallery/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v10, v7, 0x2

    sub-int/2addr v8, v10

    invoke-virtual {v1, v8}, Lcom/miui/gallery/ui/PositionController;->startHorizontalSlide(I)V

    move v8, v9

    .line 540
    goto :goto_0
.end method

.method public startSlideInAnimation(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoView;->mPositionController:Lcom/miui/gallery/ui/PositionController;

    .line 645
    .local v0, a:Lcom/miui/gallery/ui/PositionController;
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionController;->stopAnimation()V

    .line 646
    packed-switch p1, :pswitch_data_0

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :pswitch_0
    iput p1, p0, Lcom/miui/gallery/ui/PhotoView;->mTransitionMode:I

    .line 650
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PositionController;->startSlideInAnimation(I)V

    .line 655
    return-void

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
