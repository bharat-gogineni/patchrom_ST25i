.class public Lcom/miui/gallery/data/StorageMediaSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "StorageMediaSet.java"


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "folderPath"

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 23
    iput-object p2, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 24
    invoke-static {p3}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->getBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 25
    return-void
.end method

.method private static loadOrUpdateItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)Lcom/miui/gallery/data/MediaItem;
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "app"
    .parameter "fileInfo"

    .prologue
    .line 57
    invoke-virtual {p1, p0}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/StorageMediaItem;

    .line 58
    .local v0, item:Lcom/miui/gallery/data/StorageMediaItem;
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p3}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/miui/gallery/data/StorageVideo;

    .end local v0           #item:Lcom/miui/gallery/data/StorageMediaItem;
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 67
    .restart local v0       #item:Lcom/miui/gallery/data/StorageMediaItem;
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/StorageImage;

    .end local v0           #item:Lcom/miui/gallery/data/StorageMediaItem;
    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .restart local v0       #item:Lcom/miui/gallery/data/StorageMediaItem;
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0, p3}, Lcom/miui/gallery/data/StorageMediaItem;->updateContent(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->deleteAllMedia()V

    .line 116
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 30
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    .line 31
    .local v1, dataManager:Lcom/miui/gallery/data/DataManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    move v3, p1

    .local v3, index:I
    :goto_0
    add-int v7, p1, p2

    if-ge v3, v7, :cond_0

    .line 36
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v7, v3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v2

    .line 37
    .local v2, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v2, :cond_1

    .line 53
    .end local v2           #fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_0
    return-object v6

    .line 42
    .restart local v2       #fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_1
    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    sget-object v5, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 44
    .local v5, itemPath:Lcom/miui/gallery/data/Path;
    iget-object v7, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 50
    .local v0, childPath:Lcom/miui/gallery/data/Path;
    :goto_1
    iget-object v7, p0, Lcom/miui/gallery/data/StorageMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-static {v0, v1, v7, v2}, Lcom/miui/gallery/data/StorageMediaSet;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/StorageExplorer/FileInfo;)Lcom/miui/gallery/data/MediaItem;

    move-result-object v4

    .line 51
    .local v4, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v0           #childPath:Lcom/miui/gallery/data/Path;
    .end local v4           #item:Lcom/miui/gallery/data/MediaItem;
    .end local v5           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_2
    sget-object v5, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 47
    .restart local v5       #itemPath:Lcom/miui/gallery/data/Path;
    iget-object v7, v2, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .restart local v0       #childPath:Lcom/miui/gallery/data/Path;
    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 105
    const/16 v0, 0x404

    .line 106
    .local v0, result:I
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageMediaSet;->canDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    or-int/lit8 v0, v0, 0x1

    .line 109
    :cond_0
    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->loadAllMedias()V

    .line 98
    invoke-static {}, Lcom/miui/gallery/data/StorageMediaSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mDataVersion:J

    .line 100
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/StorageMediaSet;->mDataVersion:J

    return-wide v0
.end method
