.class public abstract Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field protected volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 352
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 353
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mActive:Z

    .line 354
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mDirty:Z

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iput-boolean p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mIsLoading:Z

    .line 360
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$900(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)Landroid/os/Handler;

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
.method protected canContinueGetUpdateInfo()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createZeroSizeCallable(I)Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;
.end method

.method protected abstract getTotalMediaObjectCount()I
.end method

.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mDirty:Z

    .line 457
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract prepareResultDBGroups()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBGroup;",
            ">;"
        }
    .end annotation
.end method

.method protected prepareUpdateInfo(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;JII)V
    .locals 0
    .parameter "info"
    .parameter "version"
    .parameter "albumCount"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 373
    iput-wide p2, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->version:J

    .line 374
    iput p4, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    .line 375
    iput p5, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->totalMediaObjectCount:I

    .line 376
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 380
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mActive:Z

    if-eqz v0, :cond_7

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mDirty:Z

    if-nez v0, :cond_1

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->updateLoading(Z)V

    .line 384
    invoke-static {p0}, Lcom/miui/gallery/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 385
    monitor-exit p0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    iput-boolean v12, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mDirty:Z

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->updateLoading(Z)V

    .line 392
    sget-object v10, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 393
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v2

    .line 394
    .local v2, version:J
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->prepareResultDBGroups()Ljava/util/ArrayList;

    move-result-object v9

    .line 397
    .local v9, resultDBGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->getTotalMediaObjectCount()I

    move-result v5

    .line 400
    .local v5, totalMediaObjectCount:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 401
    .local v4, albumCount:I
    if-nez v4, :cond_2

    .line 403
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-virtual {p0, v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->createZeroSizeCallable(I)Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;

    move-result-object v10

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v10}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    .end local v2           #version:J
    .end local v4           #albumCount:I
    .end local v5           #totalMediaObjectCount:I
    .end local v9           #resultDBGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 408
    .restart local v2       #version:J
    .restart local v4       #albumCount:I
    .restart local v5       #totalMediaObjectCount:I
    .restart local v9       #resultDBGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    :cond_2
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    if-gt v8, v4, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mActive:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    new-instance v10, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {v10, v11, v2, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$GetUpdateInfo;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;J)V

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v10}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;

    .line 410
    .local v1, info:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
    if-eqz v1, :cond_0

    .line 414
    sget-object v10, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    move-object v0, p0

    .line 415
    :try_start_4
    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->prepareUpdateInfo(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;JII)V

    .line 423
    iget v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget v11, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    if-lt v0, v11, :cond_3

    .line 424
    const/4 v0, -0x1

    iput v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    .line 426
    :cond_3
    iget v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    if-eq v0, v13, :cond_6

    .line 427
    iget v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DBGroup;

    invoke-interface {v0}, Lcom/miui/gallery/data/DBGroup;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    .line 428
    iget-object v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    if-nez v0, :cond_5

    .line 429
    monitor-exit v10

    .line 408
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 431
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .local v6, covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget-object v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->item:Lcom/miui/gallery/data/MediaSet;

    const/4 v11, 0x3

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->getRepresentativeItems(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V
    invoke-static {v0, v11, v6}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$1100(Lcom/miui/gallery/data/MediaSet;ILjava/util/ArrayList;)V

    .line 434
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, v1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->covers:[Lcom/miui/gallery/data/MediaItem;

    .line 437
    .end local v6           #covers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_6
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 438
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    new-instance v10, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;

    iget-object v11, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {v10, v11, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateContent;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V

    #calls: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v0, v10}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$1000(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 441
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->canContinueGetUpdateInfo()Z

    move-result v0

    if-nez v0, :cond_4

    .line 444
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mItemVersion:[J
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->access$600(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)[J

    move-result-object v0

    const-wide/16 v10, -0x1

    aput-wide v10, v0, v7

    .line 444
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 437
    .end local v7           #i:I
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 452
    .end local v1           #info:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;
    .end local v2           #version:J
    .end local v4           #albumCount:I
    .end local v5           #totalMediaObjectCount:I
    .end local v8           #index:I
    .end local v9           #resultDBGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    :cond_7
    invoke-direct {p0, v12}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->updateLoading(Z)V

    .line 453
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 461
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->mActive:Z

    .line 462
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
