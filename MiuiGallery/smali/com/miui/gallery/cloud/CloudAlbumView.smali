.class public Lcom/miui/gallery/cloud/CloudAlbumView;
.super Lcom/miui/gallery/ui/AlbumViewBase;
.source "CloudAlbumView.java"


# instance fields
.field private final MSG_PUSH_DOWNLOAD_FILES:I

.field mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

.field private mFirstPush:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "spec"
    .parameter "albumSetPath"

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/ui/AlbumViewBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/ui/SlotView$Spec;Ljava/lang/String;)V

    .line 17
    iput v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->MSG_PUSH_DOWNLOAD_FILES:I

    .line 19
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mFirstPush:Z

    .line 25
    new-instance v0, Lcom/miui/gallery/cloud/CloudAlbumView$1;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/cloud/CloudAlbumView$1;-><init>(Lcom/miui/gallery/cloud/CloudAlbumView;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/CloudAlbumView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mLastStart:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/CloudAlbumView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mLastEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/cloud/CloudAlbumView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/CloudAlbumView;->pushDownloadFileName(II)V

    return-void
.end method

.method private pushDownloadFileName(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-virtual {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->clearPushQueue()V

    .line 49
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    invoke-interface {v2, v1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mModel:Lcom/miui/gallery/ui/AlbumViewBase$Model;

    invoke-interface {v2, v1}, Lcom/miui/gallery/ui/AlbumViewBase$Model;->get(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 55
    const-string v2, "CloudAlbumView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mCloudDownloadArrayList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->pushFileName(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v0           #fileName:Ljava/lang/String;
    :cond_2
    iget-boolean v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mFirstPush:Z

    if-nez v2, :cond_3

    .line 61
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/SyncStateManager;->setUINewPush(IZ)V

    .line 65
    :goto_2
    const-string v2, "CloudAlbumView"

    const-string v3, "====================================="

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 63
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mFirstPush:Z

    goto :goto_2
.end method


# virtual methods
.method protected declared-synchronized updateVisibleRange(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/ui/AlbumViewBase;->updateVisibleRange(II)V

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
