.class public Lcom/miui/gallery/cloud/CloudDownloadArrayList;
.super Ljava/lang/Object;
.source "CloudDownloadArrayList.java"


# static fields
.field private static mMicroDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

.field private static mThumbnailDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;


# instance fields
.field private mActive:Z

.field private mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCon:Ljava/util/concurrent/locks/Condition;

.field private mFileNameList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/RequestItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    .line 311
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    .line 312
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 314
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 315
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mCon:Ljava/util/concurrent/locks/Condition;

    .line 316
    iput p1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    .line 317
    return-void
.end method

.method public static declared-synchronized addItemToBothList(Lcom/miui/gallery/data/DBCloud;)V
    .locals 5
    .parameter "dbCloud"

    .prologue
    .line 85
    const-class v3, Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 86
    :try_start_0
    const-string v2, "CloudDownloadArrayList"

    const-string v4, "add item to both list error, dbCloud is null."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    monitor-exit v3

    return-void

    .line 89
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v1

    .line 90
    .local v1, thumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    .line 91
    .local v0, microThumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    invoke-virtual {v1, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->add(Lcom/miui/gallery/data/DBCloud;)Z

    .line 92
    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->add(Lcom/miui/gallery/data/DBCloud;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0           #microThumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .end local v1           #thumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    .locals 2
    .parameter "downloadType"

    .prologue
    .line 37
    const-class v1, Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    monitor-enter v1

    packed-switch p0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 39
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mThumbnailDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mThumbnailDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    .line 42
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mThumbnailDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mMicroDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mMicroDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    .line 49
    :cond_1
    sget-object v0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mMicroDownloadList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getItemByFileName(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestItem;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, ret:Lcom/miui/gallery/cloud/RequestItem;
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Lcom/miui/gallery/cloud/RequestItem;
    check-cast v0, Lcom/miui/gallery/cloud/RequestItem;

    .line 325
    .restart local v0       #ret:Lcom/miui/gallery/cloud/RequestItem;
    :cond_0
    return-object v0
.end method

.method public static removeItemInAllList(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 341
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v0

    .line 342
    .local v0, microThumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getInstance(I)Lcom/miui/gallery/cloud/CloudDownloadArrayList;

    move-result-object v1

    .line 343
    .local v1, thumbnailList:Lcom/miui/gallery/cloud/CloudDownloadArrayList;
    invoke-virtual {v0, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->removeItemHashMap(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->removeItemHashMap(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private reorderQueue(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 204
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mBufferStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 217
    return-void
.end method

.method private waitp()V
    .locals 3

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mCon:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    :goto_1
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/miui/gallery/data/DBCloud;)Z
    .locals 4
    .parameter "dbCloud"

    .prologue
    const/4 v3, 0x1

    .line 70
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/miui/gallery/cloud/RequestItem;

    invoke-direct {v0, p1}, Lcom/miui/gallery/cloud/RequestItem;-><init>(Lcom/miui/gallery/data/DBCloud;)V

    .line 72
    .local v0, item:Lcom/miui/gallery/cloud/RequestItem;
    iget v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    iput v1, v0, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    .line 74
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return v3

    .line 79
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #item:Lcom/miui/gallery/cloud/RequestItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clearPushQueue()V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadItem(Z)Lcom/miui/gallery/cloud/RequestItem;
    .locals 7
    .parameter "isWifi"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mActive:Z

    if-nez v4, :cond_0

    .line 248
    const-string v4, "CloudDownloadArrayList"

    const-string v6, "download is not active, return null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    .line 302
    :goto_0
    monitor-exit p0

    return-object v3

    .line 252
    :cond_0
    const/4 v3, 0x0

    .line 253
    .local v3, ret:Lcom/miui/gallery/cloud/RequestItem;
    const/4 v2, 0x0

    .line 256
    .local v2, fileName:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :goto_1
    if-eqz v2, :cond_2

    .line 262
    :try_start_2
    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getItemByFileName(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestItem;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_1

    .line 267
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 247
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #ret:Lcom/miui/gallery/cloud/RequestItem;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 272
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v3       #ret:Lcom/miui/gallery/cloud/RequestItem;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 278
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    if-nez p1, :cond_3

    move-object v3, v5

    .line 279
    goto :goto_0

    .line 282
    :cond_3
    iget v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    if-eq v4, v6, :cond_4

    iget v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    sget-boolean v4, Lcom/miui/gallery/cloud/GallerySyncAdapter;->sPlugged:Z

    if-eqz v4, :cond_6

    .line 284
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 285
    .restart local v2       #fileName:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_6

    .line 286
    invoke-direct {p0, v2}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getItemByFileName(Ljava/lang/String;)Lcom/miui/gallery/cloud/RequestItem;

    move-result-object v3

    .line 287
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 288
    if-eqz v3, :cond_5

    .line 294
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z

    goto :goto_0

    .line 297
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #fileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #fileName:Ljava/lang/String;
    goto :goto_2

    .line 301
    :cond_6
    const-string v4, "CloudDownloadArrayList"

    const-string v6, "return null"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v5

    .line 302
    goto :goto_0

    .line 257
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getItem(Landroid/content/Context;Z)Lcom/miui/gallery/cloud/RequestItem;
    .locals 4
    .parameter "context"
    .parameter "isTrial"

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, curItem:Lcom/miui/gallery/cloud/RequestItem;
    :goto_0
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getNetState(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;

    move-result-object v2

    .line 115
    .local v2, netState:Lcn/kuaipan/kss/KssDef$NetState;
    sget-object v3, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 116
    .local v1, isWifi:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->getDownloadItem(Z)Lcom/miui/gallery/cloud/RequestItem;

    move-result-object v0

    .line 117
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 118
    const/4 v0, 0x0

    .line 127
    .end local v0           #curItem:Lcom/miui/gallery/cloud/RequestItem;
    :cond_0
    return-object v0

    .line 115
    .end local v1           #isWifi:Z
    .restart local v0       #curItem:Lcom/miui/gallery/cloud/RequestItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 121
    .restart local v1       #isWifi:Z
    :cond_2
    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->waitp()V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    return v0
.end method

.method public declared-synchronized isFileInDownloading(Ljava/lang/String;)Z
    .locals 4
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 180
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/RequestItem;

    .line 185
    .local v0, item:Lcom/miui/gallery/cloud/RequestItem;
    if-eqz v0, :cond_0

    .line 186
    iget-boolean v1, v0, Lcom/miui/gallery/cloud/RequestItem;->isDownloading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v0           #item:Lcom/miui/gallery/cloud/RequestItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized moveFileNameToHead(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->reorderQueue(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushFileName(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :try_start_1
    iget v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mPushStringQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mCon:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :goto_2
    monitor-exit p0

    return-void

    .line 225
    :cond_1
    :try_start_3
    iget v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->reorderQueue(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 239
    :try_start_5
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 236
    :catchall_1
    move-exception v1

    .line 239
    :try_start_6
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized removeItemHashMap(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, ret:Z
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    .line 335
    :goto_0
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->removeLastOccurrence(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    .line 332
    .end local v0           #ret:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mActive:Z

    .line 364
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->mFileNameList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
