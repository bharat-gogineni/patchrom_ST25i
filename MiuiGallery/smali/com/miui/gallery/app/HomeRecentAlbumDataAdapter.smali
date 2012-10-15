.class public Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/HomeRecentAlbumView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ZeroSizeCallable;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateVisibleRangeCallable;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;
    }
.end annotation


# static fields
.field private static final EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mAllAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

.field private mAllAlbumCacheVersion:J

.field private mContentEnd:I

.field private mContentStart:I

.field private final mCoverData:[[Lcom/miui/gallery/data/MediaItem;

.field private final mData:[Lcom/miui/gallery/data/MediaSet;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

.field private mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

.field private mRecentAlbumCacheVersion:J

.field private final mRecentItemSize:I

.field private mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;

.field private mSourceVersion:J

.field private mTotalMediaObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    sput-object v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 4
    .parameter "activity"
    .parameter "albumSet"
    .parameter "recentItemSize"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    .line 49
    iput v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    .line 51
    iput v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    .line 52
    iput v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    .line 55
    iput-wide v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J

    .line 65
    iput-wide v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCacheVersion:J

    .line 66
    iput-wide v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCacheVersion:J

    .line 70
    new-instance v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;

    .line 73
    iput p3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    .line 74
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 76
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getRecentAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 77
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I

    .line 82
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [[Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    .line 83
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    .line 84
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J

    .line 85
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 87
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 89
    new-instance v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCacheVersion:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentAlbumCacheVersion:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->clearSlot(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mRecentItemSize:I

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCacheVersion:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mAllAlbumCacheVersion:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    return p1
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    aput-object v1, v0, p1

    .line 160
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 161
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 163
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 358
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 363
    :goto_0
    return-object v2

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 10
    .parameter "set"
    .parameter "wanted"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/data/MediaSet;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 230
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    .line 234
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 235
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v5

    .line 236
    .local v5, subset:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p1, v6

    int-to-double v6, v6

    sub-int v8, v2, v0

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 237
    .local v3, perSet:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 238
    .local v1, m:I
    invoke-static {v5, v1, p2}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v1           #m:I
    .end local v3           #perSet:D
    .end local v5           #subset:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    return-void
.end method

.method private setContentWindow(II)V
    .locals 7
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 166
    iget v6, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    if-ne p1, v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    if-ne p2, v6, :cond_0

    .line 189
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    .line 168
    .local v0, data:[[Lcom/miui/gallery/data/MediaItem;
    array-length v3, v0

    .line 170
    .local v3, length:I
    iget v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    .line 171
    .local v5, start:I
    iget v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    .line 173
    .local v1, end:I
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    .line 174
    iput p2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    .line 176
    if-ge p1, v1, :cond_1

    if-lt v5, p2, :cond_2

    .line 177
    :cond_1
    move v2, v5

    .local v2, i:I
    move v4, v1

    .local v4, n:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 178
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->clearSlot(I)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    move v2, v5

    .restart local v2       #i:I
    :goto_2
    if-ge v2, p1, :cond_3

    .line 182
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->clearSlot(I)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 184
    :cond_3
    move v2, p2

    move v4, v1

    .restart local v4       #n:I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 185
    rem-int v6, v2, v3

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->clearSlot(I)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 188
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    invoke-virtual {v6}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;
    .locals 6
    .parameter "index"

    .prologue
    .line 128
    iget v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    if-lt p1, v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s not in (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    iget-object v2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 135
    .local v0, result:[Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    .end local v0           #result:[Lcom/miui/gallery/data/MediaItem;
    :cond_1
    return-object v0
.end method

.method public getMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 5
    .parameter "index"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mData:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalMediaObjectCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 147
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->terminate()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    .line 110
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 111
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 115
    new-instance v0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->start()V

    .line 117
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 192
    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 197
    iput p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveStart:I

    .line 198
    iput p2, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mActiveEnd:I

    .line 200
    iget-object v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 202
    .local v2, length:I
    if-eq p1, p2, :cond_0

    .line 204
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 206
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 209
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 194
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 225
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    .line 221
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mSize:I

    return v0
.end method
