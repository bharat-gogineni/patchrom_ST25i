.class public Lcom/miui/player/ffmpeg/BufferedPCMProvider;
.super Ljava/lang/Object;
.source "BufferedPCMProvider.java"

# interfaces
.implements Lcom/miui/player/ffmpeg/PCMProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;,
        Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

.field private final mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

.field private final mChannels:I

.field private volatile mClosed:Z

.field private final mDuration:I

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private final mMinSampleBufferSize:I

.field private mReadEOF:Z

.field private final mSampleRate:I

.field private volatile mSeeking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/miui/player/ffmpeg/PCMProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .parameter "provider"
    .parameter "executor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-interface {p1}, Lcom/miui/player/ffmpeg/PCMProvider;->open()I

    move-result v0

    .line 30
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed with code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    invoke-interface {p1}, Lcom/miui/player/ffmpeg/PCMProvider;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mDuration:I

    .line 36
    invoke-interface {p1}, Lcom/miui/player/ffmpeg/PCMProvider;->getChannels()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mChannels:I

    .line 37
    invoke-interface {p1}, Lcom/miui/player/ffmpeg/PCMProvider;->getSampleRate()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSampleRate:I

    .line 38
    invoke-interface {p1}, Lcom/miui/player/ffmpeg/PCMProvider;->getMinSampleBufferSize()I

    move-result v1

    iput v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mMinSampleBufferSize:I

    .line 39
    new-instance v1, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    iget v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mMinSampleBufferSize:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;-><init>(II)V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    .line 40
    iput-object p1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    .line 78
    iget-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    monitor-enter v1

    .line 87
    :try_start_3
    iget-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->close()V

    .line 88
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    sget-object v0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 88
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBaseFramePosition()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->getBaseFramePosition()I

    move-result v0

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mChannels:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mDuration:I

    return v0
.end method

.method public getMinSampleBufferSize()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mMinSampleBufferSize:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSampleRate:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    return v0
.end method

.method public open()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    if-eqz v1, :cond_1

    .line 48
    iput-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    .line 49
    iput-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    .line 50
    iput-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSeeking:Z

    .line 51
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->open()I

    move-result v0

    .line 54
    .local v0, status:I
    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0           #status:I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;

    invoke-direct {v3, p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;-><init>(Lcom/miui/player/ffmpeg/BufferedPCMProvider;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :cond_1
    sget-object v1, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return v5

    .line 59
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 66
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 64
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 4
    .parameter "pcmData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, readLen:I
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    array-length v3, p1

    invoke-virtual {v1, v3}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->canRead(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0

    .line 117
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    iget-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->read([BZ)I

    move-result v0

    .line 118
    iget-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    if-eqz v1, :cond_1

    if-gtz v0, :cond_1

    .line 119
    const/4 v0, -0x1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v2

    .line 124
    return v0

    .line 117
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->close()V

    .line 100
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->release()V

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seek(I)I
    .locals 4
    .parameter "target"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, status:I
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->open()I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1, p1}, Lcom/miui/player/ffmpeg/PCMProvider;->seek(I)I

    move-result v0

    .line 134
    if-nez v0, :cond_1

    .line 135
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    invoke-virtual {v1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->reset()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSeeking:Z

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    .line 139
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    return v0

    .line 139
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 142
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method workAsync()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 176
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 177
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    iget v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mMinSampleBufferSize:I

    new-array v0, v4, [B

    .line 180
    .local v0, buf:[B
    :goto_0
    iget-boolean v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    if-nez v4, :cond_4

    .line 181
    const/4 v1, -0x1

    .line 182
    .local v1, len:I
    const/4 v2, 0x0

    .line 183
    .local v2, readEOF:Z
    iget-object v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    monitor-enter v4

    .line 185
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSeeking:Z

    .line 186
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v5, v0}, Lcom/miui/player/ffmpeg/PCMProvider;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 187
    if-gez v1, :cond_1

    const/4 v2, 0x1

    .line 190
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 192
    iget-object v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_3
    iput-boolean v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    .line 194
    :goto_2
    iget-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mClosed:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mReadEOF:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    invoke-virtual {v5, v1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->canWrite(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 196
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 203
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 177
    .end local v0           #buf:[B
    .end local v1           #len:I
    .end local v2           #readEOF:Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .restart local v0       #buf:[B
    .restart local v1       #len:I
    .restart local v2       #readEOF:Z
    :cond_1
    move v2, v3

    .line 187
    goto :goto_1

    .line 190
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 199
    :cond_2
    if-lez v1, :cond_3

    :try_start_6
    iget-boolean v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mSeeking:Z

    if-nez v5, :cond_3

    .line 200
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mBuffer:Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider$Buffer;->write([BII)V

    .line 202
    :cond_3
    iget-object v5, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 206
    .end local v1           #len:I
    .end local v2           #readEOF:Z
    :cond_4
    iget-object v4, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_7
    iget-object v3, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 208
    sget-object v3, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Work thread say goodbye! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->mActualProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    monitor-exit v4

    .line 210
    return-void

    .line 209
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 188
    .restart local v1       #len:I
    .restart local v2       #readEOF:Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method
