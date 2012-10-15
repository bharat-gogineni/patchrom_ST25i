.class public Lcom/miui/gallery/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/miui/gallery/app/GalleryApp;


# static fields
.field private static sContext:Lcom/miui/gallery/app/GalleryAppImpl;

.field private static sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;


# instance fields
.field private mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

.field private mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mDataManager:Lcom/miui/gallery/data/DataManager;

.field private mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

.field private mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

.field private mIsStorageReady:Z

.field private mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

.field private mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static sGetAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    return-object v0
.end method

.method public static sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    return-object v0
.end method

.method public static sGetGalleryDBHelper()Lcom/miui/gallery/util/GalleryDBHelper;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "GalleryAppImpl"

    const-string v1, "DB Helper is null; fail to operate on gallery db."

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    sget-object v0, Lcom/miui/gallery/app/GalleryAppImpl;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    return-object v0
.end method

.method public static sIsStorageReady()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->hasStorage()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/gallery/data/AllAlbumCache;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/AllAlbumCache;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 141
    return-object p0
.end method

.method public declared-synchronized getDataManager()Lcom/miui/gallery/data/DataManager;
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/miui/gallery/data/DataManager;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DataManager;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 154
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DataManager;->initializeSourceMap()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDataManager:Lcom/miui/gallery/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/miui/gallery/data/DownloadCache;
    .locals 4

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

    if-nez v1, :cond_2

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/io/File;Z)Z

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/gallery/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/miui/gallery/data/DownloadCache;-><init>(Lcom/miui/gallery/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;

    .line 188
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mDownloadCache:Lcom/miui/gallery/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/miui/gallery/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mImageCacheService:Lcom/miui/gallery/data/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/miui/gallery/data/RecentAlbumCache;

    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/RecentAlbumCache;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mRecentAlbumCache:Lcom/miui/gallery/data/RecentAlbumCache;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/miui/gallery/util/ThreadPool;
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/miui/gallery/util/ThreadPool;

    invoke-direct {v0}, Lcom/miui/gallery/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyMediaMountState(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 120
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mIsStorageReady:Z

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 123
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 62
    const-string v1, "GalleryAppImpl"

    const-string v2, "test GalleryAppImpl.onCreate() start"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 65
    sput-object p0, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/AlbumUtils;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/gallery/util/AlbumUtils;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-direct {v1, p0}, Lcom/miui/gallery/util/GalleryDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/gallery/app/GalleryAppImpl;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 76
    sget-object v1, Lcom/miui/gallery/app/GalleryAppImpl;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->isDbOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, "GalleryAppImpl"

    const-string v2, "Fail to open gallery db."

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lcom/miui/gallery/app/GalleryAppImpl;->sDBHelper:Lcom/miui/gallery/util/GalleryDBHelper;

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 83
    invoke-static {p0}, Lcom/miui/gallery/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/miui/gallery/util/AlbumUtils;->initialize(Landroid/content/Context;)V

    .line 88
    const-string v1, "GalleryAppImpl"

    const-string v2, "test GalleryAppImpl.onCreate(): AlbumUtils.addDefaultAlbums"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->addDefaultAlbums()V

    .line 93
    const-string v1, "GalleryAppImpl"

    const-string v2, "test GalleryAppImpl.onCreate(): AlbumUtils.addDefaultAlbums end"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/miui/gallery/app/GalleryAppImpl;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/DataManager;->getAllMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 99
    iget-object v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-static {v1}, Lcom/miui/gallery/data/AlbumCache;->initCache(Lcom/miui/gallery/data/MediaSet;)V

    .line 106
    invoke-static {}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->hasStorage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/app/GalleryAppImpl;->mIsStorageReady:Z

    .line 108
    sget-boolean v1, Lcom/miui/gallery/util/GalleryDBHelper;->sShouldRunScanThread:Z

    if-eqz v1, :cond_1

    .line 109
    new-instance v0, Lcom/miui/gallery/cloud/ScanWorkerThread;

    sget-object v1, Lcom/miui/gallery/app/GalleryAppImpl;->sContext:Lcom/miui/gallery/app/GalleryAppImpl;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, scanner:Lcom/miui/gallery/cloud/ScanWorkerThread;
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->start()V

    .line 111
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/gallery/util/GalleryDBHelper;->sShouldRunScanThread:Z

    .line 115
    .end local v0           #scanner:Lcom/miui/gallery/cloud/ScanWorkerThread;
    :cond_1
    const-string v1, "GalleryAppImpl"

    const-string v2, "test GalleryAppImpl.onCreate() end"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
