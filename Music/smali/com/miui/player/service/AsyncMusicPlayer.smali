.class public Lcom/miui/player/service/AsyncMusicPlayer;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Lcom/miui/player/service/RunnableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;,
        Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;,
        Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;,
        Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;,
        Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;,
        Lcom/miui/player/service/AsyncMusicPlayer$Command;
    }
.end annotation


# instance fields
.field private mBandLevels:[S

.field final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/player/service/AsyncMusicPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

.field private mEqualizer:Landroid/media/audiofx/Equalizer;

.field private final mEqualizerLock:Ljava/lang/Object;

.field mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field final mHandler:Landroid/os/Handler;

.field private mLastDuration:J

.field private mLastPosition:J

.field mNextId:I

.field private final mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

.field final mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

.field private mReleased:Z

.field private mSessionId:I

.field private mState:I

.field mTag:Ljava/lang/String;

.field mThread:Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;)V
    .locals 2
    .parameter "tag"
    .parameter "starter"

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mSessionId:I

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 70
    iput v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    .line 335
    iput-boolean v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mReleased:Z

    .line 340
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    .line 344
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    .line 364
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AsyncMusicPlayer$1;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    .line 412
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AsyncMusicPlayer$2;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 435
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AsyncMusicPlayer$3;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

    .line 559
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastDuration:J

    .line 577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastPosition:J

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    .line 358
    :goto_0
    iput-object p2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

    .line 359
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-direct {v0, p0}, Lcom/miui/player/service/BufferedMediaPlayer;-><init>(Lcom/miui/player/service/RunnableList;)V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    .line 360
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 361
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/BufferedMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 362
    return-void

    .line 356
    :cond_0
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private static createEqualizer(I)Landroid/media/audiofx/Equalizer;
    .locals 3
    .parameter "sessionId"

    .prologue
    .line 664
    :try_start_0
    new-instance v1, Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/media/audiofx/Equalizer;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    return-object v1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 668
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static releaseEqualzier(Landroid/media/audiofx/Equalizer;)V
    .locals 2
    .parameter "equalizer"

    .prologue
    .line 674
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 675
    .local v0, device:Ljava/lang/String;
    const-string v1, "ace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    goto :goto_0
.end method

.method private static setBands(Landroid/media/audiofx/Equalizer;[S)V
    .locals 2
    .parameter "eq"
    .parameter "bands"

    .prologue
    .line 717
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 718
    aget-short v1, p1, v0

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 717
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 720
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V
    .locals 7
    .parameter "name"
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    const-string v2, "add runnable name=%s, delay=%d, current=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 85
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/4 v1, 0x7

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 86
    iput-object p1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    iput-object v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/player/service/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 91
    monitor-exit v2

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeMode(II)V
    .locals 3
    .parameter "oldMode"
    .parameter "newMode"

    .prologue
    const/4 v1, 0x1

    .line 495
    if-eq p2, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 497
    :cond_0
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 498
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/4 v1, 0x6

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 499
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 500
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 501
    monitor-exit v2

    .line 503
    .end local v0           #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_1
    return-void

    .line 501
    .restart local v0       #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doRemoveRunnable(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/miui/player/service/AsyncMusicPlayer$Command;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    .line 110
    .local v0, c:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iget v2, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 115
    .end local v0           #c:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_2
    return-void
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 563
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getDuration()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    iget-wide v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastDuration:J

    return-wide v0

    .line 568
    :cond_0
    const-wide/16 v2, 0x1

    :try_start_2
    iput-wide v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastDuration:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mReleased:Z

    if-eqz v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mThread:Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;

    invoke-direct {v0, p0}, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mThread:Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;

    .line 729
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mThread:Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->start()V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 711
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit v1

    return v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferedPercent()F
    .locals 2

    .prologue
    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v0

    monitor-exit v1

    .line 614
    :goto_0
    return v0

    .line 610
    :cond_0
    monitor-exit v1

    .line 614
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 611
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getPlayingFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getPlayingFilePath()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 627
    :goto_0
    return-object v0

    .line 623
    :cond_0
    monitor-exit v1

    .line 627
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isBlocking()Z
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->isBlocking()Z

    move-result v0

    monitor-exit v1

    .line 600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 518
    iget v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 506
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 507
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 508
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/player/service/BufferedMediaPlayer;->togglePause(I)V

    .line 512
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 513
    const/4 v1, 0x5

    iput v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    .line 514
    monitor-exit v2

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method popNextUsableCommand()Lcom/miui/player/service/AsyncMusicPlayer$Command;
    .locals 14

    .prologue
    .line 167
    iget-object v12, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    .line 169
    .local v2, firstCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iget v12, v2, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    iget v12, v2, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_1

    .line 222
    .end local v2           #firstCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_0
    :goto_0
    return-object v2

    .line 173
    .restart local v2       #firstCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_1
    iget-object v12, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v9

    .line 174
    .local v9, size:I
    if-eqz v9, :cond_0

    .line 178
    iget v3, v2, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 179
    .local v3, firstCode:I
    const/4 v7, 0x0

    .line 180
    .local v7, priorityCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/4 v10, -0x1

    .line 181
    .local v10, stopAndMetaChangeIdx:I
    const/4 v6, -0x1

    .line 182
    .local v6, modeChangeIdx:I
    const/4 v11, -0x1

    .line 183
    .local v11, stopOrStartIdx:I
    const/4 v8, -0x1

    .line 185
    .local v8, priorityIdx:I
    iget-object v12, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12, v9}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 189
    .local v5, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/miui/player/service/AsyncMusicPlayer$Command;>;"
    move v4, v9

    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 190
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    .line 191
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iget v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 192
    .local v1, code:I
    const/4 v12, 0x3

    if-ne v1, v12, :cond_4

    iget-object v12, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 193
    move v10, v4

    .line 202
    .end local v0           #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    .end local v1           #code:I
    :cond_2
    const/4 v12, -0x1

    if-le v10, v12, :cond_8

    .line 203
    move v8, v10

    .line 212
    :cond_3
    :goto_2
    const/4 v12, -0x1

    if-le v8, v12, :cond_a

    .line 213
    iget-object v12, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 214
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #priorityCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    check-cast v7, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    .line 215
    .restart local v7       #priorityCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 216
    :goto_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 217
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 218
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 195
    .restart local v0       #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    .restart local v1       #code:I
    :cond_4
    const/4 v12, 0x6

    if-ne v1, v12, :cond_6

    .line 196
    move v6, v4

    .line 189
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 197
    :cond_6
    const/4 v12, 0x3

    if-eq v1, v12, :cond_7

    const/4 v12, 0x1

    if-ne v1, v12, :cond_5

    .line 198
    :cond_7
    move v11, v4

    goto :goto_4

    .line 204
    .end local v0           #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    .end local v1           #code:I
    :cond_8
    const/4 v12, -0x1

    if-le v6, v12, :cond_9

    .line 205
    const/4 v12, 0x3

    if-eq v3, v12, :cond_3

    const/4 v12, 0x1

    if-eq v3, v12, :cond_3

    .line 206
    move v8, v6

    goto :goto_2

    .line 208
    :cond_9
    const/4 v12, -0x1

    if-le v11, v12, :cond_3

    .line 209
    move v8, v11

    goto :goto_2

    .line 222
    :cond_a
    if-eqz v7, :cond_b

    .end local v7           #priorityCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :goto_5
    move-object v2, v7

    goto :goto_0

    .restart local v7       #priorityCmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_b
    move-object v7, v2

    goto :goto_5
.end method

.method public position()J
    .locals 4

    .prologue
    .line 580
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    iget-wide v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastPosition:J

    return-wide v0

    .line 585
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "path"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    .line 462
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 463
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 464
    iput-object p1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 465
    iput-object p2, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 466
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 467
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 468
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    .line 469
    monitor-exit v2

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 473
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 474
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/16 v1, 0x9

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 475
    iput-object p1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 476
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 477
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 478
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mReleased:Z

    .line 479
    monitor-exit v2

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseAll(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 636
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 639
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/miui/player/service/BufferedMediaPlayer;->release(Landroid/content/Context;Z)V

    .line 640
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    return-void

    .line 636
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 640
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    const-string v2, "remove runnable name "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 98
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/16 v1, 0x8

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 99
    iput-object p1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 101
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 102
    monitor-exit v2

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public seek(J)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 549
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 550
    :try_start_0
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 551
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/4 v1, 0x4

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 552
    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 555
    iput-wide p1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mLastPosition:J

    .line 556
    monitor-exit v2

    .line 557
    return-void

    .line 556
    .end local v0           #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 406
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 483
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 484
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 485
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/miui/player/service/BufferedMediaPlayer;->togglePause(I)V

    .line 489
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 490
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    .line 491
    monitor-exit v2

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startSound(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V
    .locals 10
    .parameter "cmd"

    .prologue
    const/4 v9, 0x0

    .line 122
    const/4 v1, 0x0

    .line 125
    .local v1, exception:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 126
    .local v2, id:I
    const/4 v3, 0x0

    .line 127
    .local v3, isFirst:Z
    :try_start_0
    iget v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    if-nez v5, :cond_1

    .line 128
    invoke-static {p0}, Lcom/miui/player/service/BufferedMediaPlayer;->setUp(Lcom/miui/player/service/RunnableList;)V

    .line 129
    invoke-static {}, Lcom/miui/player/service/BufferedMediaPlayer;->getDefaultTempId()I

    move-result v2

    .line 130
    const/4 v3, 0x1

    .line 135
    :goto_0
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 136
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/player/service/BufferedMediaPlayer;->reset(Z)V

    .line 137
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v5, v2, v3}, Lcom/miui/player/service/BufferedMediaPlayer;->setTempId(IZ)V

    .line 138
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v5}, Lcom/miui/player/service/BufferedMediaPlayer;->getAudioSessionId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerSessionId(I)V

    .line 139
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

    iget-object v6, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    iget-object v7, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v8, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;->prepareAsync(Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v5}, Lcom/miui/player/service/BufferedMediaPlayer;->getNextId()I

    move-result v5

    iput v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    .line 142
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 143
    .local v4, msg:Landroid/os/Message;
    new-instance v5, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;

    iget-object v6, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/miui/player/service/OnlinePlayDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 157
    .end local v4           #msg:Landroid/os/Message;
    :goto_1
    if-eqz v1, :cond_0

    .line 158
    iput v9, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    .line 159
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 160
    .restart local v4       #msg:Landroid/os/Message;
    new-instance v5, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;

    iget-object v6, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    invoke-direct {v5, p0, v6, v7, v1}, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v5, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 132
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/miui/player/service/OnlinePlayDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    move-object v1, v0

    .line 155
    goto :goto_1

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v1, v0

    .line 155
    goto :goto_1

    .line 149
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v1, v0

    .line 155
    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 152
    .local v0, e:Lcom/miui/player/service/OnlinePlayDeniedException;
    move-object v1, v0

    .line 155
    goto :goto_1

    .line 153
    .end local v0           #e:Lcom/miui/player/service/OnlinePlayDeniedException;
    :catch_4
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v0

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 5
    .parameter "orderChanged"

    .prologue
    const/4 v4, 0x3

    .line 530
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->interrupt()V

    .line 533
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/player/service/BufferedMediaPlayer;->togglePause(I)V

    .line 538
    :cond_0
    iget v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    if-eq v1, v4, :cond_1

    .line 539
    new-instance v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;

    invoke-direct {v0}, Lcom/miui/player/service/AsyncMusicPlayer$Command;-><init>()V

    .line 540
    .local v0, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    const/4 v1, 0x3

    iput v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    .line 541
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 542
    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 543
    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mState:I

    .line 545
    .end local v0           #cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    :cond_1
    monitor-exit v2

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateEqualizerBands([S)V
    .locals 7
    .parameter "levels"

    .prologue
    .line 683
    const/4 v0, -0x1

    .line 684
    .local v0, sessionId:I
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/BufferedMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 686
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 688
    :try_start_1
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mBandLevels:[S

    .line 689
    if-eqz p1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 691
    invoke-static {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->createEqualizer(I)Landroid/media/audiofx/Equalizer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 692
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 694
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    const-string v3, "%s=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "create equalizer "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v1, p1}, Lcom/miui/player/service/AsyncMusicPlayer;->setBands(Landroid/media/audiofx/Equalizer;[S)V

    .line 707
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    return-void

    .line 686
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 701
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v1}, Lcom/miui/player/service/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 703
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 705
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    const-string v3, "release equalizer from user!"

    invoke-static {v1, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method updateEqualizerSessionId(I)V
    .locals 3
    .parameter "sessionId"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mSessionId:I

    if-eq v0, p1, :cond_1

    .line 647
    iput p1, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mSessionId:I

    .line 648
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 651
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    const-string v2, "release equalizer for update session id!"

    invoke-static {v0, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mBandLevels:[S

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/miui/player/service/AsyncMusicPlayer;->mBandLevels:[S

    invoke-virtual {p0, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerBands([S)V

    .line 659
    :cond_1
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
