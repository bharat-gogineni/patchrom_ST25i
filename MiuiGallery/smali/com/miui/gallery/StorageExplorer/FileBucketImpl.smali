.class public Lcom/miui/gallery/StorageExplorer/FileBucketImpl;
.super Ljava/lang/Object;
.source "FileBucketImpl.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/FileBucket;


# static fields
.field private static mFileBucketCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/StorageExplorer/FileBucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllDataLoaded:Z

.field private mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/StorageExplorer/SortedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteFolderCount:I

.field private mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/StorageExplorer/SortedList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

.field private mImageNum:I

.field private mLastModified:J

.field private mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

.field private mRequestFilterFlags:I

.field private mSortBy:I

.field private mThisDir:Ljava/io/File;

.field private mVideoNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl$1;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileBucketCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    .line 24
    const/16 v0, 0x24

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mRequestFilterFlags:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mAllDataLoaded:Z

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mSortBy:I

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mLastModified:J

    .line 39
    invoke-static {p1}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBAlbum;->getSDCardSortBy()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mSortBy:I

    .line 40
    new-instance v0, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    .line 41
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->setSortMethod(I)V

    .line 42
    new-instance v0, Lcom/miui/gallery/StorageExplorer/SortedList;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    .line 43
    new-instance v0, Lcom/miui/gallery/StorageExplorer/SortedList;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-direct {v0, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    .line 44
    return-void
.end method

.method private addMeta(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 1
    .parameter "meta"

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 127
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->add(Ljava/lang/Object;)Z

    .line 114
    if-eqz p1, :cond_0

    check-cast p1, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/DirInfo;->isRecentAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFavoriteFolderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFavoriteFolderCount:I

    goto :goto_0

    .line 119
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-boolean v0, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsImage:Z

    if-eqz v0, :cond_3

    .line 121
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    goto :goto_0

    .line 123
    :cond_3
    iget-boolean v0, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    goto :goto_0
.end method

.method private deleteMedia(Lcom/miui/gallery/StorageExplorer/FileInfo;)V
    .locals 2
    .parameter "meta"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 153
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->remove(I)Ljava/lang/Object;

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    .end local v0           #position:I
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 160
    .restart local v0       #position:I
    if-ltz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->remove(I)Ljava/lang/Object;

    .line 162
    iget-boolean v1, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsImage:Z

    if-eqz v1, :cond_2

    .line 163
    iget v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    goto :goto_0

    .line 165
    :cond_2
    iget-boolean v1, p1, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsVideo:Z

    if-eqz v1, :cond_0

    .line 166
    iget v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    goto :goto_0
.end method

.method public static declared-synchronized getBucket(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileBucket;
    .locals 3
    .parameter "path"

    .prologue
    .line 217
    const-class v2, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileBucketCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/FileBucket;

    .line 218
    .local v0, bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;

    .end local v0           #bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-direct {v0, p0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v0       #bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    sget-object v1, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileBucketCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit v2

    return-object v0

    .line 217
    .end local v0           #bucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public deleteAllMedia()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->deleteMedias(Ljava/util/ArrayList;)V

    .line 131
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->deleteMedias(Ljava/util/ArrayList;)V

    .line 132
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertInMainThread()V

    .line 140
    if-nez p1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-direct {p0, v1}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->deleteMedia(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getFileMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    return v0
.end method

.method public getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 106
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 102
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/StorageExplorer/FileInfo;

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mSortBy:I

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    return v0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mRequestFilterFlags:I

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->setFilterFlags(I)V

    .line 62
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->getFilterFlags()I

    move-result v0

    iget v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mRequestFilterFlags:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mAllDataLoaded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mLastModified:J

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAllMedias()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 175
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mAllDataLoaded:Z

    .line 176
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mLastModified:J

    .line 178
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/SortedList;->clear()V

    .line 179
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/SortedList;->clear()V

    .line 180
    iput v8, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFavoriteFolderCount:I

    .line 181
    iput v8, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mImageNum:I

    .line 182
    iput v8, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mVideoNum:I

    .line 184
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    iget v7, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mRequestFilterFlags:I

    invoke-virtual {v6, v7}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->setFilterFlags(I)V

    .line 185
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mThisDir:Ljava/io/File;

    iget-object v7, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 186
    .local v5, listFiles:[Ljava/io/File;
    if-nez v5, :cond_1

    .line 192
    :cond_0
    return-void

    .line 188
    :cond_1
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 189
    .local v1, child:Ljava/io/File;
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-static {v1, v6}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v3

    .line 190
    .local v3, info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    invoke-direct {p0, v3}, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->addMeta(Lcom/miui/gallery/StorageExplorer/FileInfo;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFilterFlags(I)V
    .locals 3
    .parameter "filterFlags"

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, preferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;
    and-int/lit8 v2, p1, 0x3d

    invoke-virtual {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->isShowHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mRequestFilterFlags:I

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "sortOrder"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->getSortMethod()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iput p1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mSortBy:I

    .line 202
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;->setSortMethod(I)V

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mFileInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;->setComparator(Ljava/util/Comparator;)V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mDirInfos:Lcom/miui/gallery/StorageExplorer/SortedList;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/FileBucketImpl;->mMetaComparator:Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/SortedList;->setComparator(Ljava/util/Comparator;)V

    goto :goto_0
.end method
