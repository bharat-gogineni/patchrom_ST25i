.class public Lcom/miui/gallery/cloud/CloudAlbumPage;
.super Lcom/miui/gallery/app/AlbumPageBase;
.source "CloudAlbumPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumPageBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAlbumDataAdapter(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)Lcom/miui/gallery/app/AlbumDataAdapter;
    .locals 1
    .parameter "activity"
    .parameter "mediaSet"

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/app/AlbumDataAdapter;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;)V

    return-object v0
.end method

.method protected createAlbumView(Lcom/miui/gallery/ui/SlotView$Spec;)Lcom/miui/gallery/ui/AlbumViewBase;
    .locals 3
    .parameter "slotViewSpec"

    .prologue
    .line 33
    new-instance v0, Lcom/miui/gallery/cloud/CloudAlbumView;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumPage;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/miui/gallery/cloud/CloudAlbumView;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMenuResource()I
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f100003

    return v0
.end method

.method protected getStartClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/miui/gallery/cloud/CloudPhotoPage;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .parameter "data"
    .parameter "restoreState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/AlbumPageBase;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, scannerThread:Lcom/miui/gallery/cloud/ScanWorkerThread;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->start()V

    .line 26
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudAlbumPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;->getInstance(Landroid/content/Context;Landroid/accounts/Account;Lmiui/net/ExtendedAuthToken;)Lcom/miui/gallery/cloud/DownloadMicroThumbnailFromServerThread;

    .line 27
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->setUIDownloading(Z)V

    .line 28
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->setActive(Z)V

    .line 29
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->setActive(Z)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0}, Lcom/miui/gallery/app/AlbumPageBase;->onDestroy()V

    .line 48
    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->setUIDownloading(Z)V

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->setActive(Z)V

    .line 50
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->setActive(Z)V

    .line 51
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    .line 52
    return-void
.end method
