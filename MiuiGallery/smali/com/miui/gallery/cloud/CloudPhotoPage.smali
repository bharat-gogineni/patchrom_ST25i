.class public Lcom/miui/gallery/cloud/CloudPhotoPage;
.super Lcom/miui/gallery/app/PhotoPage;
.source "CloudPhotoPage.java"


# instance fields
.field private mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage;-><init>()V

    return-void
.end method

.method private handleOnePhoto(Lcom/miui/gallery/data/MediaItem;)V
    .locals 11
    .parameter "photo"

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailTypeByFilePath(Ljava/lang/String;)I

    move-result v7

    .line 31
    .local v7, type:I
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, fileName:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-virtual {v9, v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->isFileInDownloading(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 34
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/PhotoView;->showLoading(Ljava/lang/String;)V

    .line 35
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->moveFileNameToHead(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v9, 0x1

    if-eq v7, v9, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v2

    .line 42
    .local v2, netState:Lcn/kuaipan/kss/KssDef$NetState;
    sget-object v9, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne v2, v9, :cond_2

    .line 43
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->pushFileName(Ljava/lang/String;)V

    .line 44
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/gallery/ui/PhotoView;->showLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getWidth()I

    move-result v8

    .line 47
    .local v8, width:I
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getHeight()I

    move-result v1

    .line 48
    .local v1, height:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenWidthPixel()I

    move-result v5

    .line 49
    .local v5, screenWidth:I
    invoke-static {}, Lcom/miui/gallery/app/Config$GlobalConfig;->get()Lcom/miui/gallery/app/Config$GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/app/Config$GlobalConfig;->getScreenHeightPixel()I

    move-result v4

    .line 50
    .local v4, screenHeight:I
    div-int v9, v8, v5

    div-int v10, v1, v4

    mul-int/2addr v9, v10

    int-to-float v3, v9

    .line 51
    .local v3, ratio:F
    const/4 v6, 0x0

    .line 52
    .local v6, size:I
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/miui/gallery/cloud/CloudPhotoPage;->showDownloadButton(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 59
    .end local v1           #height:I
    .end local v2           #netState:Lcn/kuaipan/kss/KssDef$NetState;
    .end local v3           #ratio:F
    .end local v4           #screenHeight:I
    .end local v5           #screenWidth:I
    .end local v6           #size:I
    .end local v8           #width:I
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    .line 60
    iget-object v9, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v9}, Lcom/miui/gallery/ui/PhotoView;->disableLoading()V

    goto/16 :goto_0
.end method

.method private hideDownloadButton()V
    .locals 2

    .prologue
    .line 84
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->setDownloadButtonShowing(Z)V

    .line 86
    return-void
.end method

.method private showDownloadButton(Ljava/lang/String;I)V
    .locals 8
    .parameter "waitThumbnail"
    .parameter "size"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    const v3, 0x7f0b0079

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/CloudPhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, button:Landroid/view/View;
    const v3, 0x7f0b007b

    invoke-virtual {p0, v3}, Lcom/miui/gallery/cloud/CloudPhotoPage;->findViewInPage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 75
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    div-int/lit16 v5, p2, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mWaitThumbnail:Ljava/lang/String;

    .line 80
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v3, v7}, Lcom/miui/gallery/ui/PhotoView;->setDownloadButtonShowing(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->onClick(Landroid/view/View;)V

    .line 114
    :cond_0
    return-void

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    .line 109
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mWaitThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PhotoView;->showLoading(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mWaitThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->pushFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0079
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/miui/gallery/cloud/DownloadThumbnailFromServerThread;->getInstance(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lcom/miui/gallery/cloud/DownloadThumbnailFromServerThread;

    .line 21
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    .line 22
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/miui/gallery/app/PhotoPage;->onPause()V

    .line 91
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/miui/gallery/app/PhotoPage;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mPhotoView:Lcom/miui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/PhotoView;->isShowLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->handleOnePhoto(Lcom/miui/gallery/data/MediaItem;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onSwapStarted()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    .line 122
    return-void
.end method

.method public onThumbnailDownloaded()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudPhotoPage;->hideDownloadButton()V

    .line 118
    return-void
.end method

.method protected updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudPhotoPage;->mCurrentPhoto:Lcom/miui/gallery/data/MediaItem;

    if-eq v0, p1, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CloudPhotoPage;->handleOnePhoto(Lcom/miui/gallery/data/MediaItem;)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/miui/gallery/data/MediaItem;)V

    .line 69
    return-void
.end method
