.class public abstract Lcom/miui/gallery/data/AlbumCacheBase;
.super Ljava/lang/Object;
.source "AlbumCacheBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
    }
.end annotation


# static fields
.field private static mEverReloaded:Z

.field private static sVersionSerial:J


# instance fields
.field private mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mDataVersion:J

.field protected mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

.field private mResultAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/data/AlbumCacheBase;->mEverReloaded:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V
    .locals 2
    .parameter "set"
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 42
    new-instance v0, Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-direct {v0, p2}, Lcom/miui/gallery/settings/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J

    .line 44
    return-void
.end method

.method private compareCache(Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    const/4 v0, 0x0

    .line 120
    .local v0, flag:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 121
    const/4 v0, 0x1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_0

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private filterCache()V
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getAllAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 99
    .local v0, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/AlbumCacheBase;->filterAlbum(Lcom/miui/gallery/data/MediaSet;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 216
    const-class v1, Lcom/miui/gallery/data/AlbumCacheBase;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/miui/gallery/data/AlbumCacheBase;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;

    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->readSortBy()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;-><init>(Lcom/miui/gallery/data/AlbumCacheBase;I)V

    .line 136
    .local v0, comparator:Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected abstract canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z
.end method

.method public declared-synchronized cloneResultAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public everReloaded()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/miui/gallery/data/AlbumCacheBase;->mEverReloaded:Z

    return v0
.end method

.method protected filterAlbum(Lcom/miui/gallery/data/MediaSet;)V
    .locals 4
    .parameter "mediaSet"

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 85
    .local v0, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_1

    .line 86
    const-string v1, "AlbumCacheBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbAlbum should not be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/AlbumCacheBase;->canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/DBAlbum;->setMediaSet(Lcom/miui/gallery/data/MediaSet;)V

    .line 92
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getDBAlbumByBucketId(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 3
    .parameter "bucketId"

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/DBAlbum;

    .line 164
    :goto_1
    return-object v1

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->everReloaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    const-string v1, "AlbumCacheBase"

    const-string v2, "reload() is not called yet, getDBAlbumByBucketId() returns null"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getDBAlbumByBucketId(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataVersion()J
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResultAlbumCount()I
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->readSortBy()I

    move-result v0

    return v0
.end method

.method protected abstract readSortBy()I
.end method

.method public declared-synchronized reloadCache()Z
    .locals 4

    .prologue
    .line 64
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/miui/gallery/data/AlbumCacheBase;->mEverReloaded:Z

    .line 65
    invoke-static {}, Lcom/miui/gallery/data/AlbumCache;->reloadCache()V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mResultAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-direct {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->filterCache()V

    .line 74
    invoke-direct {p0}, Lcom/miui/gallery/data/AlbumCacheBase;->sort()V

    .line 76
    invoke-direct {p0, v1}, Lcom/miui/gallery/data/AlbumCacheBase;->compareCache(Ljava/util/ArrayList;)Z

    move-result v0

    .line 77
    .local v0, fReallyLoad:Z
    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/miui/gallery/data/AlbumCacheBase;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/AlbumCacheBase;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return v0

    .line 64
    .end local v0           #fReallyLoad:Z
    .end local v1           #tempAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract setSortBy(I)V
.end method
