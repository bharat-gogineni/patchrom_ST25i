.class public Lcom/miui/player/service/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/MediaPlaybackService$ServiceStub;,
        Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;,
        Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;,
        Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;,
        Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;,
        Lcom/miui/player/service/MediaPlaybackService$AlbumSource;,
        Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;,
        Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;,
        Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;,
        Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;,
        Lcom/miui/player/service/MediaPlaybackService$MountCheck;,
        Lcom/miui/player/service/MediaPlaybackService$CheckAction;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String;


# instance fields
.field final MEDIA_PROVIDER_CHANGED_DELAYED:I

.field final MSG_MEDIA_PROVIDER_CHANGED:I

.field private final mAsynInitializeWorker:Ljava/lang/Thread;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Landroid/os/IBinder;

.field final mBufferedMediaPlayerHandler:Landroid/os/Handler;

.field private final mCallback:Landroid/os/Bundle;

.field mCardId:I

.field private mChannelName:Ljava/lang/String;

.field mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mConnectionListener:Lcom/miui/player/service/ConnectionListener;

.field mCursor:Landroid/database/Cursor;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

.field mFileToPlay:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsSupposedToBePlaying:Z

.field mLocalCursorCols:[Ljava/lang/String;

.field private mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

.field final mLyricManager:Lcom/miui/player/service/LyricManager;

.field mMediaObserverHandler:Landroid/os/Handler;

.field private mMediaProviderObserver:Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;

.field final mMediaplayerHandler:Landroid/os/Handler;

.field final mMetaDownloadHandler:Landroid/os/Handler;

.field mOnlineCursorCols:[Ljava/lang/String;

.field mOpenFailedCounter:I

.field mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayList:[J

.field mPlayListLen:I

.field private mPlayPos:I

.field mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

.field private mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

.field mQueueIsSaveable:Z

.field private final mQuitReceiver:Landroid/content/BroadcastReceiver;

.field private final mRandom:Ljava/util/Random;

.field mRepeatMode:I

.field private final mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field mScreenOn:Z

.field private final mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

.field mServiceInUse:Z

.field mServiceStartId:I

.field mShakeListener:Lcom/miui/player/service/ShakeListener;

.field private mShuffleMode:I

.field private mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

.field mSleepTriggerTime:J

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateVersion:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    .line 114
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 146
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 148
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 149
    iput-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 152
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 154
    iput v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 156
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mSleepTriggerTime:J

    .line 162
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "online_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    .line 184
    iput-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    .line 188
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 189
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 190
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 191
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    invoke-direct {v0}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    .line 193
    new-instance v0, Lcom/miui/player/service/ShuffleTracer;

    invoke-direct {v0, v5}, Lcom/miui/player/service/ShuffleTracer;-><init>(Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    .line 194
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRandom:Ljava/util/Random;

    .line 206
    new-instance v0, Lcom/miui/player/service/LyricManager;

    invoke-direct {v0}, Lcom/miui/player/service/LyricManager;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    .line 208
    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mUpdateVersion:I

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCallback:Landroid/os/Bundle;

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mBufferedMediaPlayerHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$1;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 313
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$2;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$3;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenOn:Z

    .line 388
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$4;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$5;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 471
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$6;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 563
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$7;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 572
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$8;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mAsynInitializeWorker:Ljava/lang/Thread;

    .line 866
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$9;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1642
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$11;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$11;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2660
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$12;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$12;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    .line 2745
    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->MSG_MEDIA_PROVIDER_CHANGED:I

    .line 2746
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->MEDIA_PROVIDER_CHANGED_DELAYED:I

    .line 2748
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$13;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$13;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaObserverHandler:Landroid/os/Handler;

    .line 3156
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$ServiceStub;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 478
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/service/MediaPlaybackService;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/service/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    return v0
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1111
    array-length v0, p1

    .line 1112
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 1113
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1114
    const/4 p2, 0x0

    .line 1116
    :cond_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1117
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 1118
    iget p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1122
    :cond_1
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 1123
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 1124
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1123
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1128
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1129
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 1128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1131
    :cond_3
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1132
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 1133
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1135
    const-string v3, "meta_changed_track"

    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1137
    :cond_4
    return-void
.end method

.method private adjustShuffleMode(ZLjava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1184
    const-string v0, "shufflemode_bak"

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1187
    const-string v0, "repeatmode_bak"

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1190
    if-eqz p1, :cond_3

    .line 1191
    invoke-direct {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->doSetShuffleMode(I)V

    .line 1192
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-ne v0, v4, :cond_0

    .line 1193
    invoke-direct {p0, v7}, Lcom/miui/player/service/MediaPlaybackService;->doSetRepeatMode(I)V

    .line 1196
    :cond_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 1197
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 1212
    :goto_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1213
    if-eq v2, v3, :cond_1

    .line 1214
    const-string v3, "shufflemode_bak"

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1217
    :cond_1
    if-eq v0, v1, :cond_2

    .line 1218
    const-string v1, "repeatmode_bak"

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1220
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1222
    return p1

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 1200
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 1201
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 1203
    invoke-direct {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->doSetShuffleMode(I)V

    .line 1204
    iget v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-ne v6, v4, :cond_6

    .line 1205
    invoke-direct {p0, v7}, Lcom/miui/player/service/MediaPlaybackService;->doSetRepeatMode(I)V

    move p1, v4

    goto :goto_0

    .line 1207
    :cond_4
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 1208
    invoke-direct {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->doSetShuffleMode(I)V

    .line 1209
    invoke-direct {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->doSetRepeatMode(I)V

    :cond_5
    move v0, v1

    move v2, v3

    goto :goto_0

    :cond_6
    move p1, v4

    goto :goto_0
.end method

.method private canPlay(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1446
    const-string v1, "content://com.miui.player/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return v0

    .line 1450
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v1

    .line 1451
    if-nez v1, :cond_0

    .line 1455
    const-string v1, "other_connect_listen"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1457
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->isAllOnline()Z

    move-result v2

    .line 1458
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNotificationContent(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c00a2

    .line 1601
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f030039

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1603
    const v0, 0x7f0c0069

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1604
    const v0, 0x7f0c0011

    invoke-virtual {v1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1605
    const v0, 0x7f0c0012

    invoke-virtual {v1, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1607
    const v0, 0x7f0c00a3

    const-string v2, "com.miui.player.musicservicecommand.next"

    invoke-direct {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1609
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200aa

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1611
    const-string v0, "service.togglepause.unremove_notification"

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1613
    return-object v1

    .line 1609
    :cond_0
    const v0, 0x7f0200ad

    goto :goto_0
.end method

.method private doSetRepeatMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2241
    monitor-enter p0

    .line 2242
    :try_start_0
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 2243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 2244
    monitor-exit p0

    .line 2245
    return-void

    .line 2244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doSetShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2218
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2228
    :goto_0
    return-void

    .line 2222
    :cond_0
    monitor-enter p0

    .line 2223
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/service/AsyncMusicPlayer;->changeMode(II)V

    .line 2224
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 2225
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 2226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 2227
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2612
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other_connect_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2614
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    if-eqz v0, :cond_3

    .line 2615
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    .line 2616
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    iget-object v1, v1, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    .line 2617
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2627
    :cond_1
    :goto_0
    return-void

    .line 2620
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2624
    :cond_3
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    .line 2625
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$DownloadAlbumThread;->start()V

    goto :goto_0
.end method

.method private enqueueNotification(ILandroid/app/Notification;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1624
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 1625
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1626
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1627
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v2, 0x0

    move v3, p1

    move-object v4, p2

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 1630
    const/4 v0, 0x0

    aget v0, v5, v0

    if-eq p1, v0, :cond_0

    .line 1631
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify: id corrupted: sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1633
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1094
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 1098
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 1099
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v1, v3

    .line 1100
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1101
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1099
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 1103
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 1107
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getNextId()J
    .locals 6

    .prologue
    .line 1418
    const-wide/16 v1, 0x0

    .line 1419
    .local v1, ret:J
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v3, 0x1

    .line 1421
    .local v0, nextIdx:I
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-nez v3, :cond_4

    .line 1422
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1423
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 1424
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    .line 1438
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1439
    const-wide/16 v1, 0x0

    .line 1442
    :cond_1
    return-wide v1

    .line 1427
    :cond_2
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v3, :cond_3

    .line 1428
    const/4 v0, 0x0

    .line 1430
    :cond_3
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0

    .line 1433
    :cond_4
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/service/ShuffleTracer;->peekNext(II)I

    move-result v0

    .line 1434
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0
.end method

.method private getPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    .line 1617
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1618
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private gotoIdleState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2035
    const/4 v0, 0x1

    const v1, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 2036
    return-void
.end method

.method private gotoIdleState(ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2040
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2041
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stopForeground(Z)V

    .line 2045
    if-eqz p1, :cond_0

    .line 2046
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2047
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2051
    :goto_0
    return-void

    .line 2049
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    goto :goto_0
.end method

.method private isAllOnline()Z
    .locals 5

    .prologue
    .line 1462
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 1463
    .local v2, queue:[J
    const/4 v1, 0x1

    .line 1465
    .local v1, isAllOnline:Z
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lez v3, :cond_2

    .line 1466
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 1467
    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1468
    const/4 v1, 0x0

    .line 1476
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 1466
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static localExists(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1860
    const-string v0, "mp3"

    invoke-static {p2, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1861
    if-eqz v0, :cond_0

    .line 1862
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1866
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAllShuffleList()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1533
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1534
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1536
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1540
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1556
    :cond_0
    if-eqz v6, :cond_1

    .line 1557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v11

    .line 1560
    :goto_0
    return v1

    .line 1543
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1544
    .local v8, len:I
    new-array v9, v8, [J

    .line 1545
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1546
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1547
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 1545
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1549
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    .line 1550
    const/4 v1, -0x1

    invoke-virtual {p0, v9, v1}, Lcom/miui/player/service/MediaPlaybackService;->open([JI)Z

    .line 1551
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->setShuffleMode(I)V

    .line 1552
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1556
    if-eqz v6, :cond_4

    .line 1557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v10

    goto :goto_0

    .line 1554
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v1

    .line 1556
    if-eqz v6, :cond_5

    .line 1557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v11

    .line 1560
    goto :goto_0

    .line 1556
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 1557
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1016
    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUpdateVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUpdateVersion:I

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 1021
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 1022
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 1024
    const/4 v1, 0x0

    .line 1025
    const/4 v0, 0x0

    .line 1026
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/4 v2, 0x1

    .line 1027
    :goto_0
    if-eqz v2, :cond_c

    .line 1028
    invoke-direct {p0, v4, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    move-result-object v0

    .line 1029
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    .line 1030
    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    move-object v8, v0

    move-object v9, v1

    .line 1033
    :goto_1
    const/4 v11, 0x0

    .line 1034
    const/4 v10, 0x0

    .line 1035
    const-string v0, "meta_changed_lyric"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "meta_changed_track"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v3, 0x1

    .line 1036
    :goto_2
    if-nez v3, :cond_3

    const-string v0, "meta_changed_buffer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    const/4 v0, 0x1

    .line 1037
    :goto_3
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    new-instance v2, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;

    invoke-direct {v2, p0, v4, v6}, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/service/LyricManager;->updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1039
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->getStringArr()Ljava/util/ArrayList;

    move-result-object v1

    .line 1040
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->getTimeArr()[I

    move-result-object v0

    .line 1041
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v2}, Lcom/miui/player/service/LyricManager;->recycleContent()V

    .line 1045
    :goto_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1047
    const-string v3, "online_id"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    const-string v3, "artist"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v3, "album"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const-string v3, "track"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v3, "album_uri"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    const-string v3, "album_path"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v3, "lyric_status"

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v4}, Lcom/miui/player/service/LyricManager;->status()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    const-string v3, "lyric"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1055
    const-string v1, "lyric_time"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1056
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1057
    const-string v0, "blocking"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isBlocking()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1058
    const-string v0, "position"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1059
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->duration()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1060
    const-string v0, "buffering"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isBuffering()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1061
    const-string v0, "buffered_pos"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getBufferedPosition()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1062
    const-string v0, "time_stamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1063
    const-string v0, "favorite"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3, v4, v1}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1064
    const-string v0, "update_version"

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mUpdateVersion:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1065
    const-string v0, "channel_name"

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    const-string v0, "callback_wrap"

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCallback:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1068
    if-eqz p2, :cond_4

    .line 1069
    const-string v0, "other"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1073
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1074
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 1079
    :cond_5
    :goto_5
    return-void

    .line 1026
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1035
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1036
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1075
    :cond_9
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1077
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_5

    :cond_b
    move-object v0, v10

    move-object v1, v11

    goto/16 :goto_4

    :cond_c
    move-object v8, v0

    move-object v9, v1

    goto/16 :goto_1
.end method

.method static onlinePlay(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/player/service/OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1843
    invoke-static {p0, p3, p4}, Lcom/miui/player/network/MP3Downloader;->getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v3

    .line 1844
    if-nez v3, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1848
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    .line 1849
    if-nez v0, :cond_1

    const-string v0, "other_connect_listen"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1852
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, v3, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->localExists(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1853
    new-instance v0, Lcom/miui/player/service/OnlinePlayDeniedException;

    const-string v1, "online play not allow"

    invoke-direct {v0, v1}, Lcom/miui/player/service/OnlinePlayDeniedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1849
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    .line 1856
    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;J)V

    goto :goto_0
.end method

.method private open(Ljava/lang/String;Z)V
    .locals 9
    .parameter "path"
    .parameter "isFirst"

    .prologue
    .line 1391
    monitor-enter p0

    .line 1392
    if-nez p1, :cond_0

    .line 1393
    :try_start_0
    monitor-exit p0

    .line 1415
    :goto_0
    return-void

    .line 1396
    :cond_0
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1397
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->canPlay(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 1400
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->resetBufferingPath(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1402
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->getNextId()J

    move-result-wide v3

    .line 1403
    .local v3, nextId:J
    iget-object v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;-><init>(Lcom/miui/player/service/MediaPlaybackService;ZJLjava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->prepare(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1404
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1406
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v6

    .line 1407
    .local v6, onlineId:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1408
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->postLocalPlayStatus(Landroid/content/Context;)V

    .line 1414
    .end local v3           #nextId:J
    .end local v6           #onlineId:Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1411
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->stop()V

    .line 1412
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private openCurrent(Z)V
    .locals 7
    .parameter

    .prologue
    .line 1345
    monitor-enter p0

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1351
    :cond_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1352
    monitor-exit p0

    .line 1383
    :goto_0
    return-void

    .line 1355
    :cond_1
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1356
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1360
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1361
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1362
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    :goto_1
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1373
    if-nez p1, :cond_4

    .line 1374
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->accumulateCurrent()V

    .line 1376
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/miui/player/service/MediaPlaybackService;->open(Ljava/lang/String;Z)V

    .line 1377
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    .line 1382
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 1366
    :cond_5
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1379
    :cond_6
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query nowplaying cursor failed! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v4, 0x0

    .line 2146
    monitor-enter p0

    .line 2147
    if-ge p2, p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 2185
    :goto_0
    return v4

    .line 2148
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 2149
    :cond_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_2

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v4, -0x1

    .line 2151
    :cond_2
    const/4 v0, 0x0

    .line 2152
    .local v0, gotonext:Z
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_4

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_4

    .line 2153
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2154
    const/4 v0, 0x1

    .line 2158
    :cond_3
    :goto_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    add-int/lit8 v2, v4, -0x1

    .line 2159
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 2160
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 2159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2155
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_4
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_3

    .line 2156
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2186
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2162
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_5
    :try_start_1
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 2164
    if-eqz v0, :cond_7

    .line 2165
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_8

    .line 2166
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2167
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2168
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_6

    .line 2169
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2170
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2183
    :cond_6
    :goto_3
    const-string v4, "meta_changed_track"

    invoke-virtual {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 2185
    :cond_7
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2173
    :cond_8
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_9

    .line 2174
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2176
    :cond_9
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 2177
    .local v3, wasPlaying:Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2178
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 2179
    if-eqz v3, :cond_6

    .line 2180
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2588
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    invoke-direct {v0}, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;-><init>()V

    .line 2589
    const-string v1, "display_album"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2605
    :cond_0
    :goto_0
    return-object v0

    .line 2592
    :cond_1
    const-string v1, "android_album"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2593
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumId()J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/miui/player/meta/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    .line 2595
    :cond_2
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 2596
    invoke-virtual {p0, p2, p3}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2597
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 2599
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    .line 2602
    :cond_3
    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/miui/player/service/MediaPlaybackService$AlbumSource;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->needSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2603
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/service/MediaPlaybackService;->downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method accumulateCurrent()V
    .locals 4

    .prologue
    .line 1480
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v3, :cond_0

    .line 1481
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v2, v3

    .line 1482
    .local v0, audioId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/player/provider/StatisticsHelper;->accumulate(Landroid/content/Context;JLjava/lang/String;)Landroid/net/Uri;

    .line 1486
    .end local v0           #audioId:J
    :cond_0
    return-void
.end method

.method public addToCurrentPlaylist([JI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2802
    if-nez p1, :cond_0

    .line 2815
    :goto_0
    return-void

    .line 2805
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    .line 2806
    if-eqz v0, :cond_1

    .line 2807
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 2808
    invoke-static {v0, p1}, Lcom/miui/player/util/SqlUtils;->differenceSet([J[J)[J

    move-result-object p1

    .line 2811
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->enqueue([JI)V

    .line 2812
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    array-length v2, p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2814
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 893
    invoke-virtual {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 894
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 895
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    .line 2412
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1149
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    monitor-enter p0

    .line 1154
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_4

    .line 1155
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 1156
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1169
    :cond_2
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_3

    .line 1170
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1171
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1172
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1173
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1175
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1159
    :cond_4
    const v0, 0x7fffffff

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 1160
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1161
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1162
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1163
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1164
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1165
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2265
    monitor-enter p0

    .line 2266
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 2267
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    :goto_0
    return-object v0

    .line 2270
    :cond_0
    const/4 v0, 0x0

    .line 2272
    .local v0, ret:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2273
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2278
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2279
    .end local v0           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2275
    .restart local v0       #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 2506
    const/4 v0, 0x0

    .line 2507
    .local v0, albumFile:Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2508
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/miui/player/meta/MetaManager;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2510
    :cond_1
    return-object v0
.end method

.method public getAlbumId()J
    .locals 5

    .prologue
    .line 2368
    monitor-enter p0

    .line 2369
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2370
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    :goto_0
    return-wide v0

    .line 2373
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2375
    .local v0, albumId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2379
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2380
    .end local v0           #albumId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2376
    .restart local v0       #albumId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2358
    monitor-enter p0

    .line 2359
    const/4 v0, 0x0

    .line 2360
    .local v0, raw:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2361
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2363
    :cond_0
    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2364
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArtistId()J
    .locals 5

    .prologue
    .line 2341
    monitor-enter p0

    .line 2342
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2343
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    :goto_0
    return-wide v0

    .line 2346
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2348
    .local v0, artistId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "artist_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2353
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2354
    .end local v0           #artistId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2349
    .restart local v0       #artistId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2331
    monitor-enter p0

    .line 2332
    const/4 v0, 0x0

    .line 2333
    .local v0, raw:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2334
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2336
    :cond_0
    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2337
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2297
    monitor-enter p0

    .line 2298
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 2302
    :goto_0
    return-wide v0

    .line 2301
    :cond_0
    monitor-exit p0

    .line 2302
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioIdByPos(I)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 2393
    monitor-enter p0

    .line 2394
    const-wide/16 v0, -0x1

    .line 2395
    .local v0, id:J
    if-ltz p1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge p1, v2, :cond_0

    .line 2396
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v0, v2, p1

    .line 2399
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 2400
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2447
    monitor-enter p0

    .line 2448
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferedPercent()F
    .locals 1

    .prologue
    .line 2475
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2479
    :goto_0
    return v0

    .line 2476
    :catch_0
    move-exception v0

    .line 2479
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 2466
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 2470
    :goto_0
    return-wide v0

    .line 2467
    :catch_0
    move-exception v0

    .line 2470
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricStatus()I
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->status()I

    move-result v0

    return v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2483
    monitor-enter p0

    .line 2484
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2485
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    :goto_0
    return-object v1

    .line 2488
    :cond_0
    const/4 v1, 0x0

    .line 2490
    .local v1, ret:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "online_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2491
    .local v0, col:I
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2495
    .end local v0           #col:I
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2496
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2492
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->getPlayingFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1324
    monitor-enter p0

    .line 1325
    :try_start_0
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1326
    .local v1, len:I
    new-array v2, v1, [J

    .line 1327
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1328
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1331
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2310
    monitor-enter p0

    .line 2311
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 1335
    monitor-enter p0

    .line 1336
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    monitor-exit p0

    return v0

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2248
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2231
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2384
    monitor-enter p0

    .line 2385
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2386
    const/4 v0, 0x0

    monitor-exit p0

    .line 2388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUpdateVersion()I
    .locals 1

    .prologue
    .line 2518
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUpdateVersion:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method loopCheck(Landroid/os/Handler;IILcom/miui/player/service/MediaPlaybackService$CheckAction;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 981
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop checking: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-interface {p4}, Lcom/miui/player/service/MediaPlaybackService$CheckAction;->handle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 986
    add-int/lit8 v0, p3, -0x1

    .line 987
    if-lez v0, :cond_0

    .line 988
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 989
    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop check success: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveQueueItem(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v0, :cond_7

    .line 1287
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v0, -0x1

    .line 1289
    :goto_0
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v0, :cond_0

    .line 1290
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 p2, v0, -0x1

    .line 1292
    :cond_0
    if-ge v1, p2, :cond_4

    .line 1293
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1294
    :goto_1
    if-ge v0, p2, :cond_1

    .line 1295
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v0

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1298
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_3

    .line 1299
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1315
    :cond_2
    :goto_2
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1316
    monitor-exit p0

    .line 1317
    return-void

    .line 1300
    :cond_3
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v0, p2, :cond_2

    .line 1301
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1303
    :cond_4
    if-ge p2, v1, :cond_2

    .line 1304
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v0, v1

    move v0, v1

    .line 1305
    :goto_3
    if-le v0, p2, :cond_5

    .line 1306
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v0

    .line 1305
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1308
    :cond_5
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v2, v0, p2

    .line 1309
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v0, v1, :cond_6

    .line 1310
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1311
    :cond_6
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lt v0, p2, :cond_2

    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gt v0, v1, :cond_2

    .line 1312
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_7
    move v1, p1

    goto :goto_0
.end method

.method public needSearch()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2574
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2584
    :goto_0
    return v3

    .line 2577
    :cond_0
    const/4 v2, 0x0

    .line 2578
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2579
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2580
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2581
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v2, v3

    .end local v0           #f:Ljava/io/File;
    :cond_1
    :goto_1
    move v3, v2

    .line 2584
    goto :goto_0

    .line 2581
    .restart local v0       #f:Ljava/io/File;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1993
    monitor-enter p0

    .line 1994
    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v2, :cond_0

    .line 1995
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1996
    monitor-exit p0

    .line 2032
    :goto_0
    return-void

    .line 2000
    :cond_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v2, v0, :cond_3

    .line 2001
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v2}, Lcom/miui/player/service/ShuffleTracer;->getTracer()I

    move-result v2

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v2, v3}, Lcom/miui/player/service/ShuffleTracer;->randNext(II)I

    move-result v0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    move v0, v1

    .line 2020
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 2021
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 2022
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2024
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 2031
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2008
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_6

    .line 2010
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_2

    .line 2012
    :cond_4
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-eqz v0, :cond_5

    if-eqz p1, :cond_7

    .line 2013
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    move v0, v1

    goto :goto_1

    .line 2016
    :cond_6
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 2026
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2027
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 2028
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 2029
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method notifyChange(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1090
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1091
    return-void
.end method

.method notifyMetaChange(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1086
    const-string v0, "com.miui.player.metachanged"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1087
    return-void
.end method

.method notifyMetaChange(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1082
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 734
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 482
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 483
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->registerMediaButtonReceiver(Landroid/content/Context;)V

    .line 484
    new-instance v10, Lcom/miui/player/service/ShakeListener;

    invoke-direct {v10, p0}, Lcom/miui/player/service/ShakeListener;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    .line 485
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v10}, Lcom/miui/player/service/ShakeListener;->initialize()V

    .line 487
    const-string v10, "power"

    invoke-virtual {p0, v10}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 488
    .local v5, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v13, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 489
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 491
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    iput-boolean v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenOn:Z

    .line 492
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    .local v7, screenFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v7}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 498
    .local v9, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v10

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 499
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 500
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 502
    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->getCardId(Landroid/content/Context;)I

    move-result v10

    iput v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 504
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->registerExternalStorageListener()V

    .line 507
    new-instance v10, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v10, p0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    .line 508
    new-instance v10, Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v10, v11, v12}, Lcom/miui/player/service/AsyncMusicPlayer;-><init>(Ljava/lang/String;Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;)V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    .line 510
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 511
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 512
    .local v1, equalizerConf:I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_0

    .line 513
    invoke-static {p0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v3

    .line 514
    .local v3, levels:[I
    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->updateEqualizerBands([I)V

    .line 518
    .end local v1           #equalizerConf:I
    .end local v3           #levels:[I
    :cond_0
    invoke-virtual {p0, v13}, Lcom/miui/player/service/MediaPlaybackService;->reloadQueue(Z)V

    .line 519
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v10, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v10, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v10, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v10, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v10, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v10, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v10, "com.miui.player.updateshake"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v10, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v10, "com.miui.player.seek"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 533
    .local v6, quitFilter:Landroid/content/IntentFilter;
    const-string v10, "com.miui.player.QUIT"

    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v6}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 537
    .local v2, id3ChangedFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v10, "file"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 540
    new-instance v10, Lcom/miui/player/service/LockScreenListener;

    invoke-direct {v10}, Lcom/miui/player/service/LockScreenListener;-><init>()V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    .line 541
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v10, p0}, Lcom/miui/player/service/LockScreenListener;->registerScreenlock(Lcom/miui/player/service/MediaPlaybackService;)V

    .line 543
    new-instance v10, Lcom/miui/player/service/ConnectionListener;

    invoke-direct {v10}, Lcom/miui/player/service/ConnectionListener;-><init>()V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    .line 544
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    invoke-virtual {v10, p0}, Lcom/miui/player/service/ConnectionListener;->registerConnReceiver(Lcom/miui/player/service/MediaPlaybackService;)V

    .line 548
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 549
    .local v4, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v11, 0xea60

    invoke-virtual {v10, v4, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    new-instance v10, Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;-><init>(Lcom/miui/player/service/MediaPlaybackService;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaProviderObserver:Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;

    .line 552
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v12, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaProviderObserver:Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 555
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->postUserStart(Landroid/content/Context;)V

    .line 557
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mAsynInitializeWorker:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 559
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 560
    .local v8, tm:Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/miui/player/service/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 561
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 582
    invoke-virtual {p0, v6, v6}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 583
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->unregisterMediaButtonReceiver(Landroid/content/Context;)V

    .line 585
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 586
    .local v0, am:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 589
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "Service being destroyed while still playing."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/service/AsyncMusicPlayer;->stop(Z)V

    .line 596
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 599
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 601
    iput-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 605
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 607
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v2}, Lcom/miui/player/service/LockScreenListener;->unregisterScreenlock()V

    .line 608
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mConnectionListener:Lcom/miui/player/service/ConnectionListener;

    invoke-virtual {v2}, Lcom/miui/player/service/ConnectionListener;->unregisterConnReceiver()V

    .line 609
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 611
    iput-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    :cond_2
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v2}, Lcom/miui/player/service/ShakeListener;->release()V

    .line 616
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 619
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 620
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wakelock release  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 624
    :cond_3
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/player/service/AsyncMusicPlayer;->release(Landroid/content/Context;)V

    .line 626
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaProviderObserver:Lcom/miui/player/service/MediaPlaybackService$MediaProviderObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 628
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 629
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 630
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 631
    return-void
.end method

.method onPlayStateChanged(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 2529
    if-eqz p1, :cond_3

    .line 2530
    invoke-static {p0}, Lcom/miui/player/service/ServiceHelper;->registerMediaButtonReceiver(Landroid/content/Context;)V

    .line 2531
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2532
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2533
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2534
    sget-object v0, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakelock acquire "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScreenOn:Z

    if-nez v0, :cond_1

    const-string v0, "shake_while_screen_on"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2539
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/ShakeListener;->register()V

    .line 2549
    :cond_2
    :goto_0
    return-void

    .line 2542
    :cond_3
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2543
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2544
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2547
    :cond_4
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/ShakeListener;->unregister()V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 741
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const-wide/16 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 745
    iput p3, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    .line 746
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 748
    if-eqz p1, :cond_1

    .line 749
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 750
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    sget-object v4, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v5, "onStartCommand=%s, cmd=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v1

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    const-string v4, "next"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 754
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 833
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 836
    return v9

    .line 755
    :cond_2
    const-string v4, "previous"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 756
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 757
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 759
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 761
    :cond_5
    const-string v4, "togglepause"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "service.togglepause.unremove_notification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 764
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 765
    const-string v3, "service.togglepause.unremove_notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->pause(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    .line 767
    :cond_8
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 769
    :cond_9
    const-string v4, "pause"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 770
    :cond_a
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 771
    :cond_b
    const-string v4, "play"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 772
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 773
    :cond_c
    const-string v4, "stop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 774
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 775
    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 776
    :cond_d
    const-string v4, "com.miui.player.requestprogress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 777
    const-string v0, "com.miui.player.refreshprogress"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 778
    :cond_e
    const-string v4, "com.miui.player.togglefavorite"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 779
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    .line 780
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->getFavoritePlaylistId(Landroid/content/Context;)J

    move-result-wide v4

    .line 781
    cmp-long v6, v2, v7

    if-ltz v6, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v2, v3, v6}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 783
    new-array v0, v0, [J

    aput-wide v2, v0, v1

    invoke-static {p0, v0, v4, v5}, Lcom/miui/player/provider/PlaylistHelper;->removeMembers(Landroid/content/Context;[JJ)I

    goto/16 :goto_0

    .line 785
    :cond_f
    new-array v0, v0, [J

    aput-wide v2, v0, v1

    invoke-static {p0, v0, v4, v5, v1}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto/16 :goto_0

    .line 788
    :cond_10
    const-string v4, "com.miui.player.requestfavorite"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 789
    const-string v0, "com.miui.player.responsefavorite"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 790
    :cond_11
    const-string v4, "com.miui.player.requeststatus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 791
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 792
    :cond_12
    const-string v4, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 793
    const-string v1, "lyric"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 794
    const-string v1, "meta_changed_lyric"

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 795
    :cond_13
    const-string v1, "album"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 796
    const-string v1, "meta_changed_album"

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 797
    :cond_14
    const-string v1, "track"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 800
    :cond_15
    const-string v0, "com.miui.player.updateshake"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 801
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/service/ShakeListener;->onUpdatePref()V

    goto/16 :goto_0

    .line 802
    :cond_16
    const-string v0, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 803
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->quit()V

    goto/16 :goto_0

    .line 804
    :cond_17
    const-string v0, "com.miui.player.MUSIC_META"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 805
    const-string v0, "callback_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v2, "callback_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 807
    if-eqz v0, :cond_18

    if-eqz v2, :cond_18

    .line 808
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCallback:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 811
    :cond_18
    const-string v0, "music_meta_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_1

    .line 813
    array-length v2, v0

    new-array v2, v2, [Lmiui/provider/MusicSearchProvider$MusicMeta;

    .line 814
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    const-string v0, "music_meta_append"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 816
    const-string v3, "music_meta_data_pos"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 817
    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->playAll([Lmiui/provider/MusicSearchProvider$MusicMeta;IZ)V

    goto/16 :goto_0

    .line 819
    :cond_19
    const-string v0, "com.miui.player.remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    const-string v0, "remove_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 821
    cmp-long v2, v0, v7

    if-gez v2, :cond_1a

    .line 822
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 825
    :cond_1a
    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    .line 826
    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 841
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    .line 844
    invoke-virtual {p0, v4}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 846
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->isEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v4

    .line 855
    :cond_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    :cond_2
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 862
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method

.method public open([JI)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1239
    monitor-enter p0

    .line 1240
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 1241
    array-length v5, p1

    .line 1243
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ne v2, v5, :cond_0

    move v2, v1

    .line 1246
    :goto_0
    if-ge v2, v5, :cond_6

    .line 1247
    aget-wide v6, p1, v2

    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v8, v8, v2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1253
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 1254
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/player/service/MediaPlaybackService;->addToPlayList([JI)V

    .line 1257
    :cond_1
    if-ltz p2, :cond_5

    .line 1258
    iput p2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1262
    :goto_2
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v1}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 1265
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1266
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1268
    if-eqz v0, :cond_2

    .line 1269
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1271
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3

    .line 1272
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1275
    :cond_3
    monitor-exit p0

    return v0

    .line 1246
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1260
    :cond_5
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mRandom:Ljava/util/Random;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_2

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method openCurrent()V
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 1342
    return-void
.end method

.method public openList([JIZLjava/lang/String;)Z
    .locals 1
    .parameter "list"
    .parameter "position"
    .parameter "forceShuffle"
    .parameter "channelName"

    .prologue
    .line 1226
    invoke-direct {p0, p3, p4}, Lcom/miui/player/service/MediaPlaybackService;->adjustShuffleMode(ZLjava/lang/String;)Z

    move-result p3

    .line 1227
    iput-object p4, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    .line 1228
    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .end local p2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->open([JI)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1912
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->pause(Z)V

    .line 1913
    return-void
.end method

.method public pause(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1916
    monitor-enter p0

    .line 1917
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->clear()V

    .line 1918
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->pause()V

    .line 1920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1921
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1922
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1923
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1926
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1927
    monitor-exit p0

    .line 1928
    return-void

    .line 1927
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1492
    invoke-static {v1}, Lcom/miui/player/receiver/MediaButtonIntentReceiver;->setOneShot(Z)V

    .line 1493
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    .line 1496
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    iput-boolean v3, v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1498
    invoke-virtual {p0, v3, v3}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1504
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1505
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1506
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1509
    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_1

    .line 1510
    iput-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1511
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1513
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/player/service/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1514
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    .line 1530
    :goto_1
    return-void

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->start()V

    .line 1502
    invoke-virtual {p0, v3, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_0

    .line 1519
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->isAllOnline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1520
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1521
    const v0, 0x7f090005

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1523
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 1524
    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 1525
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1527
    :cond_5
    invoke-direct {p0}, Lcom/miui/player/service/MediaPlaybackService;->makeAllShuffleList()Z

    goto :goto_1
.end method

.method public playAll([JIZIZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 2819
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 2820
    :cond_0
    sget-object v1, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v2, "attempt to play empty song list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const v1, 0x7f090068

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2823
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2866
    :goto_0
    return-void

    .line 2828
    :cond_1
    invoke-direct {p0, p3, p6}, Lcom/miui/player/service/MediaPlaybackService;->adjustShuffleMode(ZLjava/lang/String;)Z

    move-result v6

    .line 2829
    iput-object p6, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    .line 2831
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    .line 2832
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getQueuePosition()I

    move-result v3

    .line 2833
    if-nez p5, :cond_2

    if-eq p2, v5, :cond_2

    if-ne v3, p2, :cond_2

    aget-wide v3, p1, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2837
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getQueue()[J

    move-result-object v1

    .line 2838
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2840
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 2841
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto :goto_0

    .line 2845
    :cond_2
    if-gez p2, :cond_3

    move p2, v0

    .line 2849
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getQueue()[J

    move-result-object v1

    .line 2850
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 2851
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 2853
    if-nez p5, :cond_4

    .line 2854
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->moveNowplayingOnlineToHistory(Landroid/content/Context;)V

    .line 2857
    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;[JZ)[J

    move-result-object p1

    .line 2860
    :cond_4
    if-eqz v6, :cond_5

    move p2, v5

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->open([JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2861
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v0, p0

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/player/service/HistoryManager;->shift(Landroid/content/Context;[JIJLandroid/content/SharedPreferences;I)Z

    .line 2865
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0
.end method

.method playAll([Lmiui/provider/MusicSearchProvider$MusicMeta;IZ)V
    .locals 7
    .parameter "data"
    .parameter "pos"
    .parameter "append"

    .prologue
    .line 2788
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2792
    :cond_1
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->moveNowplayingOnlineToHistory(Landroid/content/Context;)V

    .line 2793
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Z)[J

    move-result-object v1

    .line 2794
    .local v1, list:[J
    if-eqz p3, :cond_2

    .line 2795
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->addToCurrentPlaylist([JI)V

    goto :goto_0

    .line 2797
    :cond_2
    const/4 v3, 0x0

    sget v4, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/service/MediaPlaybackService;->playAll([JIZIZLjava/lang/String;)V

    goto :goto_0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->position()J

    move-result-wide v0

    .line 2422
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1964
    monitor-enter p0

    .line 1965
    :try_start_0
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v2, :cond_2

    .line 1968
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/service/ShuffleTracer;->back(II)I

    move-result v0

    .line 1969
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 1971
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    .line 1972
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1973
    monitor-exit p0

    .line 1990
    .end local v0           #pos:I
    :goto_0
    return-void

    .line 1975
    .restart local v0       #pos:I
    :cond_0
    iput v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1985
    .end local v0           #pos:I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1986
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 1987
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1988
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1989
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1977
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-lez v1, :cond_3

    .line 1978
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 1981
    :cond_3
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_1

    .line 1982
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public quit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1896
    invoke-virtual {p0, v2}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 1899
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 1902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.kill_process"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1905
    const/4 v0, 0x2

    const/16 v1, 0x1388

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1906
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$10;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$10;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 922
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    :cond_0
    return-void
.end method

.method reloadQueue(Z)V
    .locals 9
    .parameter "loopCheck"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 664
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v3}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 669
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "channel_name"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    .line 671
    iget v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    .line 672
    .local v0, id:I
    const-string v3, "cardid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    const-string v3, "cardid"

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 676
    :cond_2
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    if-ne v0, v3, :cond_6

    .line 679
    invoke-static {v2, v7}, Lcom/miui/player/service/HistoryManager;->load(Landroid/content/SharedPreferences;I)[J

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    .line 680
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 681
    invoke-static {v2, v7}, Lcom/miui/player/service/HistoryManager;->loadPostion(Landroid/content/SharedPreferences;I)I

    move-result v1

    .line 682
    .local v1, pos:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v1, v3, :cond_4

    .line 684
    :cond_3
    iput v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    goto :goto_0

    .line 687
    :cond_4
    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 689
    const-string v3, "repeatmode"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    .line 690
    const-string v3, "shufflemode"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    .line 692
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    if-ne v3, v8, :cond_5

    .line 694
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v3, v2, v4}, Lcom/miui/player/service/ShuffleTracer;->load(Landroid/content/SharedPreferences;I)V

    .line 702
    :cond_5
    if-eqz p1, :cond_6

    .line 703
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const/16 v5, 0xa

    new-instance v6, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;

    invoke-direct {v6, p0}, Lcom/miui/player/service/MediaPlaybackService$MediaProviderCheck;-><init>(Lcom/miui/player/service/MediaPlaybackService;)V

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->loopCheck(Landroid/os/Handler;IILcom/miui/player/service/MediaPlaybackService$CheckAction;)V

    .line 717
    .end local v1           #pos:I
    :cond_6
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v3}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 718
    const/16 v3, 0x14

    iput v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 719
    invoke-direct {p0, v8}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 720
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v3}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 722
    sget-object v3, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v4, "player initialize failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iput v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    goto/16 :goto_0

    .line 725
    :cond_7
    const-string v3, "meta_changed_track"

    invoke-virtual {p0, v3}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removeTrack(J)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2196
    .line 2197
    monitor-enter p0

    move v1, v0

    .line 2198
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v2, :cond_1

    .line 2199
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2200
    invoke-direct {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 2201
    add-int/lit8 v0, v0, -0x1

    .line 2198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2205
    if-lez v1, :cond_2

    .line 2206
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2208
    :cond_2
    return v1

    .line 2204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeTracks(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2138
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v0

    .line 2139
    if-lez v0, :cond_0

    .line 2140
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2142
    :cond_0
    return v0
.end method

.method public removeTracks([I)I
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2054
    monitor-enter p0

    .line 2055
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    if-nez v0, :cond_0

    .line 2056
    monitor-exit p0

    move v0, v4

    .line 2125
    :goto_0
    return v0

    .line 2059
    :cond_0
    array-length v6, p1

    .line 2060
    if-gtz v6, :cond_1

    .line 2061
    monitor-exit p0

    move v0, v4

    goto :goto_0

    :cond_1
    move v5, v4

    move v0, v4

    move v1, v4

    move v2, v4

    .line 2067
    :goto_1
    if-ge v5, v6, :cond_2

    .line 2068
    aget v7, p1, v5

    .line 2069
    if-gez v7, :cond_3

    .line 2084
    :cond_2
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, v3, v0

    move v3, v4

    .line 2085
    :goto_2
    if-ge v4, v5, :cond_8

    .line 2086
    :goto_3
    add-int v6, v4, v3

    iget v7, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gt v6, v7, :cond_6

    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v7, v4, v3

    aget-wide v6, v6, v7

    cmp-long v6, v6, v11

    if-gez v6, :cond_6

    .line 2087
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2072
    :cond_3
    iget v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v7, v8, :cond_4

    .line 2073
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    const-wide/16 v9, -0x1

    aput-wide v9, v8, v7

    .line 2074
    add-int/lit8 v0, v0, 0x1

    .line 2075
    iget v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ge v7, v8, :cond_5

    .line 2076
    add-int/lit8 v1, v1, 0x1

    .line 2067
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2077
    :cond_5
    iget v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    if-ne v7, v8, :cond_4

    move v2, v3

    .line 2078
    goto :goto_4

    .line 2090
    :cond_6
    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    add-int v7, v4, v3

    aget-wide v6, v6, v7

    .line 2091
    cmp-long v8, v6, v11

    if-ltz v8, :cond_7

    .line 2092
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    aput-wide v6, v8, v4

    .line 2085
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    move v3, v5

    .line 2096
    :goto_5
    iget v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v3, v4, :cond_9

    .line 2097
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    .line 2096
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2100
    :cond_9
    iput v5, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    .line 2101
    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2103
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_c

    .line 2104
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2105
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2119
    :cond_a
    :goto_6
    if-lez v0, :cond_b

    .line 2120
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2121
    if-eqz v2, :cond_b

    .line 2122
    const-string v1, "meta_changed_track"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    .line 2125
    :cond_b
    monitor-exit p0

    goto/16 :goto_0

    .line 2126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2106
    :cond_c
    if-eqz v2, :cond_a

    .line 2107
    :try_start_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lt v1, v3, :cond_d

    .line 2108
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2111
    :cond_d
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v1

    .line 2112
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2113
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    .line 2114
    if-eqz v1, :cond_a

    .line 2115
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method requeryTrackInfo(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 414
    .local v0, position:I
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 415
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 418
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v1}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 419
    const-string v1, "meta_changed_track"

    invoke-virtual {p0, v1}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->updateNotificationBar()V

    .line 422
    .end local v0           #position:I
    :cond_0
    return-void
.end method

.method saveQueue(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v4, 0x0

    .line 636
    iget-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mQueueIsSaveable:Z

    if-nez v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayList:[J

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    invoke-static {v0, v4, v1, v2}, Lcom/miui/player/service/HistoryManager;->save(Landroid/content/SharedPreferences$Editor;I[JI)V

    .line 642
    const-string v1, "cardid"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCardId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    :cond_1
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 647
    iget v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-lez v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/miui/player/service/ShuffleTracer;->save(Landroid/content/SharedPreferences$Editor;IIZ)V

    .line 652
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    iget v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    invoke-static {v0, v4, v1, v2, v3}, Lcom/miui/player/service/HistoryManager;->savePosition(Landroid/content/SharedPreferences$Editor;IJI)V

    .line 654
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v1}, Lcom/miui/player/service/AsyncMusicPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    const-string v1, "seekpos"

    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 657
    :cond_3
    const-string v1, "repeatmode"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    const-string v1, "shufflemode"

    iget v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v1, "channel_name"

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mChannelName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 660
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public declared-synchronized scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "paths"
    .parameter "mimeTypes"

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mScanCompletedListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    invoke-static {p0, p1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2432
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2433
    const-wide/16 p1, 0x0

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2435
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->duration()J

    move-result-wide p1

    .line 2436
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/service/AsyncMusicPlayer;->seek(J)V

    move-wide v0, p1

    .line 2440
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 2320
    monitor-enter p0

    .line 2321
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/service/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/service/ShuffleTracer;->clear()V

    .line 2322
    iput p1, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayPos:I

    .line 2323
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 2324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent(Z)V

    .line 2325
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 2326
    const-string v0, "meta_changed_track"

    invoke-virtual {p0, v0}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 2327
    monitor-exit p0

    .line 2328
    return-void

    .line 2327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 2235
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->doSetRepeatMode(I)V

    .line 2236
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "repeatmode_bak"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2238
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 2212
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->doSetShuffleMode(I)V

    .line 2213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shufflemode_bak"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2215
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1888
    invoke-virtual {p0, v0, v0}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1889
    return-void
.end method

.method stop(ZZ)V
    .locals 3
    .parameter "removeStatusIcon"
    .parameter "removeNext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1870
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1871
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v0, p2}, Lcom/miui/player/service/AsyncMusicPlayer;->stop(Z)V

    .line 1874
    :cond_0
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1875
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1877
    iput-object v2, p0, Lcom/miui/player/service/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1879
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/player/service/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1880
    iput-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1881
    invoke-virtual {p0, v1, v1}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1882
    return-void
.end method

.method public updateEqualizerBands([I)V
    .locals 5
    .parameter "levels"

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2733
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerBands([S)V

    .line 2743
    :goto_0
    return-void

    .line 2737
    :cond_0
    array-length v1, p1

    .line 2738
    .local v1, len:I
    new-array v2, v1, [S

    .line 2739
    .local v2, tmp:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2740
    aget v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 2739
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2742
    :cond_1
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v3, v2}, Lcom/miui/player/service/AsyncMusicPlayer;->updateEqualizerBands([S)V

    goto :goto_0
.end method

.method updateMetaOnConnChanged(Z)V
    .locals 8
    .parameter "connection"

    .prologue
    const/4 v3, 0x0

    .line 2552
    if-eqz p1, :cond_1

    .line 2553
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    .line 2554
    .local v6, artistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 2555
    .local v5, albumName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 2556
    .local v4, trackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    invoke-virtual {v0}, Lcom/miui/player/service/LyricManager;->reset()V

    .line 2558
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService;->mLyricManager:Lcom/miui/player/service/LyricManager;

    new-instance v2, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;

    invoke-direct {v2, p0, v4, v6}, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;-><init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/miui/player/service/LyricManager;->updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2561
    :cond_0
    invoke-direct {p0, v4, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/service/MediaPlaybackService$AlbumSource;

    .line 2563
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicReporter;->postUserStart(Landroid/content/Context;)V

    .line 2565
    .end local v4           #trackName:Ljava/lang/String;
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method updateMiuiDBAfterID3Changed(Landroid/net/Uri;)V
    .locals 15
    .parameter "uri"

    .prologue
    .line 425
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 432
    .local v2, cols:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    .line 433
    .local v11, c:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 457
    :goto_0
    return-void

    .line 439
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 441
    .local v9, audioId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 443
    .local v14, where:Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 444
    .local v12, trackName:Ljava/lang/String;
    const-string v0, "artist"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, artistName:Ljava/lang/String;
    const-string v0, "album"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, albumName:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "album"

    invoke-virtual {v13, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "artist"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v0, "title"

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v14, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v7           #albumName:Ljava/lang/String;
    .end local v8           #artistName:Ljava/lang/String;
    .end local v9           #audioId:J
    .end local v12           #trackName:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v14           #where:Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method updateNotificationBar()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1564
    const v5, 0x7f0200ae

    .line 1567
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-gez v0, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1570
    const-string v0, ""

    .line 1588
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1589
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1591
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1593
    invoke-direct {p0, v5, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->createNotificationContent(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1594
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1595
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1596
    const/4 v0, 0x2

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->enqueueNotification(ILandroid/app/Notification;)V

    .line 1598
    return-void

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 1573
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1574
    invoke-virtual {p0}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1575
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1576
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1577
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1575
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1576
    goto :goto_2

    .line 1579
    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v3

    move-object v1, v4

    .line 1580
    goto :goto_0

    .line 1581
    :cond_4
    if-eqz v1, :cond_5

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v4

    goto/16 :goto_0

    .line 1584
    :cond_5
    const-string v0, ""

    move-object v1, v4

    goto/16 :goto_0
.end method
