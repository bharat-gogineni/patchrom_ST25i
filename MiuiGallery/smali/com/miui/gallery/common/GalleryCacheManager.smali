.class public Lcom/miui/gallery/common/GalleryCacheManager;
.super Ljava/lang/Object;
.source "GalleryCacheManager.java"


# static fields
.field private static mCacheCount:I

.field private static mInstance:Lcom/miui/gallery/common/GalleryCacheManager;


# instance fields
.field public ENABLE_CACHE_LOG:Z

.field private mLruCache:Lcom/miui/gallery/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/common/GalleryCacheManager;->ENABLE_CACHE_LOG:Z

    .line 26
    new-instance v0, Lcom/miui/gallery/common/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/miui/gallery/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/common/GalleryCacheManager;->mLruCache:Lcom/miui/gallery/common/LruCache;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gallery/common/GalleryCacheManager;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/miui/gallery/common/GalleryCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/common/GalleryCacheManager;->mInstance:Lcom/miui/gallery/common/GalleryCacheManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/miui/gallery/common/GalleryCacheManager;

    invoke-direct {v0}, Lcom/miui/gallery/common/GalleryCacheManager;-><init>()V

    sput-object v0, Lcom/miui/gallery/common/GalleryCacheManager;->mInstance:Lcom/miui/gallery/common/GalleryCacheManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/miui/gallery/common/GalleryCacheManager;->mInstance:Lcom/miui/gallery/common/GalleryCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/gallery/common/GalleryCacheManager;->mLruCache:Lcom/miui/gallery/common/LruCache;

    invoke-virtual {v0}, Lcom/miui/gallery/common/LruCache;->clear()V

    .line 49
    return-void
.end method

.method public getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/miui/gallery/common/GalleryCacheManager;->mLruCache:Lcom/miui/gallery/common/LruCache;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 40
    .local v0, ret:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/common/GalleryCacheManager;->ENABLE_CACHE_LOG:Z

    if-eqz v1, :cond_0

    .line 41
    sget v1, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    .line 42
    const-string v1, "GalleryCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cache filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recycle? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-object v0
.end method

.method public insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "filePath"
    .parameter "bitmap"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/gallery/common/GalleryCacheManager;->ENABLE_CACHE_LOG:Z

    if-eqz v0, :cond_0

    .line 31
    sget v0, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    .line 32
    const-string v0, "GalleryCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert cache filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycle? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/miui/gallery/common/GalleryCacheManager;->mCacheCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/common/GalleryCacheManager;->mLruCache:Lcom/miui/gallery/common/LruCache;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
