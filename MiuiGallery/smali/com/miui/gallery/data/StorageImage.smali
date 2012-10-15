.class public Lcom/miui/gallery/data/StorageImage;
.super Lcom/miui/gallery/data/StorageMediaItem;
.source "StorageImage.java"


# static fields
.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "/storage/image/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "fileInfo"

    .prologue
    .line 21
    invoke-static {}, Lcom/miui/gallery/data/StorageImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V

    .line 22
    iput-object p2, p0, Lcom/miui/gallery/data/StorageImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

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
    invoke-static {p3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getBaseUriToDeleteFromMediaDb()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 63
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    invoke-static {v0, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->appendImageDetails(Lcom/miui/gallery/data/MediaDetails;Lcom/miui/gallery/data/MediaItem;)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    return-object v1
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method public getSupportedOperations()I
    .locals 6

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v0

    return v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

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
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/StorageImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V

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
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/StorageImage;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->updateOrientation(I)V

    .line 52
    invoke-static {}, Lcom/miui/gallery/data/StorageImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageImage;->mDataVersion:J

    .line 53
    return-void
.end method
