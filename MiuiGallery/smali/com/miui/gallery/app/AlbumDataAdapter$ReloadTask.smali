.class public Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReloadTask"
.end annotation


# instance fields
.field protected volatile mActive:Z

.field protected volatile mDirty:Z

.field protected mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 378
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 380
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    .line 381
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mIsLoading:Z

    .line 387
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v1, v0, Lcom/miui/gallery/app/AlbumDataAdapter;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 427
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_5

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    .line 396
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 397
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 398
    monitor-exit p0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iput-boolean v5, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mDirty:Z

    .line 402
    invoke-direct {p0, v4}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 405
    sget-object v6, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 406
    :try_start_2
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 407
    .local v2, version:J
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;

    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v7, v8, v2, v3}, Lcom/miui/gallery/app/AlbumDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;J)V

    invoke-virtual {v6, v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;

    .line 409
    .local v0, info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    if-nez v0, :cond_4

    move v1, v4

    .line 410
    :goto_1
    if-nez v1, :cond_0

    .line 412
    sget-object v6, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 413
    :try_start_3
    iget-wide v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2

    .line 414
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v7

    iput v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->size:I

    .line 415
    iput-wide v2, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->version:J

    .line 417
    :cond_2
    iget v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_3

    .line 418
    iget-object v7, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    iget-object v7, v7, Lcom/miui/gallery/app/AlbumDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget v8, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadStart:I

    iget v9, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 420
    :cond_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 421
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    new-instance v7, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;

    iget-object v8, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumDataAdapter;

    invoke-direct {v7, v8, v0}, Lcom/miui/gallery/app/AlbumDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/AlbumDataAdapter;Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;)V

    invoke-virtual {v6, v7}, Lcom/miui/gallery/app/AlbumDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    .end local v0           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .end local v2           #version:J
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .restart local v0       #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .restart local v2       #version:J
    :cond_4
    move v1, v5

    .line 409
    goto :goto_1

    .line 420
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 423
    .end local v0           #info:Lcom/miui/gallery/app/AlbumDataAdapter$UpdateInfo;
    .end local v2           #version:J
    :cond_5
    invoke-direct {p0, v5}, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 424
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 432
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumDataAdapter$ReloadTask;->mActive:Z

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
