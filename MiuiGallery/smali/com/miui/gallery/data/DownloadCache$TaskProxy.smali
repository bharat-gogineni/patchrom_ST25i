.class public Lcom/miui/gallery/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/miui/gallery/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mTask:Lcom/miui/gallery/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/gallery/data/DownloadCache$TaskProxy;Lcom/miui/gallery/data/DownloadCache$DownloadTask;)Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mTask:Lcom/miui/gallery/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$802(Lcom/miui/gallery/data/DownloadCache$TaskProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcom/miui/gallery/util/ThreadPool$JobContext;)Lcom/miui/gallery/data/DownloadCache$Entry;
    .locals 3
    .parameter "jc"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/data/DownloadCache$TaskProxy$1;-><init>(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 396
    :goto_0
    iget-boolean v1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 398
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 403
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 404
    iget-object v1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method declared-synchronized setResult(Lcom/miui/gallery/data/DownloadCache$Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->mEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
