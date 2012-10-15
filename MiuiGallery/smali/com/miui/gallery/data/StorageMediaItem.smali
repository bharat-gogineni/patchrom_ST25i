.class public abstract Lcom/miui/gallery/data/StorageMediaItem;
.super Lcom/miui/gallery/data/MediaItem;
.source "StorageMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;
    }
.end annotation


# instance fields
.field protected mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/StorageExplorer/FileInfo;J)V
    .locals 0
    .parameter "path"
    .parameter "fileInfo"
    .parameter "version"

    .prologue
    .line 30
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 32
    return-void
.end method

.method public static getContentUriForGallery(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 5
    .parameter "filePath"
    .parameter "isVideo"

    .prologue
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://storage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v2, "video/item"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 160
    .local v0, baseUri:Landroid/net/Uri;
    invoke-static {p0}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, pathSegment:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 158
    .end local v0           #baseUri:Landroid/net/Uri;
    .end local v1           #pathSegment:Ljava/lang/String;
    :cond_0
    const-string v2, "image/item"

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 128
    const/4 v0, 0x0

    new-instance v1, Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;

    invoke-direct {v1, p0}, Lcom/miui/gallery/data/StorageMediaItem$DeleteStorageMediaItem;-><init>(Lcom/miui/gallery/data/StorageMediaItem;)V

    invoke-static {v0, p0, v1}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 129
    return-void
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected abstract getBaseUriToDeleteFromMediaDb()Landroid/net/Uri;
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForGallery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/data/StorageMediaItem;->getContentUriForGallery(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateForTimeClusteringInMs()J
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    return-wide v0
.end method

.method public getDateModifiedInMs()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 70
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v2

    .line 71
    .local v2, details:Lcom/miui/gallery/data/MediaDetails;
    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v4, v4, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 72
    iget-object v3, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v3, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v3, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    const v5, 0x23515

    invoke-static {v0, v3, v4, v5}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, dateString:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 79
    iget-object v3, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v3, v3, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    iget-object v5, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v5, v5, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v6, v6, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    aput-wide v6, v4, v5

    iget-object v5, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v5, v5, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    aput-wide v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaItem;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 83
    :cond_1
    return-object v2
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 56
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    aput-wide v1, p1, v0

    .line 57
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v1, v1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    aput-wide v1, p1, v0

    .line 58
    return-void
.end method

.method protected getLatitude()D
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    return-wide v0
.end method

.method protected getLongitude()D
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameForCompare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getWidth()I

    move-result v0

    return v0
.end method

.method protected updateContent(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 4
    .parameter "newFileInfo"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-wide v0, v0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mFileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->loadAllData()V

    .line 169
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageMediaItem;->mDataVersion:J

    .line 171
    :cond_0
    return-void
.end method
