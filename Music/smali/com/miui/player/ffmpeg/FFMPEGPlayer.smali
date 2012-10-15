.class public Lcom/miui/player/ffmpeg/FFMPEGPlayer;
.super Ljava/lang/Object;
.source "FFMPEGPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;
    }
.end annotation


# instance fields
.field private mAlreadyPlayedByte:J

.field private mAudioSessionId:I

.field private mCachedPosition:I

.field mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mDecodeThreadPool:Ljava/util/concurrent/ExecutorService;

.field mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mExternalHandler:Landroid/os/Handler;

.field private mFrameSize:I

.field private final mListenerLock:Ljava/lang/Object;

.field private mPCMData:[B

.field private mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

.field private final mPCMThread:Landroid/os/HandlerThread;

.field private mPCMTrack:Landroid/media/AudioTrack;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRefillMark:I

.field private final mStreamType:I


# direct methods
.method private constructor <init>(II)V
    .locals 7
    .parameter "streamType"
    .parameter "audioSessionId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMThread:Landroid/os/HandlerThread;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mDecodeThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 33
    iput v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAudioSessionId:I

    .line 34
    iput v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    .line 35
    iput-object v6, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    .line 40
    iput v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    .line 41
    iput v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mFrameSize:I

    .line 354
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    .line 49
    iput p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mStreamType:I

    .line 50
    iput p2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAudioSessionId:I

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 58
    :cond_1
    iput-object v6, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onCompletion()V

    return-void
.end method

.method private closePCMProvider()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->close()V

    .line 276
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closePCMTrack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 234
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 235
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mFrameSize:I

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static createFFMPEGPlayer(II)Lcom/miui/player/ffmpeg/FFMPEGPlayer;
    .locals 1
    .parameter "streamType"
    .parameter "audioSessionId"

    .prologue
    .line 462
    invoke-static {}, Lcom/miui/player/ffmpeg/FFMPEGProvider;->isNativeInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;-><init>(II)V

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createPCMProvider(Ljava/io/File;Ljava/util/concurrent/ExecutorService;)Lcom/miui/player/ffmpeg/PCMProvider;
    .locals 2
    .parameter "file"
    .parameter "executor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lcom/miui/player/ffmpeg/FFMPEGProvider;

    invoke-direct {v0, p0}, Lcom/miui/player/ffmpeg/FFMPEGProvider;-><init>(Ljava/io/File;)V

    .line 458
    .local v0, actual:Lcom/miui/player/ffmpeg/PCMProvider;
    new-instance v1, Lcom/miui/player/ffmpeg/BufferedPCMProvider;

    invoke-direct {v1, v0, p1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider;-><init>(Lcom/miui/player/ffmpeg/PCMProvider;Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method private getAudioTrackBufferSize()I
    .locals 4

    .prologue
    .line 299
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v1}, Lcom/miui/player/ffmpeg/PCMProvider;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v2}, Lcom/miui/player/ffmpeg/PCMProvider;->getChannels()I

    move-result v2

    invoke-static {v2}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getChannelConfig(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 302
    .local v0, min:I
    mul-int/lit8 v1, v0, 0x4

    const v2, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 305
    .end local v0           #min:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getChannelConfig(I)I
    .locals 1
    .parameter "channel"

    .prologue
    .line 444
    packed-switch p0, :pswitch_data_0

    .line 452
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 446
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 448
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 450
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized onCompletion()V
    .locals 2

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->stop()V

    .line 338
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->closePCMProvider()V

    .line 339
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/player/ffmpeg/FFMPEGPlayer$3;

    invoke-direct {v1, p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer$3;-><init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer$2;-><init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onCompletion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openPCMProvider()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-nez v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer Open PCM provider failed because it is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v2}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v2}, Lcom/miui/player/ffmpeg/PCMProvider;->open()I

    move-result v1

    .line 251
    .local v1, ret:I
    if-eqz v1, :cond_1

    .line 252
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.miui.player.ffmpeg.FFMPEGPlayer Open PCM provider failed with ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 255
    .restart local v1       #ret:I
    :cond_1
    const-wide/16 v4, 0x0

    :try_start_1
    iput-wide v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    .line 256
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    .line 259
    .end local v1           #ret:I
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getAudioTrackBufferSize()I

    move-result v0

    .line 260
    .local v0, len:I
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    array-length v2, v2

    div-int/lit8 v4, v0, 0x2

    if-eq v2, v4, :cond_4

    .line 261
    :cond_3
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    .line 262
    div-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    .line 264
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    return-void
.end method

.method private openPCMTrack()V
    .locals 10

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->closePCMTrack()V

    .line 210
    iget-object v9, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getAudioTrackBufferSize()I

    move-result v5

    .line 212
    .local v5, len:I
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->getChannels()I

    move-result v8

    .line 213
    .local v8, channel:I
    invoke-static {v8}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getChannelConfig(I)I

    move-result v3

    .line 214
    .local v3, channelConfig:I
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->getSampleRate()I

    move-result v2

    .line 215
    .local v2, sampleRate:I
    iget v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAudioSessionId:I

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mStreamType:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    .line 218
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAudioSessionId:I

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mFrameSize:I

    .line 225
    monitor-exit v9

    .line 226
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mStreamType:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    iget v7, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAudioSessionId:I

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 225
    .end local v2           #sampleRate:I
    .end local v3           #channelConfig:I
    .end local v5           #len:I
    .end local v8           #channel:I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePCMProvider()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->close()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->release()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    .line 293
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    .line 295
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 6

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    if-ltz v2, :cond_0

    .line 137
    iget v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return v2

    .line 140
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mFrameSize:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v2}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v2}, Lcom/miui/player/ffmpeg/PCMProvider;->getBaseFramePosition()I

    move-result v1

    .line 143
    .local v1, base:I
    iget-wide v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mFrameSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v2

    .line 144
    .local v0, already:I
    add-int v2, v1, v0

    goto :goto_0

    .line 147
    .end local v0           #already:I
    .end local v1           #base:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDuration()I
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0}, Lcom/miui/player/ffmpeg/PCMProvider;->getDuration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 155
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 9
    .parameter "track"

    .prologue
    const/4 v3, 0x0

    .line 358
    const/4 v2, 0x1

    .line 359
    .local v2, ret:I
    iget-object v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 360
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-ne p1, v5, :cond_0

    if-nez p1, :cond_2

    .line 361
    :cond_0
    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overdue track in thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    :goto_0
    monitor-exit v4

    .line 406
    packed-switch v2, :pswitch_data_0

    .line 420
    :goto_1
    return-void

    .line 364
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v5}, Lcom/miui/player/ffmpeg/PCMProvider;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_6

    .line 366
    :try_start_1
    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 368
    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    iget-object v6, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    invoke-interface {v5, v6}, Lcom/miui/player/ffmpeg/PCMProvider;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 369
    .local v1, len:I
    if-ltz v1, :cond_5

    move v2, v3

    .line 380
    .end local v1           #len:I
    :goto_2
    if-nez v2, :cond_4

    .line 381
    :try_start_2
    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    array-length v7, v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-gez v3, :cond_3

    .line 382
    const/4 v2, 0x4

    .line 384
    :cond_3
    iget-wide v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    array-length v3, v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    .line 385
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    .line 389
    :cond_4
    if-nez v2, :cond_1

    .line 390
    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 399
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 369
    .restart local v1       #len:I
    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    .line 370
    .end local v1           #len:I
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x3

    .line 372
    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Read failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 404
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 375
    :cond_6
    const/4 v2, 0x3

    .line 376
    :try_start_3
    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v5, " Read failed because PCM provider is invalid"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 392
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    iget v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    goto/16 :goto_0

    .line 395
    :pswitch_2
    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    iget v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    const/4 v2, 0x1

    .line 397
    goto/16 :goto_0

    .line 408
    :pswitch_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_1

    .line 411
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onCompletion()V

    goto/16 :goto_1

    .line 415
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->onError(I)V

    goto/16 :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 390
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string v0, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->openPCMProvider()V

    .line 74
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->openPCMTrack()V

    .line 76
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    new-instance v1, Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer$PCMUpdateListener;-><init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 78
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mExternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/player/ffmpeg/FFMPEGPlayer$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer$1;-><init>(Lcom/miui/player/ffmpeg/FFMPEGPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->reset()V

    .line 184
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 185
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mDecodeThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMData:[B

    .line 187
    const-string v0, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v1, "release ffmpeg player"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v0, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->closePCMTrack()V

    .line 179
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->releasePCMProvider()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekTo(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    if-eqz v0, :cond_0

    .line 122
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getDuration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-lt p1, v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCachedPosition:I

    .line 127
    iget-object v1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;

    invoke-interface {v0, p1}, Lcom/miui/player/ffmpeg/PCMProvider;->seek(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 129
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mAlreadyPlayedByte:J

    .line 131
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataSource(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->reset()V

    .line 68
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mDecodeThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->createPCMProvider(Ljava/io/File;Ljava/util/concurrent/ExecutorService;)Lcom/miui/player/ffmpeg/PCMProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMProvider:Lcom/miui/player/ffmpeg/PCMProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(FF)V
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    monitor-enter p0

    :try_start_0
    const-string v4, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v5, "start"

    invoke-static {v4, v5}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-nez v4, :cond_0

    .line 97
    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v4, "Start failed because PCM track is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return v2

    .line 102
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->openPCMProvider()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :try_start_2
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 109
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    iget v4, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 110
    const-string v2, "com.miui.player.ffmpeg.FFMPEGPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fill with silence before starting playback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mRefillMark:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getAudioTrackBufferSize()I

    move-result v2

    new-array v1, v2, [B

    .line 112
    .local v1, rawData:[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 113
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v1, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 116
    .end local v1           #rawData:[B
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    move v2, v3

    .line 117
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    const-string v3, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v4, "Start failed because PCM provider open failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string v0, "com.miui.player.ffmpeg.FFMPEGPlayer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->mPCMTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
