.class public Lcom/miui/gallery/app/SlideshowDataAdapter;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/app/SlideshowPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;,
        Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;,
        Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;
    }
.end annotation


# instance fields
.field private mDataReady:Z

.field private mDataVersion:J

.field private final mImageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/gallery/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialPath:Lcom/miui/gallery/data/Path;

.field private mIsActive:Z

.field private mLoadIndex:I

.field private final mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNeedReset:Z

.field private mNextOutput:I

.field private mReloadTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

.field private final mSourceListener:Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;

.field private final mThreadPool:Lcom/miui/gallery/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryContext;Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;ILcom/miui/gallery/data/Path;)V
    .locals 3
    .parameter "context"
    .parameter "source"
    .parameter "index"
    .parameter "initialPath"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 52
    iput v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 53
    iput-boolean v2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/miui/gallery/app/SlideshowDataAdapter;Lcom/miui/gallery/app/SlideshowDataAdapter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;

    .line 70
    iput-object p2, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    .line 71
    iput-object p4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/miui/gallery/data/Path;

    .line 72
    iput p3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 73
    iput p3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 74
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryContext;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/SlideshowDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    return v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/app/SlideshowDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/SlideshowDataAdapter;)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowDataAdapter;->loadItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/gallery/app/SlideshowDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return p1
.end method

.method static synthetic access$604(Lcom/miui/gallery/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/app/SlideshowDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/gallery/app/SlideshowDataAdapter;)Lcom/miui/gallery/app/SlideshowPage$Slide;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/app/SlideshowDataAdapter;->innerNextBitmap()Lcom/miui/gallery/app/SlideshowPage$Slide;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized innerNextBitmap()Lcom/miui/gallery/app/SlideshowPage$Slide;
    .locals 2

    .prologue
    .line 158
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, t:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v0           #t:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 168
    :goto_1
    monitor-exit p0

    return-object v1

    .line 166
    :cond_1
    :try_start_4
    iget v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNextOutput:I

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mImageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/SlideshowPage$Slide;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private loadItem()Lcom/miui/gallery/data/MediaItem;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 78
    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v4}, Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;->reload()J

    move-result-wide v1

    .line 80
    .local v1, v:J
    iget-wide v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 81
    iput-wide v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataVersion:J

    .line 82
    iput-boolean v6, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReset:Z

    .line 91
    .end local v1           #v:J
    :goto_0
    return-object v3

    .line 86
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mLoadIndex:I

    .line 87
    .local v0, index:I
    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/miui/gallery/data/Path;

    if-eqz v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v5, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/miui/gallery/data/Path;

    invoke-interface {v4, v5, v0}, Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;->findItemIndex(Lcom/miui/gallery/data/Path;I)I

    move-result v0

    .line 89
    iput-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mInitialPath:Lcom/miui/gallery/data/Path;

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    invoke-interface {v3, v0}, Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public nextSlide(Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/util/FutureListener",
            "<",
            "Lcom/miui/gallery/app/SlideshowPage$Slide;",
            ">;)",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Lcom/miui/gallery/app/SlideshowPage$Slide;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, listener:Lcom/miui/gallery/util/FutureListener;,"Lcom/miui/gallery/util/FutureListener<Lcom/miui/gallery/app/SlideshowPage$Slide;>;"
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v1, Lcom/miui/gallery/app/SlideshowDataAdapter$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/app/SlideshowDataAdapter$1;-><init>(Lcom/miui/gallery/app/SlideshowDataAdapter;)V

    invoke-virtual {v0, v1, p1}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 186
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 187
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/miui/gallery/util/Future;

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/miui/gallery/util/Future;

    .line 189
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mIsActive:Z

    .line 193
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSource:Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;

    iget-object v1, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mSourceListener:Lcom/miui/gallery/app/SlideshowDataAdapter$SourceListener;

    invoke-interface {v0, v1}, Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mDataReady:Z

    .line 196
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mThreadPool:Lcom/miui/gallery/util/ThreadPool;

    new-instance v1, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gallery/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/SlideshowDataAdapter;Lcom/miui/gallery/app/SlideshowDataAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowDataAdapter;->mReloadTask:Lcom/miui/gallery/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
