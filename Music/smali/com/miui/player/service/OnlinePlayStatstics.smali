.class public Lcom/miui/player/service/OnlinePlayStatstics;
.super Ljava/lang/Object;
.source "OnlinePlayStatstics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

.field private mChecker:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInitTime:J

.field private mLastPlayTime:J

.field private mLinkStartTime:J

.field private mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/miui/player/service/OnlinePlayStatstics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/OnlinePlayStatstics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "onlineId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mInitTime:J

    .line 34
    new-instance v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    .line 35
    return-void
.end method


# virtual methods
.method public checkPlayStatus(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    iget-object v6, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    if-nez v6, :cond_1

    move-wide v0, v4

    .line 128
    :cond_0
    :goto_0
    return-wide v0

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-wide v2, v6, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    .line 118
    .local v2, time:J
    iget-wide v6, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    sub-long v2, v6, v8

    .line 122
    :cond_2
    const-wide/32 v6, 0xea60

    sub-long v0, v6, v2

    .line 123
    .local v0, remain:J
    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 124
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    .line 125
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4}, Lcom/miui/player/service/OnlinePlayStatstics;->post(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public getAudioId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAudioId:Ljava/lang/String;

    return-object v0
.end method

.method public markBlocked()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBufferCount:I

    .line 67
    return-void
.end method

.method public markConnectSuccess()V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLinkStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mConnectTimeInMs:J

    .line 63
    return-void
.end method

.method public markInitTime()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, current:J
    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mInitTime:J

    .line 58
    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLinkStartTime:J

    .line 59
    return-void
.end method

.method public markPause()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 80
    iget-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    .line 82
    iput-wide v7, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    .line 84
    :cond_0
    return-void
.end method

.method public markPlay(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 70
    iget-wide v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->getShotsnap(I)Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    move-result-object v0

    .line 72
    .local v0, snap:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    invoke-static {p1, v0}, Lcom/miui/player/network/OnlineMusicReporter;->postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V

    .line 75
    .end local v0           #snap:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    const/4 v2, 0x0

    iput v2, v1, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mError:I

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    .line 77
    return-void
.end method

.method public post(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget v0, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mError:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/player/service/OnlinePlayStatstics;->post(Landroid/content/Context;I)V

    .line 96
    return-void
.end method

.method public post(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "error"

    .prologue
    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-wide v3, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, current:J
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-wide v4, v3, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    iget-wide v6, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mPlayDurationInMs:J

    .line 103
    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    .line 106
    .end local v0           #current:J
    :cond_0
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mInitTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mStayTimeInMs:J

    .line 107
    iget-object v3, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    invoke-virtual {v3, p2}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->getShotsnap(I)Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    move-result-object v2

    .line 108
    .local v2, snap:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    invoke-static {p1, v2}, Lcom/miui/player/network/OnlineMusicReporter;->postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V

    .line 110
    .end local v2           #snap:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    :cond_1
    return-void
.end method

.method public setAudioLink(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;)V
    .locals 3
    .parameter "context"
    .parameter "link"

    .prologue
    const/4 v2, 0x1

    .line 42
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/player/service/OnlinePlayStatstics;->post(Landroid/content/Context;)V

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLinkStartTime:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLastPlayTime:J

    .line 49
    new-instance v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-object v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-object v1, v1, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAudioId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    .line 50
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mBitrate:I

    iput v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBitrate:I

    .line 51
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iget-object v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mURL:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iput v2, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mError:I

    .line 53
    return-void
.end method

.method public setAutoSkip(Z)V
    .locals 1
    .parameter "autoSkip"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iput-boolean p1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mAutoSkip:Z

    .line 92
    return-void
.end method

.method public setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mLogStatus:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    iput p1, v0, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mError:I

    .line 88
    return-void
.end method

.method public declared-synchronized startChecking(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/player/service/OnlinePlayStatstics;->TAG:Ljava/lang/String;

    const-string v1, "start checking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/player/service/OnlinePlayStatstics$OnlinePlayChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/player/service/OnlinePlayStatstics;)V

    iput-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    .line 134
    iput-object p2, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mHandler:Landroid/os/Handler;

    .line 135
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopChecking()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/player/service/OnlinePlayStatstics;->TAG:Ljava/lang/String;

    const-string v1, "stop checking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/service/OnlinePlayStatstics;->mChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
