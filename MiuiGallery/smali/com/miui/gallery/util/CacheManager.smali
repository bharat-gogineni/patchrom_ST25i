.class public Lcom/miui/gallery/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field public static CACHE_EXTERNAL_BOOKMARK:I

.field public static CACHE_EXTERNAL_IMAGE:I

.field public static CACHE_EXTERNAL_REV_GEOCODING:I

.field public static CACHE_INTERNAL_IMAGE:I

.field private static sCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sExternalCacheName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalCacheName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldCheckDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/util/CacheManager;->sOldCheckDone:Z

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_IMAGE:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_REV_GEOCODING:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_BOOKMARK:I

    .line 49
    const/4 v0, 0x4

    sput v0, Lcom/miui/gallery/util/CacheManager;->CACHE_INTERNAL_IMAGE:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_IMAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imgcache"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_REV_GEOCODING:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rev_geocoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_EXTERNAL_BOOKMARK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bookmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/CacheManager;->sInternalCacheName:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/miui/gallery/util/CacheManager;->sInternalCacheName:Ljava/util/HashMap;

    sget v1, Lcom/miui/gallery/util/CacheManager;->CACHE_INTERNAL_IMAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "internal_img_cache"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanCache(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 154
    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 155
    :try_start_0
    sget-object v1, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 156
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    invoke-static {p0, v1, v2}, Lcom/miui/gallery/util/CacheManager;->cleanCache(Landroid/content/Context;Ljava/io/File;Ljava/util/HashMap;)V

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sInternalCacheName:Ljava/util/HashMap;

    invoke-static {p0, v1, v2}, Lcom/miui/gallery/util/CacheManager;->cleanCache(Landroid/content/Context;Ljava/io/File;Ljava/util/HashMap;)V

    .line 161
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheManager160delete folder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCachePathFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Jlog;->usage(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getCachePathFolder()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    .line 165
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getImageCacheService()Lcom/miui/gallery/data/ImageCacheService;

    move-result-object v0

    .line 166
    .local v0, cacheService:Lcom/miui/gallery/data/ImageCacheService;
    invoke-virtual {v0}, Lcom/miui/gallery/data/ImageCacheService;->postCleanCache()V

    .line 167
    return-void

    .line 156
    .end local v0           #cacheService:Lcom/miui/gallery/data/ImageCacheService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static cleanCache(Landroid/content/Context;Ljava/io/File;Ljava/util/HashMap;)V
    .locals 6
    .parameter "context"
    .parameter "cacheDir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, cahceNames:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 145
    .local v2, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, filename:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CacheManager146deleteFiles:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lmiui/util/Jlog;->usage(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/gallery/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v3           #prefix:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getCache(Landroid/content/Context;IIIIZ)Lcom/miui/gallery/common/BlobCache;
    .locals 11
    .parameter "context"
    .parameter "cacheIndex"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"
    .parameter "isInternalCache"

    .prologue
    .line 69
    sget-object v10, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 70
    :try_start_0
    sget-boolean v2, Lcom/miui/gallery/util/CacheManager;->sOldCheckDone:Z

    if-nez v2, :cond_0

    .line 71
    invoke-static {p0}, Lcom/miui/gallery/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V

    .line 72
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miui/gallery/util/CacheManager;->sOldCheckDone:Z

    .line 74
    :cond_0
    const-string v9, ""

    .line 75
    .local v9, filename:Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 76
    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sInternalCacheName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #filename:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 81
    .restart local v9       #filename:Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const/4 v2, 0x0

    const-string v3, "cache\'s filename should not be null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v0, 0x0

    monitor-exit v10

    .line 110
    :goto_1
    return-object v0

    .line 78
    :cond_1
    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sExternalCacheName:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #filename:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #filename:Ljava/lang/String;
    goto :goto_0

    .line 86
    :cond_2
    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/common/BlobCache;

    .line 87
    .local v6, cache:Lcom/miui/gallery/common/BlobCache;
    if-nez v6, :cond_5

    .line 88
    const/4 v7, 0x0

    .line 89
    .local v7, cacheDir:Ljava/io/File;
    if-eqz p5, :cond_3

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 96
    :goto_2
    if-nez v7, :cond_4

    .line 97
    const/4 v0, 0x0

    monitor-exit v10

    goto :goto_1

    .line 111
    .end local v6           #cache:Lcom/miui/gallery/common/BlobCache;
    .end local v7           #cacheDir:Ljava/io/File;
    .end local v9           #filename:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 92
    .restart local v6       #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    .restart local v9       #filename:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    goto :goto_2

    .line 101
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 103
    .local v1, path:Ljava/lang/String;
    :try_start_2
    new-instance v0, Lcom/miui/gallery/common/BlobCache;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .end local v6           #cache:Lcom/miui/gallery/common/BlobCache;
    .local v0, cache:Lcom/miui/gallery/common/BlobCache;
    :try_start_3
    sget-object v2, Lcom/miui/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    :goto_3
    :try_start_4
    monitor-exit v10

    goto :goto_1

    .line 106
    .end local v0           #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v7       #cacheDir:Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v0, v6

    .line 107
    .end local v6           #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v0       #cache:Lcom/miui/gallery/common/BlobCache;
    .local v8, e:Ljava/io/IOException;
    :goto_4
    const-string v2, "CacheManager"

    const-string v3, "Cannot instantiate cache!"

    invoke-static {v2, v3, v8}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 106
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v0           #cache:Lcom/miui/gallery/common/BlobCache;
    .end local v1           #path:Ljava/lang/String;
    .end local v7           #cacheDir:Ljava/io/File;
    .restart local v6       #cache:Lcom/miui/gallery/common/BlobCache;
    :cond_5
    move-object v0, v6

    .end local v6           #cache:Lcom/miui/gallery/common/BlobCache;
    .restart local v0       #cache:Lcom/miui/gallery/common/BlobCache;
    goto :goto_3
.end method

.method public static getExternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;
    .locals 6
    .parameter "context"
    .parameter "cacheIndex"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"

    .prologue
    .line 116
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/CacheManager;->getCache(Landroid/content/Context;IIIIZ)Lcom/miui/gallery/common/BlobCache;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalCache(Landroid/content/Context;IIII)Lcom/miui/gallery/common/BlobCache;
    .locals 6
    .parameter "context"
    .parameter "cacheIndex"
    .parameter "maxEntries"
    .parameter "maxBytes"
    .parameter "version"

    .prologue
    .line 121
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/CacheManager;->getCache(Landroid/content/Context;IIIIZ)Lcom/miui/gallery/common/BlobCache;

    move-result-object v0

    return-object v0
.end method

.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 130
    .local v0, n:I
    :try_start_0
    const-string v2, "cache-up-to-date"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    if-eqz v0, :cond_0

    .line 138
    :goto_1
    return-void

    .line 135
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cache-up-to-date"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    invoke-static {p0}, Lcom/miui/gallery/util/CacheManager;->cleanCache(Landroid/content/Context;)V

    goto :goto_1

    .line 131
    :catch_0
    move-exception v2

    goto :goto_0
.end method
