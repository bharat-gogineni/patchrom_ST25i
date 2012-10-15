.class public Lcom/miui/gallery/data/StorageVideo;
.super Lcom/miui/gallery/data/StorageMediaItem;
.source "StorageVideo.java"


# static fields
.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "/storage/video/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "fileInfo"

    .prologue
    .line 21
    invoke-static {}, Lcom/miui/gallery/data/StorageVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V

    .line 22
    iput-object p2, p0, Lcom/miui/gallery/data/StorageVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "filePath"

    .prologue
    .line 26
    invoke-static {p3}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getBaseUriToDeleteFromMediaDb()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 67
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->appendVideoDetails(Lcom/miui/gallery/data/MediaDetails;I)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    return-object v1
.end method

.method protected getDuration()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/data/StorageVideo;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDuration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/StorageVideo;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot rotate a video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
