.class public Lcom/miui/gallery/data/AlbumCache;
.super Ljava/lang/Object;
.source "AlbumCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    }
.end annotation


# static fields
.field private static mMediaSetDataVersion:J

.field private static sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private static sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static declared-synchronized cloneAlbum(Lcom/miui/gallery/data/DBAlbum;)V
    .locals 4
    .parameter "src"

    .prologue
    .line 52
    const-class v2, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 53
    .local v0, currentAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_0

    .line 54
    const-string v1, "AlbumCache"

    const-string v3, "cloneAlbum(): currentAlbum is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    monitor-exit v2

    return-void

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/DBAlbum;->clone(Lcom/miui/gallery/data/DBAlbum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0           #currentAlbum:Lcom/miui/gallery/data/DBAlbum;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 77
    const-class v2, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 81
    :cond_1
    :try_start_1
    sget-object v1, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->get(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 86
    .local v0, data:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/miui/gallery/data/DBAlbum;

    .end local v0           #data:Lcom/miui/gallery/data/DBAlbum;
    invoke-direct {v0, p0}, Lcom/miui/gallery/data/DBAlbum;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v0       #data:Lcom/miui/gallery/data/DBAlbum;
    sget-object v1, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v1, p0, v0}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->put(Ljava/lang/String;Lcom/miui/gallery/data/DBAlbum;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0           #data:Lcom/miui/gallery/data/DBAlbum;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getAlbumByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/DBAlbum;
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 34
    const-class v5, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v4

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, bucketId:Ljava/lang/String;
    sget-object v6, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v6}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 41
    .local v3, pathSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    .local v2, pathIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, bucketPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    sget-object v4, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    invoke-virtual {v4, v1}, Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;->get(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 34
    .end local v0           #bucketId:Ljava/lang/String;
    .end local v1           #bucketPath:Ljava/lang/String;
    .end local v2           #pathIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #pathSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static initCache(Lcom/miui/gallery/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 61
    sput-object p0, Lcom/miui/gallery/data/AlbumCache;->sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 62
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->findAllAlbums()Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/AlbumCache;->sCache:Lcom/miui/gallery/data/AlbumCache$DBAlbumMap;

    .line 64
    return-void
.end method

.method public static declared-synchronized reloadCache()V
    .locals 6

    .prologue
    .line 67
    const-class v3, Lcom/miui/gallery/data/AlbumCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/miui/gallery/data/AlbumCache;->sAllMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    .line 68
    .local v0, newDataVersion:J
    sget-wide v4, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    .line 74
    :goto_0
    monitor-exit v3

    return-void

    .line 73
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/miui/gallery/data/AlbumCache;->mMediaSetDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
