.class public Lcom/miui/player/service/BufferedMediaPlayer;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;,
        Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;,
        Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;,
        Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;,
        Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;,
        Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static final TEMP_FILE_ID_ARR:[I

.field private static sFadeOutMode:I

.field static sGlobalStastics:Lcom/miui/player/service/OnlinePlayStatstics;

.field static final sNextDownloadLock:Ljava/lang/Object;

.field private static sVolume:F


# instance fields
.field mBitrate:I

.field final mBufferLock:Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field mCurrentBytes:J

.field mCurrentFile:Ljava/io/File;

.field mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

.field mDownloadObserver:Landroid/database/ContentObserver;

.field mDownloadingUri:Landroid/net/Uri;

.field mInterrupt:Z

.field mIsBlocking:Z

.field private mIsFirst:Z

.field final mListenerLock:Ljava/lang/Object;

.field mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

.field private mNextMediaId:J

.field final mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

.field private mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

.field mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

.field final mRunnableList:Lcom/miui/player/service/RunnableList;

.field mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

.field mStatus:I

.field final mTempDir:Ljava/lang/String;

.field private mTempId:I

.field private mTogglePause:I

.field mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .line 113
    const v0, 0x3c23d70a

    sput v0, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->sGlobalStastics:Lcom/miui/player/service/OnlinePlayStatstics;

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/player/service/RunnableList;)V
    .locals 3
    .parameter "runnableList"

    .prologue
    const-wide/16 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    .line 144
    iput-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 145
    iput-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 160
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    .line 161
    const-string v0, "data/data/com.android.providers.downloads/cache"

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;-><init>(Lcom/miui/player/service/RunnableList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    .line 163
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-static {}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileNameArr()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    .line 164
    return-void
.end method

.method private static assertId(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1120
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 1121
    .local v1, i:I
    if-ne v1, p0, :cond_0

    .line 1122
    return-void

    .line 1120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1125
    .end local v1           #i:I
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad temp file id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "srcFile"
    .parameter "dstName"

    .prologue
    .line 1097
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1102
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1103
    return-object v0
.end method

.method static deleteRecord(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/service/RunnableList;)V
    .locals 3
    .parameter "context"
    .parameter "appointName"
    .parameter "runnableList"

    .prologue
    .line 1084
    :try_start_0
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/miui/player/service/RunnableList;->remove(Ljava/lang/String;)V

    .line 1085
    invoke-static {p0, p1}, Lcom/miui/player/network/DownloadProvider;->deleteByAppointName(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private downloadAndPrepare()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x3

    .line 383
    const/4 v3, 0x0

    .line 386
    .local v3, isSuccess:Z
    iput v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 387
    iput-wide v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 388
    iput-wide v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 389
    iput v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 390
    iput-boolean v9, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 391
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 393
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v6, v7, v9, v8}, Lcom/miui/player/network/DownloadProvider;->registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 394
    iput v10, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 449
    :goto_0
    return v5

    .line 400
    :cond_0
    const/4 v4, 0x0

    .line 401
    .local v4, userInterrupt:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v6, 0x3c

    if-lt v2, v6, :cond_1

    iget-wide v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    int-to-long v8, v2

    div-long/2addr v6, v8

    const-wide/16 v8, 0x800

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 402
    :cond_1
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 403
    iget v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 404
    :cond_2
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    iget v7, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    invoke-static {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/player/service/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 405
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 407
    :try_start_0
    iget-wide v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-direct {p0, v1, v6, v7}, Lcom/miui/player/service/BufferedMediaPlayer;->ensureFileSpace(Ljava/io/File;J)V

    .line 408
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    iget-object v7, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_2
    iget v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eq v6, v10, :cond_5

    .line 414
    iput-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 415
    iput-boolean v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 416
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 417
    new-instance v5, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    invoke-direct {v5, p0}, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;)V

    iput-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    .line 418
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    invoke-virtual {v5}, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->start()V

    .line 419
    const/4 v3, 0x1

    .line 435
    .end local v1           #f:Ljava/io/File;
    :cond_3
    if-nez v3, :cond_7

    .line 436
    iput v10, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 438
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v5, v6}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 439
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/miui/player/network/DownloadProvider;->deleteByUri(Landroid/content/Context;Landroid/net/Uri;)I

    .line 441
    if-eqz v4, :cond_6

    .line 442
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->postStastics()V

    .line 443
    new-instance v5, Ljava/lang/InterruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " user interrupt prepare"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 409
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    iput v10, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    goto :goto_2

    .line 424
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iput v10, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 428
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget-boolean v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    .line 429
    iget v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eq v6, v10, :cond_3

    if-nez v4, :cond_3

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 444
    :cond_6
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v5, :cond_7

    .line 445
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/miui/player/service/OnlinePlayStatstics;->setError(I)V

    :cond_7
    move v5, v3

    .line 449
    goto/16 :goto_0
.end method

.method private ensureFileSpace(Ljava/io/File;J)V
    .locals 3
    .parameter "f"
    .parameter "space"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 737
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 738
    .local v0, raf:Ljava/io/RandomAccessFile;
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 740
    .end local v0           #raf:Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method private fadeIn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    .line 558
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V

    .line 561
    monitor-exit v2

    .line 589
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    monitor-exit v2

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 568
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V

    .line 569
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, togglePause:Z
    :goto_1
    sget v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    .line 572
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    if-eq v1, v6, :cond_4

    .line 573
    const/4 v0, 0x1

    .line 584
    :cond_2
    if-nez v0, :cond_3

    .line 585
    const/high16 v1, 0x3f80

    sput v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 586
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V

    .line 588
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 576
    :cond_4
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v1, v3, v4}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    const-wide/16 v3, 0xa

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    :goto_2
    :try_start_3
    sget v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    const v3, 0x3c23d70a

    add-float/2addr v1, v3

    sput v1, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private fadeOut()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 592
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 593
    :try_start_0
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 594
    const/4 v3, 0x0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 595
    monitor-exit v4

    .line 636
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/player/service/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V

    .line 600
    monitor-exit v4

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 603
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v3}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_2

    .line 604
    monitor-exit v4

    goto :goto_0

    .line 607
    :cond_2
    const/4 v3, 0x1

    iput v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 608
    const/4 v2, 0x0

    .line 609
    .local v2, togglePause:Z
    const v0, 0x3cf5c28f

    .line 610
    .local v0, degree:F
    const/16 v1, 0xa

    .line 611
    .local v1, interval:I
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    if-ne v3, v7, :cond_3

    .line 612
    const/4 v3, 0x0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 613
    const v0, 0x3a83126f

    .line 614
    const/16 v1, 0xa

    .line 617
    :cond_3
    :goto_1
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 618
    iget v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    if-eq v3, v7, :cond_6

    .line 619
    const/4 v2, 0x1

    .line 630
    :cond_4
    if-nez v2, :cond_5

    .line 631
    const v3, 0x3c23d70a

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    .line 632
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    sget v5, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V

    .line 635
    :cond_5
    monitor-exit v4

    goto :goto_0

    .line 622
    :cond_6
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    sget v5, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v3, v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    int-to-long v5, v1

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 627
    :goto_2
    :try_start_3
    sget v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F

    sub-float/2addr v3, v0

    sput v3, Lcom/miui/player/service/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 625
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static getDefaultTempId()I
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLongFadeOutTime()J
    .locals 2

    .prologue
    .line 639
    const-wide/16 v0, 0x2706

    return-wide v0
.end method

.method private static getTempFileName(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 1140
    invoke-static {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->assertId(I)V

    .line 1141
    const-string v0, ".CURRENT_MIUI%d.mp3.tmp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFileNameArr()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1145
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1146
    .local v1, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1147
    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    :cond_0
    return-object v1
.end method

.method private static isFadeEffectActive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 1112
    if-eqz p0, :cond_0

    .line 1113
    const-string v1, "fade_effect_active"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v1, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return v0

    .line 1113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRemoveAfterPlay(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1107
    const-string v0, "play_and_download"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTempFileName(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 1129
    invoke-static {}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileNameArr()[Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, tempArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1131
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    const/4 v2, 0x1

    .line 1136
    :goto_1
    return v2

    .line 1130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1136
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private resetMediaInfo(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    invoke-static {p1, v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->deleteRecord(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/service/RunnableList;)V

    .line 754
    iput-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 755
    iput-wide v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 756
    iput-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 757
    iput-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 758
    iput v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 759
    iput-wide v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    .line 760
    iput-wide v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    .line 761
    iput v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    .line 763
    iput-boolean v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 764
    iput-boolean v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    .line 766
    iput-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    .line 767
    return-void
.end method

.method public static setUp(Lcom/miui/player/service/RunnableList;)V
    .locals 1
    .parameter "runnableList"

    .prologue
    .line 1164
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/miui/player/service/RunnableList;->remove(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method public static toggleFadeOutMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1168
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 1169
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad mode for fade out mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_1
    sput p0, Lcom/miui/player/service/BufferedMediaPlayer;->sFadeOutMode:I

    .line 1173
    return-void
.end method


# virtual methods
.method public cancelPrepare(Z)V
    .locals 2
    .parameter "abort"

    .prologue
    .line 702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 703
    if-eqz p1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->abort()V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferdPercent()F
    .locals 5

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, per:F
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 479
    const/high16 v0, 0x3f80

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 481
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    long-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 473
    :goto_0
    return v0

    .line 470
    :catch_0
    move-exception v0

    .line 473
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 488
    const/4 v0, 0x1

    .line 489
    .local v0, duration:I
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 496
    :cond_1
    :goto_0
    return v0

    .line 492
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNextId()I
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 175
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_2

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 181
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 185
    :cond_1
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v1, v1, v0

    return v1

    .line 174
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPlayingFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 501
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasBuffered(I)Z
    .locals 5
    .parameter "msec"

    .prologue
    const/4 v0, 0x1

    .line 743
    iget v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBitrate:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 744
    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    iget-wide v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTotalBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 748
    :cond_1
    :goto_0
    return v0

    .line 744
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mInterrupt:Z

    .line 461
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needPrepare()Z
    .locals 4

    .prologue
    .line 1092
    iget-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->needDownload()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 643
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 645
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 646
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeOut()V

    .line 647
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->pause()V

    .line 649
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v0}, Lcom/miui/player/service/OnlinePlayStatstics;->markPause()V

    .line 652
    :cond_0
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method postStastics()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 771
    .local v0, stat:Lcom/miui/player/service/OnlinePlayStatstics;
    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/OnlinePlayStatstics;->post(Landroid/content/Context;)V

    .line 773
    invoke-virtual {v0}, Lcom/miui/player/service/OnlinePlayStatstics;->stopChecking()V

    .line 774
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 776
    :cond_0
    return-void
.end method

.method public prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V
    .locals 6
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "uri"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/miui/player/service/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 195
    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    .line 196
    iput-wide p4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 197
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 199
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, p2, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v1

    invoke-static {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 204
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 212
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0, p1, p3}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V

    .line 214
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 215
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->needPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    .line 218
    :cond_1
    return-void
.end method

.method public prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;J)V
    .locals 26
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "remoteMediaInfo"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 228
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  prepareRemote  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 234
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 235
    .local v13, appointName:Ljava/lang/String;
    const-string v3, "mp3"

    invoke-static {v13, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 236
    .local v21, localMedia:Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/player/network/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 239
    .local v25, uri:Landroid/net/Uri;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v25, :cond_3

    .line 240
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 241
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "track has been downloaded completed, local play !"

    invoke-static {v3, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    :cond_2
    :goto_0
    return-void

    .line 245
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    invoke-static {v3}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v22

    .line 247
    .local v22, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsFirst:Z

    if-nez v3, :cond_a

    .line 248
    sget-object v23, Lcom/miui/player/service/BufferedMediaPlayer;->sGlobalStastics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 249
    .local v23, readyStastics:Lcom/miui/player/service/OnlinePlayStatstics;
    const/4 v3, 0x0

    sput-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->sGlobalStastics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 250
    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Lcom/miui/player/service/OnlinePlayStatstics;->getAudioId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v3}, Lcom/miui/player/service/OnlinePlayStatstics;->markInitTime()V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/miui/player/service/OnlinePlayStatstics;->startChecking(Landroid/content/Context;Landroid/os/Handler;)V

    .line 257
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 258
    if-eqz v21, :cond_5

    .line 259
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 261
    :cond_5
    if-eqz v21, :cond_a

    if-nez v25, :cond_a

    .line 262
    const/16 v24, 0x0

    .line 263
    .local v24, renamed:Z
    invoke-static/range {p1 .. p1}, Lcom/miui/player/service/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x100000

    cmp-long v3, v5, v7

    if-lez v3, :cond_7

    .line 264
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    const-string v5, "mp3"

    invoke-static {v3, v5}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 265
    .local v17, dst:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 266
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 267
    const/16 v24, 0x1

    .line 269
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/miui/player/service/BufferedMediaPlayer;->setDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    .end local v17           #dst:Ljava/lang/String;
    :cond_7
    :try_start_0
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 273
    if-eqz v24, :cond_8

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V

    .line 277
    :cond_8
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "track has been prepared success, local play"

    invoke-static {v3, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v3}, Lcom/miui/player/service/OnlinePlayStatstics;->markConnectSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v18

    .line 281
    .local v18, e:Ljava/lang/Exception;
    if-eqz v24, :cond_9

    .line 282
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 285
    :cond_9
    const/16 v21, 0x0

    .line 290
    .end local v18           #e:Ljava/lang/Exception;
    .end local v23           #readyStastics:Lcom/miui/player/service/OnlinePlayStatstics;
    .end local v24           #renamed:Z
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/miui/player/service/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 291
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-nez v3, :cond_b

    .line 294
    new-instance v3, Lcom/miui/player/service/OnlinePlayStatstics;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/miui/player/service/OnlinePlayStatstics;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/miui/player/service/OnlinePlayStatstics;->startChecking(Landroid/content/Context;Landroid/os/Handler;)V

    .line 297
    :cond_b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v14

    .line 299
    .local v14, audio:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    if-eqz v14, :cond_c

    iget-object v3, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_d

    .line 300
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/miui/player/service/OnlinePlayStatstics;->setError(I)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->postStastics()V

    .line 303
    new-instance v3, Ljava/io/IOException;

    const-string v5, "online play failed ! maybe no candidate exists"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :cond_d
    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_e

    .line 307
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    move-object/from16 v0, p1

    invoke-static {v0, v5, v3}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->updateDB(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)I

    .line 310
    :cond_e
    iget-object v15, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 311
    .local v15, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    move-object/from16 v0, p3

    iput-object v15, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mCandidates:Ljava/util/List;

    .line 312
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 313
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    .line 314
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    .line 315
    new-instance v3, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/miui/player/service/BufferedMediaPlayer$BufferContentObserver;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v6

    invoke-static {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 319
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    .line 320
    .local v20, len:I
    const/16 v16, 0x0

    .line 321
    .local v16, currentTryIdx:I
    const/16 v19, 0x0

    .line 323
    .local v19, isSuccess:Z
    if-eqz v25, :cond_11

    .line 324
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 325
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "track is preparing"

    invoke-static {v3, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v3, :cond_f

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v19

    .line 348
    :cond_f
    add-int/lit8 v16, v16, 0x1

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    if-nez v19, :cond_15

    .line 349
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 350
    .local v4, link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    if-nez v4, :cond_14

    .line 348
    :cond_10
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 327
    .end local v4           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_11
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-nez v3, :cond_13

    .line 329
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 330
    .restart local v4       #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    if-nez v4, :cond_12

    .line 327
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 334
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4}, Lcom/miui/player/service/OnlinePlayStatstics;->setAudioLink(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v6, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x1388

    move-object/from16 v3, p1

    move-object/from16 v5, v22

    move-object/from16 v7, v22

    invoke-static/range {v3 .. v12}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    goto :goto_5

    .line 340
    .end local v4           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_13
    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v5, "track isnot prepared"

    invoke-static {v3, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 354
    .restart local v4       #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4}, Lcom/miui/player/service/OnlinePlayStatstics;->setAudioLink(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v6, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x1388

    move-object/from16 v3, p1

    move-object/from16 v5, v22

    move-object/from16 v7, v22

    invoke-static/range {v3 .. v12}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v3, :cond_10

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v19

    goto :goto_3

    .line 363
    .end local v4           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-nez v3, :cond_16

    .line 364
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 367
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/service/BufferedMediaPlayer;->postStastics()V

    .line 369
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " download remote media failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public release(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "stopNextDownload"

    .prologue
    .line 686
    invoke-virtual {p0, p2}, Lcom/miui/player/service/BufferedMediaPlayer;->reset(Z)V

    .line 687
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v2}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->getAudioSessionId()I

    move-result v1

    .line 688
    .local v1, id:I
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v2}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->release()V

    .line 689
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 695
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "stopNextDownload"

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    .line 661
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 664
    iput-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->deleteByUri(Landroid/content/Context;Landroid/net/Uri;)I

    .line 669
    iput-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 671
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeOut()V

    .line 672
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->reset()V

    .line 674
    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 675
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->postStastics()V

    .line 683
    :cond_2
    return-void

    .line 661
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 677
    :cond_3
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method runOnBlockingChanged()V
    .locals 3

    .prologue
    .line 847
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBlockingChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;

    .line 851
    .local v0, l:Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;
    if-eqz v0, :cond_0

    .line 852
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer$3;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method runOnBufferedPositionChanged(F)V
    .locals 3
    .parameter "bufferedPer"

    .prologue
    .line 864
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mBufferedPositionChangedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    .line 868
    .local v0, l:Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;
    if-eqz v0, :cond_0

    .line 869
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$4;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V
    .locals 7
    .parameter "mediaInfo"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v2, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mDownloadCompletedListener:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;

    .line 828
    .local v2, l:Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;
    iget-object v3, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    .line 829
    .local v3, id:Ljava/lang/String;
    iget-object v4, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 830
    .local v4, appointName:Ljava/lang/String;
    iget-object v5, p1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    .line 831
    .local v5, details:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v6, v0, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer$2;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    add-int/lit16 v0, p1, 0x2710

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->seekTo(I)V

    .line 536
    :cond_0
    monitor-exit v1

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .parameter "streamtype"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setAudioStreamType(I)V

    .line 699
    return-void
.end method

.method setDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "appointName"

    .prologue
    .line 1057
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1058
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-direct {v2, v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 1063
    .local v0, args:[Ljava/lang/String;
    const-string v4, "hint = ?"

    .line 1064
    .local v4, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1065
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "status"

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1068
    .local v3, res:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    if-eqz v5, :cond_0

    invoke-static {p2}, Lcom/miui/player/service/BufferedMediaPlayer;->isTempFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    :cond_0
    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "hint = ?"

    invoke-virtual {v3, v5, v1, v7, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1079
    :goto_0
    monitor-exit v6

    .line 1080
    return-void

    .line 1071
    :cond_1
    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v5, v5, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/miui/player/service/BufferedMediaPlayer$5;

    invoke-direct {v7, p0, v3, v1, v0}, Lcom/miui/player/service/BufferedMediaPlayer$5;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1079
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #res:Landroid/content/ContentResolver;
    .end local v4           #where:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    new-instance v1, Lcom/miui/player/service/BufferedMediaPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$1;-><init>(Lcom/miui/player/service/BufferedMediaPlayer;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 525
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 529
    return-void
.end method

.method public setTempId(IZ)V
    .locals 0
    .parameter "id"
    .parameter "isFirst"

    .prologue
    .line 167
    invoke-static {p1}, Lcom/miui/player/service/BufferedMediaPlayer;->assertId(I)V

    .line 168
    iput p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTempId:I

    .line 169
    iput-boolean p2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsFirst:Z

    .line 170
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 540
    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 542
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v2, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v1, v2, 0x2710

    .line 544
    .local v1, newPos:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    .line 545
    .local v0, isBuffered:Z
    if-eqz v0, :cond_1

    .line 546
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v2}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->start()V

    .line 547
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/miui/player/service/OnlinePlayStatstics;->markPlay(Landroid/content/Context;)V

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->fadeIn()V

    .line 554
    .end local v0           #isBuffered:Z
    .end local v1           #newPos:I
    :cond_1
    monitor-exit v3

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public togglePause(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 464
    iput p1, p0, Lcom/miui/player/service/BufferedMediaPlayer;->mTogglePause:I

    .line 465
    return-void
.end method
