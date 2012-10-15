.class Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;
.super Ljava/lang/Thread;
.source "HomeCameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeCameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 351
    iput-object p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 353
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    .line 354
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mIsLoading:Z

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1600(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Landroid/os/Handler;

    move-result-object v1

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
    .line 468
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 369
    :goto_0
    iget-boolean v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v7, :cond_6

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    if-nez v7, :cond_0

    .line 372
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 373
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 374
    monitor-exit p0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    const-string v7, "HomeCameraDataAdapter"

    const-string v8, "test HomeCameraDataAdapter.run() start of while (mActive)"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v11, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mDirty:Z

    .line 383
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 391
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/LocalMergeAlbum;

    invoke-virtual {v7}, Lcom/miui/gallery/data/LocalMergeAlbum;->hasInvalidSource()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    invoke-static {}, Lcom/miui/gallery/util/AlbumUtils;->reloadAlbumCache()V

    .line 399
    :cond_1
    sget-object v8, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 400
    :try_start_2
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v5

    .line 401
    .local v5, version:J
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    .line 408
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/gallery/data/AllAlbumCache;->tryToAddCameraMediaSet(Lcom/miui/gallery/data/MediaSet;)V

    .line 411
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->calcTotalMediaObjectCount()I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1800(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v4

    .line 413
    .local v4, totalMediaObjectCount:I
    if-nez v4, :cond_2

    .line 415
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v8, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v8, v9, v11, v11}, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 401
    .end local v0           #allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    .end local v4           #totalMediaObjectCount:I
    .end local v5           #version:J
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 419
    .restart local v0       #allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    .restart local v4       #totalMediaObjectCount:I
    .restart local v5       #version:J
    :cond_2
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mRecentItemSize:I
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$900(Lcom/miui/gallery/app/HomeCameraDataAdapter;)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 423
    .local v3, recentCameraPhotosCount:I
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v8, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v8, v9, v3, v4}, Lcom/miui/gallery/app/HomeCameraDataAdapter$SizeCallable;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;II)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 428
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    iget-boolean v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    if-eqz v7, :cond_3

    .line 432
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v8, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v8, v9, v5, v6}, Lcom/miui/gallery/app/HomeCameraDataAdapter$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;J)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;

    .line 433
    .local v2, info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    if-nez v2, :cond_4

    .line 454
    .end local v2           #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    :cond_3
    const-string v7, "HomeCameraDataAdapter"

    const-string v8, "test HomeCameraDataAdapter.run(): end of while (mActive)"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .restart local v2       #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    :cond_4
    sget-object v8, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 438
    :try_start_4
    iput v3, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->size:I

    .line 439
    iput v4, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->totalMediaObjectCount:I

    .line 440
    iput-wide v5, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->version:J

    .line 442
    iget v7, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadCount:I

    if-lez v7, :cond_5

    .line 443
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeCameraDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;
    invoke-static {v7}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1700(Lcom/miui/gallery/app/HomeCameraDataAdapter;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v7

    iget v9, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadStart:I

    iget v10, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->reloadCount:I

    invoke-virtual {v7, v9, v10}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 445
    :cond_5
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 450
    iget-object v7, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    new-instance v8, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;

    iget-object v9, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->this$0:Lcom/miui/gallery/app/HomeCameraDataAdapter;

    invoke-direct {v8, v9, v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateContent;-><init>(Lcom/miui/gallery/app/HomeCameraDataAdapter;Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/HomeCameraDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->access$1900(Lcom/miui/gallery/app/HomeCameraDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 460
    .end local v0           #allAlbumCache:Lcom/miui/gallery/data/AllAlbumCache;
    .end local v1           #index:I
    .end local v2           #info:Lcom/miui/gallery/app/HomeCameraDataAdapter$UpdateInfo;
    .end local v3           #recentCameraPhotosCount:I
    .end local v4           #totalMediaObjectCount:I
    .end local v5           #version:J
    :cond_6
    invoke-direct {p0, v11}, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->updateLoading(Z)V

    .line 465
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 473
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/HomeCameraDataAdapter$ReloadTask;->mActive:Z

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
