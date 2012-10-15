.class public Lcom/miui/gallery/app/PhotoPage;
.super Lcom/miui/gallery/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;
.implements Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;
.implements Lcom/miui/gallery/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/PhotoPage$SendListAdapter;,
        Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;,
        Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;,
        Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;,
        Lcom/miui/gallery/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private deleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mActionBar:Landroid/app/ActionBar;

.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

.field private mBigScreenEnable:Z

.field private mBottomBarFadeIn:Landroid/view/animation/Animation;

.field private mCurrentIndex:I

.field protected mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

.field private mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

.field private mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

.field private mDummyOnTouchListner:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInteracting:Z

.field private mIsMenuVisible:Z

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mModel:Lcom/miui/gallery/app/PhotoPage$Model;

.field private mMoreListAdapter:Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;

.field private mMoreListInfo:[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

.field protected mPhotoView:Lcom/miui/gallery/ui/PhotoView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private final mResultIntent:Landroid/content/Intent;

.field private final mRootPane:Lcom/miui/gallery/ui/GLView;

.field private mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowMenuType:I

.field protected mWaitThumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/app/ActivityState;-><init>()V

    .line 136
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    .line 143
    iput v4, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 145
    iput-boolean v3, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 150
    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    .line 157
    iput-boolean v3, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    .line 173
    new-instance v0, Lcom/miui/gallery/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/PhotoPage$1;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    .line 437
    new-instance v0, Lcom/miui/gallery/app/PhotoPage$6;

    invoke-direct {v0, p0}, Lcom/miui/gallery/app/PhotoPage$6;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 1088
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    const v2, 0x7f0d00e8

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;-><init>(Lcom/miui/gallery/app/PhotoPage;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    const v2, 0x7f0d00ee

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;-><init>(Lcom/miui/gallery/app/PhotoPage;I)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    const v3, 0x7f0d0052

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;-><init>(Lcom/miui/gallery/app/PhotoPage;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    const v3, 0x7f0d00eb

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;-><init>(Lcom/miui/gallery/app/PhotoPage;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMoreListInfo:[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    .line 1206
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/PhotoPage;)[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMoreListInfo:[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/PhotoPage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->getContentUriForExternal(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/PhotoPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->showDetails(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/gallery/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/PhotoPage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/bigscreen/BigScreenControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private canDoRotate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-nez v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    instance-of v1, v1, Lcom/miui/gallery/data/UriImage;

    if-nez v1, :cond_0

    .line 409
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canDoSlideShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 415
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-nez v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    instance-of v1, v1, Lcom/miui/gallery/data/MtpDevice;

    if-nez v1, :cond_0

    .line 421
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private configActions()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 762
    .line 764
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 765
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v1

    .line 767
    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    move v4, v0

    .line 769
    :goto_1
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_1

    move v3, v0

    .line 770
    :goto_2
    const/high16 v5, 0x4

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    move v1, v0

    .line 772
    :goto_3
    const v0, 0x7f0b008f

    const v5, 0x7f0200d1

    const v6, 0x7f0200ce

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/miui/gallery/app/PhotoPage;->configOneOperation(IZII)V

    .line 775
    const v0, 0x7f0b0090

    const v4, 0x7f0200d2

    const v5, 0x7f0200cf

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/miui/gallery/app/PhotoPage;->configOneOperation(IZII)V

    .line 778
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 779
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->canDoSlideShow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 780
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    :goto_4
    return-void

    :cond_0
    move v4, v2

    .line 767
    goto :goto_1

    :cond_1
    move v3, v2

    .line 769
    goto :goto_2

    :cond_2
    move v1, v2

    .line 770
    goto :goto_3

    .line 783
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 784
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mDummyOnTouchListner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private configOneOperation(IZII)V
    .locals 2
    .parameter "viewId"
    .parameter "supported"
    .parameter "enableResId"
    .parameter "disableResId"

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 754
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 755
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/miui/gallery/app/PhotoPage;->setResourceAndListener(Landroid/widget/ImageView;ILandroid/view/View$OnTouchListener;)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mDummyOnTouchListner:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, v0, p4, v1}, Lcom/miui/gallery/app/PhotoPage;->setResourceAndListener(Landroid/widget/ImageView;ILandroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private getContentUriForExternal(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;
    .locals 1
    .parameter "item"

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v0

    .line 610
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->getSubtitutePath(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;

    move-result-object v0

    .line 613
    :cond_0
    return-object v0
.end method

.method private getListViewHeight(Landroid/widget/ListView;)I
    .locals 6
    .parameter "listView"

    .prologue
    const/4 v4, 0x0

    .line 728
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 730
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    move v3, v4

    .line 742
    :cond_0
    return v3

    .line 734
    :cond_1
    const/4 v3, 0x0

    .line 736
    .local v3, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 737
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 738
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 739
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPhotoCount()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getSubtitutePath(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;
    .locals 7
    .parameter "current"

    .prologue
    const/4 v6, -0x1

    .line 583
    const/4 v2, 0x0

    .line 585
    .local v2, path:Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/miui/gallery/app/PhotoPage$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    .local v0, backupImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 587
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 588
    .local v1, folder:Ljava/io/File;
    const-string v4, "temp"

    invoke-static {v0, p1, v1, v4}, Lcom/miui/gallery/util/GalleryUtils;->saveMedia2SignleFile(Landroid/graphics/Bitmap;Lcom/miui/gallery/data/MediaObject;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 591
    .local v3, savedFile:Ljava/io/File;
    if-nez v3, :cond_0

    .line 592
    const-string v4, "grab_photo_page"

    const-string v5, "created bitmap file failed"

    invoke-static {v4, v5}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    const v5, 0x7f0d00d8

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 596
    const/4 v4, 0x0

    .line 605
    .end local v1           #folder:Ljava/io/File;
    .end local v3           #savedFile:Ljava/io/File;
    :goto_0
    return-object v4

    .line 600
    .restart local v1       #folder:Ljava/io/File;
    .restart local v3       #savedFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b6

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 602
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .end local v1           #folder:Ljava/io/File;
    .end local v3           #savedFile:Ljava/io/File;
    :cond_1
    move-object v4, v2

    .line 605
    goto :goto_0
.end method

.method private hideBars()V
    .locals 4

    .prologue
    const v3, 0x7f0b0072

    const/16 v2, 0x8

    .line 811
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 813
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 814
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-nez v0, :cond_2

    .line 815
    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_1
    :goto_1
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 821
    const/4 v0, 0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 822
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->getConnectState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 817
    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 911
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->hide()V

    .line 912
    return-void
.end method

.method private parsePath(Ljava/lang/String;)Lcom/miui/gallery/data/Path;
    .locals 7
    .parameter "mediaItemPath"

    .prologue
    .line 193
    invoke-static {p1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 194
    .local v2, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, segment:[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 196
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, decoded:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 198
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "uri"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isVideoFromFilePath(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v1, v5}, Lcom/miui/gallery/data/DataManager;->getStorageMediaItemPath(Ljava/lang/String;Z)Lcom/miui/gallery/data/Path;

    move-result-object v2

    .line 209
    .end local v0           #decoded:Ljava/lang/String;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    return-object v2
.end method

.method private refreshIndexIndicator()V
    .locals 5

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->getPhotoCount()I

    move-result v0

    .line 570
    .local v0, count:I
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v3}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    .line 576
    .local v1, position:I
    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 577
    .local v2, t:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    return-void
.end method

.method public static sPrepareIntentDataForStorageItem(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "data"
    .parameter "filePath"
    .parameter "folderPath"
    .parameter "isVideo"
    .parameter "singleItemOnly"

    .prologue
    .line 217
    invoke-static {p1, p3}, Lcom/miui/gallery/data/DataManager;->getStorageMediaItemPath(Ljava/lang/String;Z)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 220
    .local v1, mediaItemPath:Lcom/miui/gallery/data/Path;
    const-string v3, "media-item-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-nez p4, :cond_0

    .line 223
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, folderPathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-static {p2}, Lcom/miui/gallery/data/DataManager;->getStorageMediaSetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, mediaSetPathString:Ljava/lang/String;
    const-string v3, "media-set-path"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0           #folderPathFile:Ljava/io/File;
    .end local v2           #mediaSetPathString:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setResourceAndListener(Landroid/widget/ImageView;ILandroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "imageView"
    .parameter "resId"
    .parameter "touchListener"

    .prologue
    .line 746
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 747
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 748
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 749
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBars()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string v0, "grab_photo_page"

    const-string v1, "showBars"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 791
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 792
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    .line 793
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->configActions()V

    .line 794
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 798
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 799
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private showDetails(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 916
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    new-instance v3, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/ui/DetailsHelper;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/GLView;Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    .line 918
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    new-instance v1, Lcom/miui/gallery/app/PhotoPage$8;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$8;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/miui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    .line 926
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/DetailsHelper;->show()V

    .line 927
    return-void
.end method

.method private showMenu(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 617
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 618
    iput p1, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 619
    iget v1, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_0

    .line 633
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 634
    iget v2, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 637
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040012

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 638
    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    .line 639
    const v1, 0x7f0b0039

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    const v1, 0x7f0b003a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v1, 0x7f0b0038

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v1, 0x7f0b003b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v1, 0x7f0e003c

    .line 645
    const v2, 0x7f09005d

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 689
    :goto_1
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v3, v8, v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 695
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 696
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 698
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/miui/gallery/app/PhotoPage$7;

    invoke-direct {v3, p0}, Lcom/miui/gallery/app/PhotoPage$7;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 707
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 709
    const v1, 0x7f0b0072

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    .line 710
    const v3, 0x7f0b0073

    invoke-virtual {p0, v3}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v3

    .line 711
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 712
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 714
    if-eqz v0, :cond_2

    .line 715
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->getListViewHeight(Landroid/widget/ListView;)I

    move-result v0

    .line 716
    sget v5, Lcom/miui/gallery/util/GalleryUtils;->SCREEN_HEIGHT:I

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    .line 717
    if-le v0, v3, :cond_2

    .line 718
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 723
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 649
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->getContentUriForExternal(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_0

    .line 652
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->getSendIntent(Landroid/content/Context;Lcom/miui/gallery/data/MediaItem;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 653
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 655
    new-instance v3, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;-><init>(Lcom/miui/gallery/app/PhotoPage;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    .line 657
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040005

    invoke-virtual {v1, v3, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 658
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    .line 659
    const v0, 0x7f0200bc

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 660
    const v0, 0x7f0b0015

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 661
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    const v0, 0x7f0b0016

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 663
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 664
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mSendListAdapter:Lcom/miui/gallery/app/PhotoPage$SendListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 666
    const v1, 0x7f0e0039

    .line 667
    const v2, 0x7f09005e

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_1

    .line 672
    :pswitch_3
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMoreListAdapter:Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;

    .line 673
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    .line 674
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04001b

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 675
    const v0, 0x7f0200bb

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 677
    const v0, 0x7f0b006d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 678
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMoreListAdapter:Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 679
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMoreListAdapter:Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    const v1, 0x7f0e003a

    .line 682
    const v2, 0x7f090060

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_1

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateBars()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->configActions()V

    .line 805
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 806
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissPopupWindow()V
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 379
    :cond_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->dismissControls()V

    .line 382
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/gallery/app/PhotoPage;->mShowMenuType:I

    .line 383
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "grab_photo_page"

    const-string v2, "not attarch to the window"

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findViewForBigScreen(I)Landroid/view/View;
    .locals 1
    .parameter "resID"

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 4

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideDetails()V

    .line 885
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-static {v0}, Lcom/miui/gallery/ui/PositionRepository;->getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/miui/gallery/ui/PositionRepository;->clear()V

    .line 874
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eqz v1, :cond_1

    .line 875
    new-instance v1, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v1}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    .line 876
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 877
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 878
    const/high16 v2, -0x3b86

    iput v2, v1, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    .line 879
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/miui/gallery/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 883
    :cond_1
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 453
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 464
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    .line 465
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 467
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 561
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0

    .line 470
    :sswitch_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->getConnectState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 471
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v0, v6}, Lcom/miui/gallery/bigscreen/BigScreenControl;->enterSlideShow(I)V

    goto :goto_1

    .line 473
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    const-string v3, "media-set-path"

    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v3, "media-item-path"

    invoke-virtual {v1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "photo-index"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string v1, "repeat"

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v2}, Lcom/miui/gallery/settings/PreferenceHelper;->isSlideshowRepeat()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/SlideshowPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 486
    :sswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->exitSlideShow(ZLjava/lang/String;)V

    goto :goto_1

    .line 491
    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onBackPressed()V

    goto :goto_1

    .line 495
    :sswitch_3
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->deleteListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v5}, Lcom/miui/gallery/StorageExplorer/AppHelper;->confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_1

    .line 500
    :sswitch_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/gallery/data/DataManager;)V

    goto/16 :goto_0

    .line 506
    :sswitch_5
    invoke-direct {p0, v7}, Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V

    goto/16 :goto_0

    .line 511
    :sswitch_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->showMenu(I)V

    goto/16 :goto_0

    .line 517
    :sswitch_7
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->canDoRotate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b0039

    if-ne v0, v2, :cond_4

    const/16 v0, -0x5a

    .line 519
    :goto_2
    invoke-virtual {v3, v1, v0}, Lcom/miui/gallery/data/DataManager;->rotate(Lcom/miui/gallery/data/Path;I)V

    .line 520
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/StorageMediaItem;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->notifyDirty()V

    goto/16 :goto_1

    .line 518
    :cond_4
    const/16 v0, 0x5a

    goto :goto_2

    .line 529
    :sswitch_8
    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaItem;

    .line 531
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v2

    .line 532
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 537
    :catch_0
    move-exception v1

    .line 538
    const-string v2, "grab_photo_page"

    const-string v3, "failed to start edit activity: "

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    const v1, 0x7f0d0058

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 546
    :sswitch_9
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    const-class v4, Lcom/miui/gallery/app/CropImage;

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DataManager;->getContentUriForGallery(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 549
    invoke-virtual {v0, v2, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 553
    :sswitch_a
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->bigScreenClicked()V

    goto/16 :goto_1

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x7f0b0038 -> :sswitch_9
        0x7f0b0039 -> :sswitch_7
        0x7f0b003a -> :sswitch_7
        0x7f0b003b -> :sswitch_8
        0x7f0b0077 -> :sswitch_1
        0x7f0b008f -> :sswitch_3
        0x7f0b0090 -> :sswitch_5
        0x7f0b0091 -> :sswitch_a
        0x7f0b0092 -> :sswitch_4
        0x7f0b0093 -> :sswitch_6
        0x7f0b0094 -> :sswitch_2
        0x7f0b0095 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 234
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 235
    invoke-static {}, Lcom/miui/gallery/common/GalleryCacheManager;->getInstance()Lcom/miui/gallery/common/GalleryCacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/common/GalleryCacheManager;->clear()V

    .line 236
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;

    .line 237
    const v1, 0x7f0b0031

    const v2, 0x7f04001e

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/PhotoPage;->inflatePageView(II)V

    .line 238
    new-instance v1, Lcom/miui/gallery/settings/PreferenceHelper;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 240
    new-instance v1, Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/miui/gallery/ui/PhotoView;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    .line 241
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/ui/PhotoView;->setPhotoTapListener(Lcom/miui/gallery/ui/PhotoView$PhotoStatusListener;)V

    .line 242
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/GLView;->addComponent(Lcom/miui/gallery/ui/GLView;)V

    .line 243
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/GalleryApp;

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 245
    const-string v1, "media-set-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, setPathString:Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$2;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$2;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mDummyOnTouchListner:Landroid/view/View$OnTouchListener;

    .line 252
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$3;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/PhotoPage$3;-><init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 268
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBottomBarFadeIn:Landroid/view/animation/Animation;

    .line 270
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Lcom/miui/gallery/bigscreen/BigScreenControl;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/miui/gallery/bigscreen/BigScreenControl;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/bigscreen/BigScreenControl$UIListener;)V

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    .line 272
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->getDeviceBarControl()Lcom/miui/gallery/bigscreen/DeviceBarControl;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    .line 275
    :cond_0
    const/4 v4, 0x0

    .line 278
    .local v4, itemPath:Lcom/miui/gallery/data/Path;
    if-eqz v8, :cond_3

    .line 280
    :try_start_0
    const-string v1, "index-hint"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 281
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSet;

    iput-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 282
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    if-nez v1, :cond_1

    .line 283
    const-string v1, "grab_photo_page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to restore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/bigscreen/BigScreenControl;->updateCurrentFolder(Lcom/miui/gallery/data/MediaSet;)V

    .line 290
    :cond_2
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 293
    new-instance v0, Lcom/miui/gallery/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    iget v5, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/app/PhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/Path;I)V

    .line 296
    .local v0, pda:Lcom/miui/gallery/app/PhotoDataAdapter;
    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    .line 297
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoView;->setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V

    .line 299
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    const-string v2, "index-hint"

    iget v3, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/miui/gallery/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 302
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$4;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$4;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/PhotoDataAdapter;->setDataListener(Lcom/miui/gallery/app/PhotoDataAdapter$DataListener;)V

    .line 362
    .end local v0           #pda:Lcom/miui/gallery/app/PhotoDataAdapter;
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/ui/PhotoView;->setOpenedItem(Lcom/miui/gallery/data/Path;)V

    .line 367
    :goto_1
    return-void

    .line 343
    :cond_3
    const-string v1, "media-item-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/PhotoPage;->parsePath(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 346
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/MediaItem;

    .line 349
    .local v7, mediaItem:Lcom/miui/gallery/data/MediaItem;
    new-instance v9, Lcom/miui/gallery/app/SinglePhotoDataAdapter;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-direct {v9, v1, v2, v7}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/PhotoView;Lcom/miui/gallery/data/MediaItem;)V

    .line 350
    .local v9, spda:Lcom/miui/gallery/app/SinglePhotoDataAdapter;
    new-instance v1, Lcom/miui/gallery/app/PhotoPage$5;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/PhotoPage$5;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    invoke-virtual {v9, v1}, Lcom/miui/gallery/app/SinglePhotoDataAdapter;->setDataListener(Lcom/miui/gallery/app/SinglePhotoDataAdapter$DataListener;)V

    .line 356
    iput-object v9, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    .line 357
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PhotoView;->setModel(Lcom/miui/gallery/ui/PhotoView$Model;)V

    .line 358
    invoke-virtual {p0, v7}, Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v7           #mediaItem:Lcom/miui/gallery/data/MediaItem;
    .end local v9           #spda:Lcom/miui/gallery/app/SinglePhotoDataAdapter;
    :catch_0
    move-exception v6

    .line 364
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/gallery/app/StateManager;->finishState(Lcom/miui/gallery/app/ActivityState;)V

    goto :goto_1
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    .line 900
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 901
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1046
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onDestroy()V

    .line 1047
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->destroy()V

    .line 1050
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->disconWithDelay()V

    .line 1053
    :cond_1
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 889
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteractionTap()V

    .line 893
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/ActivityState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onPause()V

    .line 1007
    invoke-static {}, Lcom/miui/gallery/ui/DetailsHelper;->pause()V

    .line 1009
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->pause()V

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    if-eqz v0, :cond_2

    .line 1013
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->pause()V

    .line 1015
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1020
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->setViewListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1025
    invoke-super {p0}, Lcom/miui/gallery/app/ActivityState;->onResume()V

    .line 1027
    invoke-virtual {p0, p0}, Lcom/miui/gallery/app/PhotoPage;->setViewListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mRootPane:Lcom/miui/gallery/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 1030
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->resume()V

    .line 1031
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->resume()V

    .line 1032
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1033
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteraction()V

    .line 1034
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->updateCurrentPhoto(Ljava/lang/String;)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    invoke-virtual {v0}, Lcom/miui/gallery/bigscreen/BigScreenControl;->refreshDevices()V

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshIndexIndicator()V

    .line 1043
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 938
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v1

    .line 939
    .local v1, item:Lcom/miui/gallery/data/MediaItem;
    if-nez v1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 944
    :cond_0
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    move v2, v4

    .line 947
    .local v2, playVideo:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 950
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoView;->getWidth()I

    move-result v3

    .line 951
    .local v3, w:I
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v6}, Lcom/miui/gallery/ui/PhotoView;->getHeight()I

    move-result v0

    .line 952
    .local v0, h:I
    div-int/lit8 v6, v3, 0x2

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    if-gt v6, v3, :cond_3

    div-int/lit8 v6, v0, 0x2

    sub-int v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xc

    if-gt v6, v0, :cond_3

    move v2, v4

    .line 956
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_1
    :goto_2
    if-eqz v2, :cond_5

    .line 957
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v4}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->getConnectState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 958
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getNameForDisplay()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/app/PhotoPage;->mDeviceBarCon:Lcom/miui/gallery/bigscreen/DeviceBarControl;

    invoke-virtual {v7}, Lcom/miui/gallery/bigscreen/DeviceBarControl;->getCurDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GalleryUtils;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #playVideo:Z
    :cond_2
    move v2, v5

    .line 944
    goto :goto_1

    .restart local v0       #h:I
    .restart local v2       #playVideo:Z
    .restart local v3       #w:I
    :cond_3
    move v2, v5

    .line 952
    goto :goto_2

    .line 961
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getNameForDisplay()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/miui/gallery/util/GalleryUtils;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->onUserInteractionTap()V

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 978
    packed-switch p1, :pswitch_data_0

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 980
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 981
    if-eqz p3, :cond_0

    .line 982
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 984
    .local v1, path:Lcom/miui/gallery/data/Path;
    if-eqz v1, :cond_0

    .line 985
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    iget v3, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v2, v1, v3}, Lcom/miui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 990
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 991
    const-string v2, "media-item-path"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, path:Ljava/lang/String;
    const-string v2, "photo-index"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 993
    .local v0, index:I
    if-eqz v1, :cond_0

    .line 994
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/miui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/miui/gallery/data/Path;I)V

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSwapStarted()V
    .locals 0

    .prologue
    .line 935
    return-void
.end method

.method public onThumbnailDownloaded()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    .line 836
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 837
    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    .line 853
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 854
    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    .line 863
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 865
    :cond_0
    return-void
.end method

.method public onUserInteractionTap()V
    .locals 2

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->hideBars()V

    .line 842
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 847
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->showBars()V

    .line 845
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method

.method public refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 827
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mIsInteracting:Z

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 831
    :cond_0
    return-void
.end method

.method setViewListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 425
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    return-void
.end method

.method public showBottomBar()V
    .locals 2

    .prologue
    .line 1187
    const-string v0, "grab_photo_page"

    const-string v1, "showBottomBar"

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 1189
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/PhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->configActions()V

    .line 1192
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1196
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mBottomBarFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1198
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBottomBarFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_0
.end method

.method protected updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-ne v0, p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    .line 388
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PhotoView;->showVideoPlayIcon(Z)V

    .line 395
    const-string v0, "grab_photo_page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenEnable:Z

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage;->mBigScreenControl:Lcom/miui/gallery/bigscreen/BigScreenControl;

    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/bigscreen/BigScreenControl;->updateCurrentPhoto(Ljava/lang/String;)V

    .line 399
    :cond_3
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;->refreshIndexIndicator()V

    goto :goto_0

    .line 393
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
