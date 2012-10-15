.class public Lcom/miui/home/launcher/gadget/Player;
.super Landroid/widget/FrameLayout;
.source "Player.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Player$MusicUtils;,
        Lcom/miui/home/launcher/gadget/Player$FadeAnimation;,
        Lcom/miui/home/launcher/gadget/Player$AlbumHelper;,
        Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    }
.end annotation


# instance fields
.field private mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mAlbumWraper:Landroid/widget/FrameLayout;

.field private mArtistNameStr:Ljava/lang/String;

.field private mCachableWrap:Landroid/view/View;

.field private mChannelIcon:Landroid/widget/ImageView;

.field private mCurrentPos:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDuration:J

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsEditMode:Z

.field private mIsFavoriteSong:Z

.field private mIsPlaying:Z

.field private mIsResume:Z

.field private mIsUpdateLyricAndTime:Z

.field private mLastDownY:F

.field private mLastUpdateProgressTime:J

.field private mLastUpdateTime:J

.field private mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

.field private mLyricWraper:Landroid/widget/ScrollView;

.field private mNeedInitGadget:Z

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPlaylistIcon:Landroid/widget/ImageView;

.field private mPrevIcon:Landroid/widget/ImageView;

.field private mProgressBg:Landroid/widget/FrameLayout;

.field private mProgressCurrent:Landroid/widget/ImageView;

.field private mProgressLoading:Landroid/widget/ImageView;

.field private mResumeRunnable:Ljava/lang/Runnable;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSv:Lmiui/widget/SpectrumVisualizer;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:F

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackNameStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$1;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    .line 461
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$2;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    .line 472
    iput-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    .line 473
    iput-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    .line 522
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/Player$3;-><init>(Lcom/miui/home/launcher/gadget/Player;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->setupViews()V

    .line 87
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->initReceiver()V

    .line 89
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 90
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTouchSlop:F

    .line 92
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;-><init>(Lcom/miui/home/launcher/gadget/Player;Lcom/miui/home/launcher/gadget/Player$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    .line 93
    new-instance v1, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;-><init>(Lcom/miui/home/launcher/gadget/Player;Lcom/miui/home/launcher/gadget/Player$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    .line 94
    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateLyricAndTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/gadget/Player;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/gadget/Player;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->checkException(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateSongStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateTrack(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$AlbumHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/home/launcher/gadget/Player;)Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/miui/home/launcher/gadget/Player;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/home/launcher/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/miui/home/launcher/gadget/Player;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/miui/home/launcher/gadget/Player;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTouchSlop:F

    return v0
.end method

.method static synthetic access$4200(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/miui/home/launcher/gadget/Player;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/miui/home/launcher/gadget/Player;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/miui/home/launcher/gadget/Player;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    return-void
.end method

.method private checkException(Ljava/lang/String;)Z
    .locals 6
    .parameter "trackName"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, errorState:Ljava/lang/String;
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v3, 0x60c0038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 379
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->reset()V

    .line 382
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 383
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(J)V

    .line 384
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->clearup()V
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$1000(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V

    .line 385
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->reset()V
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$1100(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V

    .line 386
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 387
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 388
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    .line 389
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 392
    :goto_1
    return v1

    .line 375
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v3, 0x7f0c005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 242
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 243
    return-void
.end method

.method private initReceiver()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "com.miui.player.refreshprogress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 106
    return-void
.end method

.method private lyricAndTimeNextRefresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 500
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const-string v1, "-- : --"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iput-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 399
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 400
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 402
    iput-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iput-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    const v2, 0x7f07002b

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v1, 0x7f030019

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/gadget/Player;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPrevIcon:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlaylistIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mPlaylistIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    .line 133
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumWraper:Landroid/widget/FrameLayout;

    .line 134
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 139
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SpectrumVisualizer;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    .line 140
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    .line 143
    return-void
.end method

.method private showBuffering()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0068

    invoke-static {v1, v3, v4, v2}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-direct {p0, v3, v4}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 417
    return-void
.end method

.method private updateBufferedProgress(J)V
    .locals 5
    .parameter "bufferPos"

    .prologue
    .line 438
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 440
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 443
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateBufferedProgress(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 433
    const-string v2, "buffered_pos"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 434
    .local v0, bufferPos:J
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Player;->updateBufferedProgress(J)V

    .line 435
    return-void
.end method

.method private updateCurrentProgress(J)V
    .locals 5
    .parameter "pos"

    .prologue
    .line 449
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 451
    .local v0, progressLP:Landroid/view/ViewGroup$LayoutParams;
    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressBg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .end local v0           #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 454
    .restart local v0       #progressLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateDrawingCache()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 279
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 281
    :cond_1
    return-void

    .line 279
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLyricAndTime()V
    .locals 6

    .prologue
    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    iget-wide v3, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->scrollLyric(J)V
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$1300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;J)V

    .line 479
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 480
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 481
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    iget-wide v4, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 482
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 485
    :cond_1
    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-eqz v2, :cond_3

    .line 486
    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 487
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateProgressBarAndTime()V

    .line 488
    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateProgressTime:J

    .line 490
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->lyricAndTimeNextRefresh()V

    .line 491
    iput-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastUpdateTime:J

    goto :goto_0
.end method

.method private updateMetaStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f020054

    const v4, 0x7f020053

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, metaStatus:I
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->hasAlbum()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$700(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    or-int/lit8 v0, v0, 0x2

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->hasLyric()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$800(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    or-int/lit8 v0, v0, 0x1

    .line 312
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_2
    return-void

    .line 303
    :cond_0
    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 310
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 314
    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 319
    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 324
    :pswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$900(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 329
    :pswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricWraper:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$900(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProgressBarAndTime()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const v6, 0x7f0c0068

    const-wide/16 v4, 0x3e8

    .line 511
    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    add-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3, v6}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-wide v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 520
    :cond_0
    return-void
.end method

.method private updateSongStatus(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 337
    const-string v8, "position"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 339
    .local v1, currentTime:J
    const-string v8, "time_stamp"

    invoke-virtual {p1, v8, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 340
    .local v6, time:J
    iget-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    sub-long v10, v1, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mCurrentPos:J

    .line 341
    const-string v8, "duration"

    const-wide/16 v9, -0x1

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    .line 342
    const-string v8, "playing"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    .line 343
    iget-object v9, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_1

    const v8, 0x7f0200ae

    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    const-string v8, "favorite"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 347
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 348
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 351
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const-string v8, "buffering"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 354
    .local v4, isBuffering:Z
    const-string v8, "blocking"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 355
    .local v3, isBlocking:Z
    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    .line 357
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 358
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    .line 360
    const/16 v0, 0x64

    .line 361
    .local v0, MAX_INVALID_DURATION:I
    if-nez v4, :cond_0

    iget-wide v8, p0, Lcom/miui/home/launcher/gadget/Player;->mDuration:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    :cond_0
    iget-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    if-nez v8, :cond_3

    const/4 v5, 0x1

    .line 362
    .local v5, isShowBuffering:Z
    :goto_2
    if-eqz v5, :cond_4

    .line 363
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->showBuffering()V

    .line 367
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    .line 368
    return-void

    .line 343
    .end local v0           #MAX_INVALID_DURATION:I
    .end local v3           #isBlocking:Z
    .end local v4           #isBuffering:Z
    .end local v5           #isShowBuffering:Z
    :cond_1
    const v8, 0x7f0200b2

    goto :goto_0

    .line 355
    .restart local v3       #isBlocking:Z
    .restart local v4       #isBuffering:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 361
    .restart local v0       #MAX_INVALID_DURATION:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 365
    .restart local v5       #isShowBuffering:Z
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateProgressBarAndTime()V

    goto :goto_3
.end method

.method private updateSpectrumVisualizer()V
    .locals 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsUpdateLyricAndTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v0}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mSv:Lmiui/widget/SpectrumVisualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_0
.end method

.method private updateTrack(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    .line 423
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mArtistNameStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 425
    .local v0, ar:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/gadget/Player$MusicUtils;->getTrackInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressCurrent:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mProgressLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/gadget/Player;->updateCurrentProgress(J)V

    .line 430
    return-void
.end method


# virtual methods
.method public onAdded()V
    .locals 0

    .prologue
    .line 1209
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    if-eqz v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Player;->mTrackNameStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    :cond_2
    const/4 v0, 0x0

    .line 153
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 179
    :pswitch_1
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v1, :cond_4

    .line 180
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.NOWPLAYING_PLAYLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 166
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mPlayButton:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsPlaying:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0200b2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0200ae

    goto :goto_2

    .line 173
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 182
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MIUI_MUSIC_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 188
    :pswitch_6
    iget-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-nez v3, :cond_5

    :goto_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 189
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 190
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 188
    goto :goto_3

    .line 194
    :pswitch_7
    iget-boolean v3, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    if-nez v3, :cond_6

    :goto_4
    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    .line 195
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsFavoriteSong:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.miui.player.togglefavorite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 194
    goto :goto_4

    .line 153
    :pswitch_data_0
    .packed-switch 0x7f07002b
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->cleanup()V

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    return-void
.end method

.method public onEditDisable()V
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    .line 1197
    return-void
.end method

.method public onEditNormal()V
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Player;->mIsEditMode:Z

    .line 1203
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/gadget/Player;->mLastDownY:F

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->sendMessageIfNeeded(FF)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$300(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;FF)V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Player;->mLastDownY:F

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->cleanup()V

    .line 254
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/Player;->mIsResume:Z

    .line 259
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 260
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateDrawingCache()V

    .line 262
    iget-boolean v1, p0, Lcom/miui/home/launcher/gadget/Player;->mNeedInitGadget:Z

    if-eqz v1, :cond_1

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.requeststatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, initntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    .end local v0           #initntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mLyricScrollHelper:Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->lyricProgressRequest()V
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;->access$400(Lcom/miui/home/launcher/gadget/Player$LyricScrollHelper;)V

    .line 269
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getTrackChange()Z
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$500(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mAlbumHelper:Lcom/miui/home/launcher/gadget/Player$AlbumHelper;

    #calls: Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V
    invoke-static {v1}, Lcom/miui/home/launcher/gadget/Player$AlbumHelper;->access$600(Lcom/miui/home/launcher/gadget/Player$AlbumHelper;)V

    .line 273
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateMetaStatus()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mCachableWrap:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1187
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/Player;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Player;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/gadget/Player;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 221
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Player;->updateSpectrumVisualizer()V

    goto :goto_0
.end method

.method updateByChannel(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 589
    const-string v2, "channel_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 590
    .local v0, isChannel:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 591
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mPlaylistIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    :goto_1
    return-void

    .end local v0           #isChannel:Z
    :cond_0
    move v0, v1

    .line 589
    goto :goto_0

    .line 596
    .restart local v0       #isChannel:Z
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mChannelIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mPrevIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mPlaylistIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Player;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1192
    return-void
.end method
