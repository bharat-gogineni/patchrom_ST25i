.class public Lcom/android/thememanager/WallpaperDetailActivity;
.super Lmiui/app/resourcebrowser/ResourceDetailActivity;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;,
        Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_FOLDER:Ljava/lang/String;


# instance fields
.field private mDownloadBtn:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

.field private mIsLockscreen:Z

.field private mMoreMenuBtn:Landroid/widget/ImageView;

.field private mOperateBarView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreviewMaskView:Landroid/widget/ImageView;

.field private mResourceType:J

.field private mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

.field private mThumbnailModeOfWallpaperBeforePreview:Z

.field private mTitleAreaView:Landroid/view/View;

.field private mWallpaperHeight:I

.field private mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

.field private mWallpaperWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/resourcebrowser/ResourceConstants;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/online_wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/WallpaperDetailActivity;->IMAGE_CACHE_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;-><init>()V

    .line 665
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/WallpaperDetailActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->quitPreviewMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->enterPreviewMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/thememanager/WallpaperDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceGroup:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/ResourceSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getCurrentResourceInformation()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->checkInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/thememanager/WallpaperDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/thememanager/WallpaperDetailActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->navigateToPreviousResource()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->navigateToNextResource()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/Resource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getCurrentResource()Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/WallpaperDetailActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J

    return-wide v0
.end method

.method static synthetic access$2000(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlinePreviewUrl(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/thememanager/WallpaperDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->isVisiableImagePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/thememanager/WallpaperDetailActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->updateTitleAndOperateBarState(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/thememanager/WallpaperDetailActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->autoUpdateSliderViewState(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/thememanager/WallpaperDetailActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->updateSliderViewState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/thememanager/WallpaperDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceGroup:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/thememanager/WallpaperDetailActivity;)Lmiui/app/resourcebrowser/resource/ResourceSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/thememanager/WallpaperDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/WallpaperDetailActivity;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/thememanager/WallpaperDetailActivity;->doApplyWallpaper(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/thememanager/WallpaperDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method private autoUpdateSliderViewState(Z)V
    .locals 1
    .parameter "visiable"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->isThumbnailScanMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->updateSliderViewState(Z)V

    goto :goto_0
.end method

.method private cacheWallpaperResource(IZ)Landroid/util/Pair;
    .locals 9
    .parameter "offset"
    .parameter "async"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 339
    invoke-direct {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->getAdjResource(I)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v3

    .line 340
    .local v3, r:Lmiui/app/resourcebrowser/resource/Resource;
    if-nez v3, :cond_0

    .line 370
    :goto_0
    return-object v7

    .line 344
    :cond_0
    iget v8, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    add-int v4, v8, p1

    .line 345
    .local v4, resIndex:I
    invoke-virtual {v3}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, localPath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z

    if-eqz v8, :cond_1

    .line 347
    invoke-static {v1}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_1
    const/4 v6, 0x0

    .line 351
    .local v6, useThumbnail:Z
    move-object v5, v1

    .line 352
    .local v5, ret:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 353
    if-eqz p2, :cond_3

    .line 354
    iget-object v8, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-virtual {v8, v1, v7, v4}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->decodeImageAsync(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    :cond_2
    :goto_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v7, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v4, v8}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->decodeLocalImage(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 359
    :cond_4
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getLocalThumbnailCachePath(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, cacheThumbnailPath:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsOnlineResourceSet:Z

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 361
    iget-object v8, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-virtual {v8, v0, v7, v4}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->decodeImageAsync(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    move-object v5, v0

    .line 363
    const/4 v6, 0x1

    .line 365
    :cond_5
    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlinePreviewUrl(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, onlineUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 367
    iget-object v7, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-static {v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlinePreviewUrl(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8, v4}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->decodeImageAsync(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private checkInfoValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const v0, 0x60c000c

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 300
    :cond_0
    return-object p1
.end method

.method private doApplyWallpaper(JLjava/lang/String;)V
    .locals 7
    .parameter "resourceType"
    .parameter "wallpaperPath"

    .prologue
    const-wide/16 v5, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-virtual {v3, p3}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-static {p3}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    :cond_0
    const/4 v0, 0x1

    .line 138
    .local v0, applyDesk:Z
    const/4 v1, 0x1

    .line 139
    .local v1, applyLock:Z
    const-wide/16 v3, 0x2

    and-long/2addr v3, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 140
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/thememanager/util/WallpaperUtils;->saveDeskWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    .line 142
    :cond_1
    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 143
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/thememanager/util/WallpaperUtils;->saveLockWallpaperByDisplay(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v1

    .line 145
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-static {p0, v3}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    return-void

    .line 145
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private enterPreviewMode()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 588
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->isThumbnailScanMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mThumbnailModeOfWallpaperBeforePreview:Z

    .line 589
    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mThumbnailModeOfWallpaperBeforePreview:Z

    if-eqz v0, :cond_0

    .line 590
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mThumbnailModeOfWallpaperBeforePreview:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/thememanager/view/WallpaperView;->setScanMode(Z)V

    .line 593
    :cond_0
    iget-object v7, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    const-wide/16 v5, 0x12c

    move-object v0, p0

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZIIJ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 594
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    invoke-direct {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->updateTitleAndOperateBarState(Z)V

    .line 596
    invoke-direct {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->updateSliderViewState(Z)V

    .line 597
    return-void

    :cond_1
    move v0, v1

    .line 590
    goto :goto_0
.end method

.method private getAdjResource(I)Lmiui/app/resourcebrowser/resource/Resource;
    .locals 3
    .parameter "offsetFromCurrent"

    .prologue
    .line 449
    iget v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    add-int v0, v2, p1

    .line 450
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getGroupResources()Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, set:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/resource/Resource;>;"
    if-ltz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 452
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/resourcebrowser/resource/Resource;

    .line 454
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAnimation(ZZII)Landroid/view/animation/Animation;
    .locals 7
    .parameter "alphaAnim"
    .parameter "forEnter"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 754
    const-wide/16 v5, 0xc8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZIIJ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private getAnimation(ZZIIJ)Landroid/view/animation/Animation;
    .locals 12
    .parameter "alphaAnim"
    .parameter "forEnter"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "duration"

    .prologue
    .line 758
    const/4 v2, 0x0

    .line 760
    .local v2, anim:Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 761
    if-eqz p2, :cond_0

    const/4 v5, 0x0

    .line 762
    .local v5, startAlpha:F
    :goto_0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .end local v2           #anim:Landroid/view/animation/Animation;
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v5

    invoke-direct {v2, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 770
    .end local v5           #startAlpha:F
    .restart local v2       #anim:Landroid/view/animation/Animation;
    :goto_1
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 771
    return-object v2

    .line 761
    :cond_0
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 764
    :cond_1
    if-eqz p2, :cond_2

    move v6, p3

    .line 765
    .local v6, startX:I
    :goto_2
    sub-int v3, p3, v6

    .line 766
    .local v3, endX:I
    if-eqz p2, :cond_3

    move/from16 v7, p4

    .line 767
    .local v7, startY:I
    :goto_3
    sub-int v4, p4, v7

    .line 768
    .local v4, endY:I
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2           #anim:Landroid/view/animation/Animation;
    int-to-float v8, v6

    int-to-float v9, v3

    int-to-float v10, v7

    int-to-float v11, v4

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v2       #anim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 764
    .end local v3           #endX:I
    .end local v4           #endY:I
    .end local v6           #startX:I
    .end local v7           #startY:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 766
    .restart local v3       #endX:I
    .restart local v6       #startX:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private getGroupResources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceGroup:I

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/resource/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getImageDecodingListener()Lmiui/app/resourcebrowser/util/ImageCacheDecoder$ImageDecodingListener;
    .locals 1

    .prologue
    .line 533
    new-instance v0, Lcom/android/thememanager/WallpaperDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/android/thememanager/WallpaperDetailActivity$10;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    return-object v0
.end method

.method private static getLocalThumbnailCachePath(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;
    .locals 3
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 379
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalThumbnails()Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    return-object v1

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v0, v1

    .line 379
    goto :goto_0
.end method

.method private static getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "localPath"

    .prologue
    .line 422
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/thememanager/WallpaperDetailActivity;->IMAGE_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getOnlinePreviewUrl(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;
    .locals 3
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 374
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v0

    .line 375
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    return-object v1

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v0, v1

    .line 374
    goto :goto_0
.end method

.method private getSliderMoveListener()Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/android/thememanager/WallpaperDetailActivity$11;

    invoke-direct {v0, p0}, Lcom/android/thememanager/WallpaperDetailActivity$11;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    return-object v0
.end method

.method private getWallpaperSwitchListener()Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/android/thememanager/WallpaperDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/android/thememanager/WallpaperDetailActivity$9;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    return-object v0
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->setupNavigationButton()V

    .line 152
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->changeCurrentResource()V

    .line 154
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$1;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$2;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsLockscreen:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02001a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$3;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$4;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$5;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$6;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$7;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMoreMenuBtn:Landroid/widget/ImageView;

    .line 261
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMoreMenuBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$8;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->setResourceStatus()V

    .line 294
    return-void

    .line 170
    :cond_0
    const v0, 0x7f020016

    goto :goto_0
.end method

.method private initWallpaperViewBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 407
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->setCurrentUseBitmapIndex(I)V

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap(IZ)V

    .line 412
    invoke-direct {p0, v2, v2}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap(IZ)V

    .line 413
    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap(IZ)V

    .line 414
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->invalidate()V

    goto :goto_0
.end method

.method private initWallpaperViewBitmap(IZ)V
    .locals 8
    .parameter "offset"
    .parameter "async"

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/WallpaperDetailActivity;->cacheWallpaperResource(IZ)Landroid/util/Pair;

    move-result-object v6

    .line 385
    .local v6, ret:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v6, :cond_2

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 386
    .local v5, useThumbnail:Z
    :goto_0
    iget-object v7, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v0}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 387
    .local v2, b:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    add-int v3, v0, p1

    .line 398
    .local v3, resIndex:I
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/view/WallpaperView;->getUserGivenId(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0, p1}, Lcom/android/thememanager/view/WallpaperView;->showingDeterminateFg(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    if-ltz v3, :cond_4

    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getGroupResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    const/4 v4, 0x1

    .line 402
    .local v4, validResource:Z
    :goto_2
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/view/WallpaperView;->setBitmapInfo(ILandroid/graphics/Bitmap;IZZ)V

    .line 404
    .end local v4           #validResource:Z
    :cond_1
    return-void

    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #resIndex:I
    .end local v5           #useThumbnail:Z
    :cond_2
    move v5, v1

    .line 385
    goto :goto_0

    .line 386
    .restart local v5       #useThumbnail:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v3       #resIndex:I
    :cond_4
    move v4, v1

    .line 401
    goto :goto_2
.end method

.method private isVisiableImagePath(Ljava/lang/String;)Z
    .locals 3
    .parameter "localPath"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->getAdjResource(I)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->pointSameImage(Lmiui/app/resourcebrowser/resource/Resource;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->getAdjResource(I)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->pointSameImage(Lmiui/app/resourcebrowser/resource/Resource;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/thememanager/WallpaperDetailActivity;->getAdjResource(I)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->pointSameImage(Lmiui/app/resourcebrowser/resource/Resource;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static pointSameImage(Lmiui/app/resourcebrowser/resource/Resource;Ljava/lang/String;)Z
    .locals 3
    .parameter "res"
    .parameter "decodedImagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 427
    if-nez p0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 431
    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/resource/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/thememanager/WallpaperDetailActivity;->getOnlineImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_3
    invoke-static {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getLocalThumbnailCachePath(Lmiui/app/resourcebrowser/resource/Resource;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 437
    goto :goto_0
.end method

.method private quitPreviewMode(Z)V
    .locals 9
    .parameter "hasQuitAnim"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 600
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    iget-object v7, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    const-wide/16 v5, 0xc8

    move-object v0, p0

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZIIJ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 604
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/thememanager/WallpaperDetailActivity;->updateTitleAndOperateBarState(Z)V

    .line 605
    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mThumbnailModeOfWallpaperBeforePreview:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    iget-boolean v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mThumbnailModeOfWallpaperBeforePreview:Z

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/WallpaperView;->setScanMode(Z)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/thememanager/WallpaperDetailActivity;->updateSliderViewState(Z)V

    goto :goto_0
.end method

.method private updateSliderViewState(Z)V
    .locals 4
    .parameter "visiable"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 620
    iget-boolean v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsLockscreen:Z

    if-eqz v2, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/view/HorzontalSliderView;->setVisibility(I)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    .line 626
    .local v0, finalVisibility:I
    :cond_2
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    invoke-virtual {v2}, Lcom/android/thememanager/view/HorzontalSliderView;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 629
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    const/4 v3, 0x1

    invoke-direct {p0, v3, p1, v1, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZII)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/thememanager/view/HorzontalSliderView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    invoke-virtual {v1, v0}, Lcom/android/thememanager/view/HorzontalSliderView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitleAndOperateBarState(Z)V
    .locals 4
    .parameter "visiable"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-direct {p0, v1, p1, v1, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZII)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 635
    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitleAreaView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {p0, v1, p1, v1, v3}, Lcom/android/thememanager/WallpaperDetailActivity;->getAnimation(ZZII)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 637
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    return-void

    :cond_0
    move v0, v2

    .line 635
    goto :goto_0

    :cond_1
    move v1, v2

    .line 637
    goto :goto_1
.end method


# virtual methods
.method protected bindScreenView()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap()V

    .line 494
    return-void
.end method

.method protected changeCurrentResource()V
    .locals 2

    .prologue
    .line 480
    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->requestResourceDetail(I)V

    .line 481
    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->requestResourceDetail(I)V

    .line 482
    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->requestResourceDetail(I)V

    .line 483
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->changeCurrentResource()V

    .line 485
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 486
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_0
    return-void
.end method

.method protected needRealRequestDetailInfo(Ljava/io/File;)Z
    .locals 1
    .parameter "cacheFile"

    .prologue
    .line 475
    const v0, 0x9e3400

    invoke-static {p1, v0}, Lmiui/app/resourcebrowser/util/ResourceHelper;->isCacheValid(Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviewMaskView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->quitPreviewMode(Z)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/resource/ResourceSet;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/resource/ResourceSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 94
    :cond_0
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->setContentView(I)V

    .line 96
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/WallpaperView;

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    .line 97
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getWallpaperSwitchListener()Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/WallpaperView;->regeisterSwitchListener(Lcom/android/thememanager/view/WallpaperView$WallpaperSwitchListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperWidth:I

    iget v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/view/WallpaperView;->setContainingBitmapSize(II)V

    .line 100
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/thememanager/view/HorzontalSliderView;

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    .line 101
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getSliderMoveListener()Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/thememanager/view/HorzontalSliderView;->regeisterMoveListener(Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mSliderView:Lcom/android/thememanager/view/HorzontalSliderView;

    iget-boolean v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsLockscreen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/thememanager/view/HorzontalSliderView;->setVisibility(I)V

    .line 104
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;

    invoke-direct {v1, p0}, Lcom/android/thememanager/WallpaperDetailActivity$WallpaperGestureListener;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 106
    new-instance v0, Lcom/android/thememanager/util/WallpaperDecoder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/thememanager/util/WallpaperDecoder;-><init>(I)V

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    .line 107
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    iget v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperWidth:I

    iget v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperHeight:I

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->setScaledSize(II)V

    .line 108
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getImageDecodingListener()Lmiui/app/resourcebrowser/util/ImageCacheDecoder$ImageDecodingListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->regeisterListener(Lmiui/app/resourcebrowser/util/ImageCacheDecoder$ImageDecodingListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->initUI()V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onDestroy()V

    .line 324
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->clean(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onStart()V

    .line 128
    invoke-direct {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->initWallpaperViewBitmap()V

    .line 129
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->onStop()V

    .line 315
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mImageAsyncDecoder:Lmiui/app/resourcebrowser/util/ImageCacheDecoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;->clean(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v0}, Lcom/android/thememanager/view/WallpaperView;->reset()V

    .line 319
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v1}, Lcom/android/thememanager/view/WallpaperView;->hasBeenInitied()Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    const/4 v0, 0x0

    .line 584
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 581
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;

    invoke-virtual {v1}, Lcom/android/thememanager/view/WallpaperView;->autoSwitchCurreentWallpaper()V

    goto :goto_0
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 8
    .parameter "metaData"

    .prologue
    const/4 v3, 0x1

    .line 115
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 116
    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J

    .line 117
    iget-wide v4, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J

    const-wide/16 v6, 0x4

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsLockscreen:Z

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 119
    .local v0, screenSize:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 120
    iget-boolean v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mIsLockscreen:Z

    if-eqz v2, :cond_1

    move v1, v3

    .line 121
    .local v1, widthFactor:I
    :goto_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperWidth:I

    .line 122
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperHeight:I

    .line 123
    return-void

    .line 117
    .end local v0           #screenSize:Landroid/graphics/Point;
    .end local v1           #widthFactor:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    .restart local v0       #screenSize:Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method protected requestResourceDetail(I)V
    .locals 2
    .parameter "resIndex"

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/thememanager/WallpaperDetailActivity;->getCurrentResource(I)Lmiui/app/resourcebrowser/resource/Resource;

    move-result-object v0

    .line 467
    .local v0, res:Lmiui/app/resourcebrowser/resource/Resource;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/resource/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->requestResourceDetail(I)V

    .line 471
    :cond_1
    return-void
.end method

.method protected setResourceStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 498
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    .line 502
    .local v0, textId:I
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mLocalPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    const v0, 0x60c0019

    .line 504
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMoreMenuBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mDownloadBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 506
    :cond_1
    const v0, 0x60c0017

    .line 507
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMoreMenuBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected setupNavigationButton()V
    .locals 1

    .prologue
    .line 305
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviousItem:Landroid/view/View;

    .line 306
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mNextItem:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mPreviousItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/thememanager/WallpaperDetailActivity;->initNavigationState()V

    .line 310
    :cond_0
    return-void
.end method

.method protected setupUI()V
    .locals 7

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "miui.app.resourcebrowser.PREVIEW_WIDTH"

    iget-wide v3, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mResourceType:J

    const-wide/16 v5, 0x4

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperWidth:I

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    return-void

    .line 459
    :cond_0
    iget v0, p0, Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperWidth:I

    goto :goto_0
.end method
