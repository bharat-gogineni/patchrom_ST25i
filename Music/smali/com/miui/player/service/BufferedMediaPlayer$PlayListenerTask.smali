.class Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;
.super Ljava/lang/Thread;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayListenerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x4

    .line 982
    :goto_0
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eq v6, v12, :cond_3

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 983
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v7, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 984
    :try_start_0
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v6

    add-int/lit16 v4, v6, 0x2710

    .line 985
    .local v4, newPos:I
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6, v4}, Lcom/miui/player/service/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v2

    .line 986
    .local v2, isBuffered:Z
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->isPlaying()Z

    move-result v3

    .line 987
    .local v3, isPlaying:Z
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    .line 988
    sget-object v6, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v8, "blocked because of network"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 990
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 991
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->pause()V

    .line 992
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v6, :cond_0

    .line 993
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v6}, Lcom/miui/player/service/OnlinePlayStatstics;->markPause()V

    .line 996
    :cond_0
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v6, :cond_1

    .line 997
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v6}, Lcom/miui/player/service/OnlinePlayStatstics;->markBlocked()V

    .line 1008
    :cond_1
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v1

    .line 1013
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 999
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-boolean v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 1000
    sget-object v6, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v8, "unblocked from network"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 1002
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 1003
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->start()V

    .line 1004
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v6, :cond_1

    .line 1005
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    iget-object v8, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, v8, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/miui/player/service/OnlinePlayStatstics;->markPlay(Landroid/content/Context;)V

    goto :goto_1

    .line 1008
    .end local v2           #isBuffered:Z
    .end local v3           #isPlaying:Z
    .end local v4           #newPos:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1018
    :cond_3
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-boolean v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    if-eqz v6, :cond_4

    .line 1019
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iput-boolean v9, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mIsBlocking:Z

    .line 1020
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 1021
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-eqz v6, :cond_4

    .line 1022
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer$SafeMediaPlayer;->start()V

    .line 1023
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    if-eqz v6, :cond_4

    .line 1024
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatistics:Lcom/miui/player/service/OnlinePlayStatstics;

    iget-object v7, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v7, v7, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/miui/player/service/OnlinePlayStatstics;->markPlay(Landroid/content/Context;)V

    .line 1029
    :cond_4
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v7, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1030
    :try_start_3
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-ne v6, v12, :cond_5

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-wide v8, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentBytes:J

    const-wide/32 v10, 0x100000

    cmp-long v6, v8, v10

    if-lez v6, :cond_5

    .line 1034
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v0, v6, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 1035
    .local v0, appointName:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, v8, Lcom/miui/player/service/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->setDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 1038
    const-string v6, "mp3"

    invoke-static {v0, v6}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1040
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1041
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    invoke-static {v6, v5}, Lcom/miui/player/service/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 1042
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, v8, Lcom/miui/player/service/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    invoke-virtual {v6, v8}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;)V

    .line 1045
    .end local v0           #appointName:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    :cond_5
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1047
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v7, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/miui/player/service/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V

    .line 1049
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mStatus:I

    if-ne v6, v12, :cond_6

    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v6}, Lcom/miui/player/service/BufferedMediaPlayer;->needPrepare()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1050
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v6, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v7, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v8, v8, Lcom/miui/player/service/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    const-wide/16 v9, 0x1388

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    .line 1052
    :cond_6
    iget-object v6, p0, Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;->this$0:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/miui/player/service/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/service/BufferedMediaPlayer$PlayListenerTask;

    .line 1053
    return-void

    .line 1045
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
