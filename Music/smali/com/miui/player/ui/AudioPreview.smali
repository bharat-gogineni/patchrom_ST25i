.class public Lcom/miui/player/ui/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mLoadingText:Landroid/widget/TextView;

.field private mMetaInfoPanel:Landroid/view/View;

.field private mPlayPauseButton:Landroid/widget/ImageView;

.field private final mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeeking:Z

.field private mService:Lcom/miui/player/service/IAudioPreviewService;

.field final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/miui/player/ui/AudioPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/AudioPreview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 149
    new-instance v0, Lcom/miui/player/ui/AudioPreview$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AudioPreview$1;-><init>(Lcom/miui/player/ui/AudioPreview;)V

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v0, Lcom/miui/player/ui/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/AudioPreview$2;-><init>(Lcom/miui/player/ui/AudioPreview;)V

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeeking:Z

    return-void
.end method

.method private refreshProgress()V
    .locals 2

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeeking:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v1}, Lcom/miui/player/service/IAudioPreviewService;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private togglePause()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateStatus()V

    .line 340
    return-void

    .line 332
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 147
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/miui/player/ui/AudioPreview;->togglePause()V

    .line 345
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->setVolumeControlStream(I)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->requestWindowFeature(I)Z

    .line 67
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->setContentView(I)V

    .line 69
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mMetaInfoPanel:Landroid/view/View;

    .line 70
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 74
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 76
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/service/AudioPreviewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/player/service/AudioPreviewService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p0, v1}, Lcom/miui/player/ui/AudioPreview;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/AudioPreview;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/AudioPreview;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 94
    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    .line 95
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    iget-object v2, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/player/service/IAudioPreviewService;->prepareAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateStatus()V

    .line 104
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateMetaInfo()V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    .line 106
    return-void

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 281
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "oneshot_metainfo_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "oneshot_playstate_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "oneshot_prepared"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "oneshot_play_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateMetaInfo()V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    .line 128
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 297
    invoke-static {p2}, Lcom/miui/player/service/IAudioPreviewService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/service/IAudioPreviewService;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    .line 298
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->finish()V

    .line 318
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v3}, Lcom/miui/player/service/IAudioPreviewService;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 304
    .local v1, playUri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 305
    .local v0, newUri:Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 306
    iput-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    .line 312
    :goto_2
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateStatus()V

    .line 313
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->updateMetaInfo()V

    .line 314
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/AudioPreview;->queueNextRefresh(Z)V

    goto :goto_0

    .line 315
    .end local v0           #newUri:Landroid/net/Uri;
    .end local v1           #playUri:Landroid/net/Uri;
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 303
    .restart local v2       #str:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 308
    .restart local v0       #newUri:Landroid/net/Uri;
    .restart local v1       #playUri:Landroid/net/Uri;
    :cond_2
    iput-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    .line 309
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/miui/player/service/IAudioPreviewService;->prepareAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/miui/player/ui/AudioPreview;->finish()V

    .line 323
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "bar"

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeeking:Z

    .line 277
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/AudioPreview;->mSeeking:Z

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/player/service/IAudioPreviewService;->seek(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method queueNextRefresh(Z)V
    .locals 4
    .parameter "refresh"

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ui/AudioPreview;->refreshProgress()V

    .line 238
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v1}, Lcom/miui/player/service/IAudioPreviewService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 240
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method updateMetaInfo()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, loading:Z
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v5}, Lcom/miui/player/service/IAudioPreviewService;->isPrepared()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    move v0, v4

    .line 190
    :goto_0
    iget-object v5, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    if-eqz v0, :cond_4

    .line 192
    iget-object v5, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_1

    const-string v5, "http"

    iget-object v6, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    const v5, 0x7f0900b7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/player/ui/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/miui/player/ui/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mMetaInfoPanel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 223
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v3

    .line 186
    goto :goto_0

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mMetaInfoPanel:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v3, :cond_2

    .line 207
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v4}, Lcom/miui/player/service/IAudioPreviewService;->getPrimaryText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v3}, Lcom/miui/player/service/IAudioPreviewService;->getSecondaryText()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, secondary:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v4}, Lcom/miui/player/service/IAudioPreviewService;->duration()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 217
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v4}, Lcom/miui/player/service/IAudioPreviewService;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 218
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1

    .line 219
    .end local v2           #secondary:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 212
    .restart local v2       #secondary:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/miui/player/ui/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 187
    .end local v2           #secondary:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method

.method updateStatus()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mService:Lcom/miui/player/service/IAudioPreviewService;

    invoke-interface {v0}, Lcom/miui/player/service/IAudioPreviewService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/AudioPreview;->mPlayPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
