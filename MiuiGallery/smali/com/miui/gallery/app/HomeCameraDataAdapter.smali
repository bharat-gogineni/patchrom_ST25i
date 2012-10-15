.class public Lcom/miui/gallery/app/HomeCameraDataAdapter;
.super Ljava/lang/Object;
.source "HomeCameraDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/HomeCameraView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;,
        Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/miui/gallery/data/MediaItem;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

.field private final mRecentItemSize:I

.field private mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private mSortBy:I

.field private final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

.field private mSourceVersion:J

.field private mTotalMediaObjectCount:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 4
    .parameter "context"
    .parameter "mediaSet"
    .parameter "recentItemSize"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 40
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    .line 42
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 43
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 46
    iput-wide v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    .line 49
    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    .line 55
    new-instance v0, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    .line 61
    iput p3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    .line 62
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 63
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    .line 66
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    .line 67
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    .line 68
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 72
    new-instance v0, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$1;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->triggerOnSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/HomeCameraDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    return v0
.end method

.method private calcTotalMediaObjectCount()I
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->sIsShowHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/AlbumUtils;->isHiddenAlbum(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 151
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
    .line 216
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 217
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 222
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 5
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 154
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    if-ne p1, v4, :cond_1

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ne p2, v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 156
    .local v0, end:I
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 158
    .local v3, start:I
    monitor-enter p0

    .line 159
    :try_start_0
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 160
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-ge p1, v0, :cond_2

    if-lt v3, p2, :cond_3

    .line 163
    :cond_2
    move v1, v3

    .local v1, i:I
    move v2, v0

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 164
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v1           #i:I
    .end local v2           #n:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 167
    :cond_3
    move v1, v3

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 168
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_4
    move v1, p2

    move v2, v0

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_5

    .line 171
    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I

    rem-int v4, v1, v4

    invoke-direct {p0, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private triggerOnSizeChanged(II)V
    .locals 4
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    if-eqz v0, :cond_0

    .line 317
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    .line 318
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    .line 321
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;->onSizeChanged(II)V

    .line 323
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 324
    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .line 325
    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    iput v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    .line 328
    :cond_2
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    iget v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    iput v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    goto :goto_0
.end method


# virtual methods
.method public getActiveStart()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    return v0
.end method

.method public getMediaItem(I)Lcom/miui/gallery/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string v0, "HomeCameraDataAdapter"

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getTotalMediaObjectCount()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mTotalMediaObjectCount:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

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
    .line 99
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->terminate()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    .line 101
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 102
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 105
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSourceListener:Lcom/miui/gallery/app/HomeCameraDataAdapter$MySourceListener;

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 106
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/AlbumUtils;->getAlbumSortBy(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, sortBy:I
    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    if-eq v2, v1, :cond_1

    .line 109
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ge v0, v2, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->clearSlot(I)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iput v1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSortBy:I

    .line 114
    .end local v0           #i:I
    :cond_1
    new-instance v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V

    iput-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    .line 115
    iget-object v2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->start()V

    .line 116
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 178
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 183
    iget-object v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mData:[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 184
    .local v2, length:I
    iput p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveStart:I

    .line 185
    iput p2, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mActiveEnd:I

    .line 188
    if-eq p1, p2, :cond_0

    .line 190
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 192
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 196
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mContentEnd:I

    if-ge v3, p2, :cond_0

    .line 197
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 180
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 213
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AbstractHomeSlotView$ModelListener;

    .line 209
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSize:I

    return v0
.end method
