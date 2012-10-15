.class public abstract Lcom/miui/gallery/app/AlbumSetPageBase;
.super Lcom/miui/gallery/app/ActivityState;
.source "AlbumSetPageBase.java"

# interfaces
.implements Lcom/miui/gallery/app/EyePosition$EyePositionListener;
.implements Lcom/miui/gallery/data/MediaSet$SyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetPageBase$MyLoadingListener;
    }
.end annotation


# instance fields
.field protected mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

.field protected mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

.field private mEyePosition:Lcom/miui/gallery/app/EyePosition;

.field protected mGetAlbum:Z

.field private mGetContent:Z

.field protected mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

.field protected mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;

.field private mInitialSynced:Z

.field protected mInselectionMode:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field protected mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field protected mMenu:Landroid/view/Menu;

.field protected final mRootPane:Lcom/miui/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

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

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 69
    iput v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    .line 70
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mInitialSynced:Z

    .line 76
    new-instance v0, Lcom/miui/gallery/app/AlbumSetPageBase$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/AlbumSetPageBase$1;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 396
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/AlbumSetPageBase;)Lcom/miui/gallery/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetPageBase;)Lcom/miui/gallery/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumSetPageBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetContent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumSetPageBase;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mX:F

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumSetPageBase;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mY:F

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumSetPageBase;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mZ:F

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/app/AlbumSetPageBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/AlbumSetPageBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/AlbumSetPageBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumSetPageBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->setLoadingBit(I)V

    return-void
.end method

.method private clearLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 192
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    .line 193
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->totalSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->handleNoneItem()V

    .line 200
    :cond_0
    return-void
.end method

.method private setLoadingBit(I)V
    .locals 2
    .parameter "loadingBit"

    .prologue
    .line 205
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->setSpinnerVisibility(Landroid/app/Activity;Z)V

    .line 208
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mLoadingBits:I

    .line 209
    return-void
.end method


# virtual methods
.method protected abstract createAlbumSetView()V
.end method

.method protected abstract getNormalMenuId()I
.end method

.method protected abstract getTitleViewHeight(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;)I
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract handleNoneItem()V
.end method

.method protected abstract initializeData(Landroid/os/Bundle;)V
.end method

.method protected initializeViews()V
    .locals 3

    .prologue
    const v2, 0x7f020082

    .line 266
    new-instance v0, Lcom/miui/gallery/ui/StaticBackground;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    .line 269
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v0, v2, v2}, Lcom/miui/gallery/ui/StaticBackground;->setImage(II)V

    .line 270
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mStaticBackground:Lcom/miui/gallery/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 271
    new-instance v0, Lcom/miui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;-><init>(Lcom/miui/gallery/app/GalleryContext;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    .line 272
    new-instance v1, Lcom/miui/gallery/ui/GridDrawer;

    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-direct {v1, v0, v2}, Lcom/miui/gallery/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/miui/gallery/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGridDrawer:Lcom/miui/gallery/ui/GridDrawer;

    .line 274
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->createAlbumSetView()V

    .line 276
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPageBase$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/AlbumSetPageBase$2;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->setListener(Lcom/miui/gallery/ui/SlotView$Listener;)V

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 299
    return-void
.end method

.method protected isGetAlbum()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetAlbum:Z

    return v0
.end method

.method protected isGetContent()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetContent:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 138
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 181
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetContent:Z

    .line 182
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetAlbum:Z

    .line 184
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 185
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->initializeViews()V

    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->initializeData(Landroid/os/Bundle;)V

    .line 187
    new-instance v1, Lcom/miui/gallery/app/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/miui/gallery/app/EyePosition;-><init>(Landroid/content/Context;Lcom/miui/gallery/app/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    .line 188
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->startTransition()V

    .line 189
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f10000b

    const/4 v6, 0x1

    .line 350
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 351
    .local v1, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 353
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    invoke-virtual {v0, v6}, Lcom/miui/gallery/app/GalleryActionBar;->setStyle(I)V

    .line 354
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/app/Config$GlobalConfig;->onlyShowCloud()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    .line 366
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setPaddingLeft(I)V

    .line 368
    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 369
    .local v2, menuInflater:Landroid/view/MenuInflater;
    iget-boolean v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetContent:Z

    if-eqz v4, :cond_1

    .line 370
    invoke-virtual {v2, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 377
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/app/AlbumSetPageBase;->postCreateActionBar(Lcom/miui/gallery/app/GalleryActionBar;Landroid/view/Menu;)V

    .line 379
    return v6

    .line 363
    .end local v2           #menuInflater:Landroid/view/MenuInflater;
    :cond_0
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Lcom/miui/gallery/app/GalleryActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .line 371
    .restart local v2       #menuInflater:Landroid/view/MenuInflater;
    :cond_1
    iget-boolean v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mGetAlbum:Z

    if-eqz v4, :cond_2

    .line 372
    invoke-virtual {v2, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->getNormalMenuId()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1
.end method

.method protected onDown(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 157
    .local v1, set:Lcom/miui/gallery/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 158
    .local v0, path:Lcom/miui/gallery/data/Path;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 159
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 160
    return-void

    .line 157
    .end local v0           #path:Lcom/miui/gallery/data/Path;
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->lockRendering()V

    .line 125
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mX:F

    .line 126
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mY:F

    .line 127
    iput p3, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mZ:F

    .line 128
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->unlockRendering()V

    .line 129
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/GLView;->invalidate()V

    .line 130
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    invoke-super {p0, p1}, Lcom/miui/gallery/app/ActivityState;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    .line 412
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c9
        :pswitch_0
    .end packed-switch
.end method

.method public onLongTap(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 171
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z

    .line 215
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->pause()V

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->pause()V

    .line 217
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->pause()V

    .line 218
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 221
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->clearLoadingBit(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 241
    iput-boolean v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mIsActive:Z

    .line 242
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/AlbumSetPageBase;->setLoadingBit(I)V

    .line 246
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->resume()V

    .line 247
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->resume()V

    .line 255
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mEyePosition:Lcom/miui/gallery/app/EyePosition;

    invoke-virtual {v0}, Lcom/miui/gallery/app/EyePosition;->resume()V

    .line 256
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mInitialSynced:Z

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->setLoadingBit(I)V

    .line 258
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSyncTask:Lcom/miui/gallery/util/Future;

    .line 260
    :cond_0
    return-void
.end method

.method protected onRootPaneLayout(Lcom/miui/gallery/app/Config$AlbumSetPageConfig;IIII)V
    .locals 0
    .parameter "config"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 115
    return-void
.end method

.method public abstract onSingleTapUp(I)V
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetPageBase;->startTransition()V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncDone(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 3
    .parameter "mediaSet"
    .parameter "resultCode"

    .prologue
    .line 328
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 329
    const-string v0, "AlbumSetPageBase"

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

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miui/gallery/app/AlbumSetPageBase$4;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/app/AlbumSetPageBase$4;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method protected onUp()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->getPressedPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 165
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method protected postCreateActionBar(Lcom/miui/gallery/app/GalleryActionBar;Landroid/view/Menu;)V
    .locals 0
    .parameter "actionBar"
    .parameter "menu"

    .prologue
    .line 392
    return-void
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 226
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/MediaStoreHelper;->triggerMediaMounted()V

    .line 227
    return-void
.end method

.method protected refreshPage()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetPageBase;->setLoadingBit(I)V

    .line 234
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetDataAdapter:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->refresh()V

    .line 235
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AlbumSetViewBase;->refresh()V

    .line 236
    return-void
.end method

.method protected savePositions(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4, v5, v0}, Lcom/miui/gallery/ui/GLView;->getBoundsOf(Lcom/miui/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    .line 144
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v5}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/gallery/ui/AlbumSetViewBase;->savePositions(Lcom/miui/gallery/ui/PositionRepository;)V

    .line 145
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 146
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getScrollX()I

    move-result v2

    .line 147
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/AlbumSetViewBase;->getScrollY()I

    move-result v3

    .line 148
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 149
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 150
    return-void
.end method

.method protected startTransition()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v1}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 304
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase;->mAlbumSetView:Lcom/miui/gallery/ui/AlbumSetViewBase;

    new-instance v2, Lcom/miui/gallery/app/AlbumSetPageBase$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/app/AlbumSetPageBase$3;-><init>(Lcom/miui/gallery/app/AlbumSetPageBase;Lcom/miui/gallery/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/AlbumSetViewBase;->startTransition(Lcom/miui/gallery/ui/PositionProvider;)V

    .line 315
    return-void
.end method
