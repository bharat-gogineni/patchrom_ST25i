.class public Lcom/miui/gallery/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/ImageCacheService$ImageData;
    }
.end annotation


# instance fields
.field private mExternalCache:Lcom/miui/gallery/common/BlobCache;

.field private mInternalCache:Lcom/miui/gallery/common/BlobCache;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 50
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 185
    array-length v1, p0

    .line 186
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 190
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/miui/gallery/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x0

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, result:Lcom/miui/gallery/common/BlobCache;
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getParent()Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 106
    .local v1, parent:Lcom/miui/gallery/data/Path;
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageVideoPathType(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;

    move-result-object v0

    .line 108
    .local v0, itemPathType:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    iget-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    if-eqz v3, :cond_1

    .line 110
    iget-boolean v3, v0, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 119
    :goto_0
    return-object v2

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.gallery.cloud.provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 116
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the path form is wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getImageData(Lcom/miui/gallery/data/MediaItem;I)Lcom/miui/gallery/data/ImageCacheService$ImageData;
    .locals 16
    .parameter "item"
    .parameter "type"

    .prologue
    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v12

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/miui/gallery/data/ImageCacheService;->makeKey(Lcom/miui/gallery/data/Path;I)[B

    move-result-object v7

    .line 124
    .local v7, key:[B
    invoke-static {v7}, Lcom/miui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 126
    .local v2, cacheKey:J
    const/4 v11, 0x0

    .line 127
    .local v11, value:[B
    const/4 v1, 0x0

    .line 128
    .local v1, cache:Lcom/miui/gallery/common/BlobCache;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/gallery/data/ImageCacheService;->getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const/4 v12, 0x0

    monitor-exit v13

    .line 151
    :goto_0
    return-object v12

    .line 134
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/common/BlobCache;->lookup(J)[B

    move-result-object v11

    .line 135
    monitor-exit v13

    .line 136
    if-nez v11, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v12

    .line 148
    :catch_0
    move-exception v12

    .line 151
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v7, v11}, Lcom/miui/gallery/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 138
    array-length v12, v7

    invoke-static {v11, v12}, Lcom/miui/gallery/common/Utils;->getLongFromBytes([BI)J

    move-result-wide v9

    .line 139
    .local v9, time:J
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 141
    .local v5, fileModified:J
    sub-long v12, v9, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x7d0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/common/BlobCache;->deleteKey(J)V

    .line 143
    const/4 v12, 0x0

    goto :goto_0

    .line 145
    :cond_3
    array-length v12, v7

    add-int/lit8 v8, v12, 0x8

    .line 146
    .local v8, offset:I
    new-instance v12, Lcom/miui/gallery/data/ImageCacheService$ImageData;

    invoke-direct {v12, v11, v8}, Lcom/miui/gallery/data/ImageCacheService$ImageData;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public initCache()V
    .locals 6

    .prologue
    .line 73
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sIsStorageReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    if-nez v1, :cond_0

    .line 78
    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_IMAGE:I

    const v3, 0xc350

    const/high16 v4, 0xc80

    const/4 v5, 0x6

    invoke-static {v0, v1, v3, v4, v5}, Lcom/miui/gallery/util/CacheManager;->getExternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    if-nez v1, :cond_1

    .line 91
    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_INTERNAL_IMAGE:I

    const v3, 0xc350

    const/high16 v4, 0xc80

    const/4 v5, 0x6

    invoke-static {v0, v1, v3, v4, v5}, Lcom/miui/gallery/util/CacheManager;->getInternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 95
    :cond_1
    monitor-exit v2

    .line 96
    return-void

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    invoke-virtual {v1}, Lcom/miui/gallery/common/BlobCache;->close()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCleanCache()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mExternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/ImageCacheService;->mInternalCache:Lcom/miui/gallery/common/BlobCache;

    .line 68
    invoke-virtual {p0}, Lcom/miui/gallery/data/ImageCacheService;->initCache()V

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putImageData(Lcom/miui/gallery/data/MediaItem;I[B)V
    .locals 14
    .parameter "item"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 155
    iget-object v12, p0, Lcom/miui/gallery/data/ImageCacheService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/miui/gallery/data/ImageCacheService;->getCacheByPath(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/common/BlobCache;

    move-result-object v2

    .line 157
    .local v2, cache:Lcom/miui/gallery/common/BlobCache;
    if-nez v2, :cond_0

    .line 158
    monitor-exit v12

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v11

    move/from16 v0, p2

    invoke-static {v11, v0}, Lcom/miui/gallery/data/ImageCacheService;->makeKey(Lcom/miui/gallery/data/Path;I)[B

    move-result-object v7

    .line 162
    .local v7, key:[B
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, itemFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 164
    .local v8, modifiedTime:J
    invoke-static {v8, v9}, Lcom/miui/gallery/common/Utils;->getBytesByLong(J)[B

    move-result-object v10

    .line 166
    .local v10, time:[B
    invoke-static {v7}, Lcom/miui/gallery/common/Utils;->crc64Long([B)J

    move-result-wide v3

    .line 167
    .local v3, cacheKey:J
    array-length v11, v7

    array-length v13, v10

    add-int/2addr v11, v13

    move-object/from16 v0, p3

    array-length v13, v0

    add-int/2addr v11, v13

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 168
    .local v1, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2, v3, v4, v11}, Lcom/miui/gallery/common/BlobCache;->insert(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_1
    :try_start_2
    monitor-exit v12

    goto :goto_0

    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #cache:Lcom/miui/gallery/common/BlobCache;
    .end local v3           #cacheKey:J
    .end local v6           #itemFile:Ljava/io/File;
    .end local v7           #key:[B
    .end local v8           #modifiedTime:J
    .end local v10           #time:[B
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 174
    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v3       #cacheKey:J
    .restart local v6       #itemFile:Ljava/io/File;
    .restart local v7       #key:[B
    .restart local v8       #modifiedTime:J
    .restart local v10       #time:[B
    :catch_0
    move-exception v5

    .line 175
    .local v5, ex:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
