.class public abstract Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;,
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;,
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;,
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;,
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;,
        Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;
    }
.end annotation


# static fields
.field private static final EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field protected mContentEnd:I

.field protected mContentStart:I

.field private final mCoverData:[[Lcom/miui/gallery/data/MediaItem;

.field private final mData:[Lcom/miui/gallery/data/MediaSet;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field protected mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field protected final mSource:Lcom/miui/gallery/data/MediaSet;

.field private final mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;

.field protected mSourceVersion:J

.field protected mTotalMediaObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    sput-object v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 4
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    .line 43
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    .line 45
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    .line 46
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    .line 47
    iput v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    .line 50
    iput-wide v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceVersion:J

    .line 58
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Lcom/miui/gallery/app/AlbumSetDataAdapterBase$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;

    .line 61
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 62
    new-array v0, p3, [[Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    .line 63
    new-array v0, p3, [Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    .line 64
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J

    .line 65
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 69
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$1;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$1;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mMainHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)Lcom/miui/gallery/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[[Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    return v0
.end method

.method static synthetic access$802(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mMainHandler:Landroid/os/Handler;

    return-object v0
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
    .line 339
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 340
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 345
    :goto_0
    return-object v2

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 347
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
    .line 210
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 211
    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    .line 215
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 216
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v5

    .line 217
    .local v5, subset:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, p1, v6

    int-to-double v6, v6

    sub-int v8, v2, v0

    int-to-double v8, v8

    div-double v3, v6, v8

    .line 218
    .local v3, perSet:D
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 219
    .local v1, m:I
    invoke-static {v5, v1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v1           #m:I
    .end local v3           #perSet:D
    .end local v5           #subset:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    return-void
.end method

.method private setContentWindow(II)V
    .locals 5
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 153
    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    if-ne p1, v4, :cond_0

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    if-ne p2, v4, :cond_0

    .line 174
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    .line 156
    .local v3, start:I
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    .line 158
    .local v0, end:I
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    .line 159
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    .line 161
    if-ge p1, v0, :cond_1

    if-lt v3, p2, :cond_2

    .line 162
    :cond_1
    move v1, v3

    .local v1, i:I
    move v2, v0

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 163
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->clearSlot(I)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_2
    move v1, v3

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 167
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->clearSlot(I)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_3
    move v1, p2

    move v2, v0

    .restart local v2       #n:I
    :goto_3
    if-ge v1, v2, :cond_4

    .line 170
    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->clearSlot(I)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    invoke-virtual {v4}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method protected canSendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method protected clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 146
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    aput-object v1, v0, p1

    .line 147
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    aput-object v1, v0, p1

    .line 148
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 149
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 150
    return-void
.end method

.method protected abstract createReloadTask()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    return v0
.end method

.method public getCoverItems(I)[Lcom/miui/gallery/data/MediaItem;
    .locals 6
    .parameter "index"

    .prologue
    .line 113
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    if-lt p1, v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s not in (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 120
    .local v0, result:[Lcom/miui/gallery/data/MediaItem;
    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->EMPTY_MEDIA_ITEMS:[Lcom/miui/gallery/data/MediaItem;

    .end local v0           #result:[Lcom/miui/gallery/data/MediaItem;
    :cond_1
    return-object v0
.end method

.method public getMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 5
    .parameter "index"

    .prologue
    .line 105
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    if-lt p1, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mData:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

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
    .line 88
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->terminate()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 91
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->pause()V

    .line 101
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->resume()V

    .line 102
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSourceListener:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->createReloadTask()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->start()V

    .line 97
    return-void
.end method

.method protected abstract sendOnSizeChanged(II)V
.end method

.method protected abstract sendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
.end method

.method protected abstract sendOnWindowContentChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 177
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 182
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveStart:I

    .line 183
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mActiveEnd:I

    .line 185
    iget-object v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mCoverData:[[Lcom/miui/gallery/data/MediaItem;

    array-length v2, v3

    .line 187
    .local v2, length:I
    if-eq p1, p2, :cond_0

    .line 189
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/common/Utils;->clamp(III)I

    move-result v1

    .line 191
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 192
    .local v0, contentEnd:I
    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 194
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 179
    goto :goto_1
.end method

.method public setLoadingListener(Lcom/miui/gallery/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mLoadingListener:Lcom/miui/gallery/app/LoadingListener;

    .line 206
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSize:I

    return v0
.end method

.method public totalSize()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mTotalMediaObjectCount:I

    return v0
.end method
