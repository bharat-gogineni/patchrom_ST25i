.class public Lcom/miui/player/ui/controller/ToolBarController;
.super Ljava/lang/Object;
.source "ToolBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

.field private final mDownloadIcon:Landroid/widget/ImageView;

.field private final mEqualizerIcon:Landroid/widget/ImageView;

.field private final mFavoriteIcon:Landroid/widget/ImageView;

.field private final mInfoIcon:Landroid/widget/ImageView;

.field private final mRepeatIcon:Landroid/widget/ImageView;

.field private final mShuffleIcon:Landroid/widget/ImageView;

.field private final mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/player/ui/controller/LyricViewController;)V
    .locals 3
    .parameter "container"
    .parameter "lyricView"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v1, Lcom/miui/player/ui/controller/ToolBarController$3;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/controller/ToolBarController$3;-><init>(Lcom/miui/player/ui/controller/ToolBarController;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    .line 58
    const v1, 0x7f0c0034

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    .line 66
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v1, Lcom/miui/player/ui/controller/TrackDetailController;

    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-direct {v1, p1, v2, p2}, Lcom/miui/player/ui/controller/TrackDetailController;-><init>(Landroid/view/View;Landroid/view/View;Lcom/miui/player/ui/controller/LyricViewController;)V

    iput-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    .line 82
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private refreshEqualizer()V
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mEqualizerIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshFavorite(Z)V
    .locals 2
    .parameter "favorite"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private refreshShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private toggleDownload()V
    .locals 6

    .prologue
    .line 259
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 261
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v1, :cond_0

    .line 262
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->newAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/Audio;

    move-result-object v0

    .line 268
    .local v0, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    if-eqz v0, :cond_0

    .line 269
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/miui/player/ui/controller/ToolBarController$2;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/controller/ToolBarController$2;-><init>(Lcom/miui/player/ui/controller/ToolBarController;)V

    invoke-static {v2, v0, v3}, Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private toggleEqualizer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/ToolBarController;->isEqualizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshEqualizer()V

    .line 193
    return-void

    .line 168
    :cond_0
    sget-boolean v0, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/miui/player/ui/controller/ToolBarController$1;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/controller/ToolBarController$1;-><init>(Lcom/miui/player/ui/controller/ToolBarController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private toggleFavorite()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/player/ui/UIHelper;->toggleCurrentAudioFavorite(Landroid/content/Context;)Z

    move-result v0

    .line 161
    .local v0, favorite:Z
    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshFavorite(Z)V

    .line 162
    return-void
.end method

.method private toggleInfo()V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/TrackDetailController;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 156
    .local v0, visible:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/TrackDetailController;->setVisible(Z)V

    .line 157
    return-void

    .line 155
    .end local v0           #visible:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleRepeat()V
    .locals 3

    .prologue
    .line 196
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 197
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x3

    .line 203
    .local v0, mode:I
    invoke-interface {v1, v0}, Lcom/miui/player/service/IMediaPlaybackService;->setRepeatMode(I)V

    .line 204
    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0           #mode:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private toggleShuffle()V
    .locals 3

    .prologue
    .line 210
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 211
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getShuffleMode()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 217
    .local v0, mode:I
    invoke-interface {v1, v0}, Lcom/miui/player/service/IMediaPlaybackService;->setShuffleMode(I)V

    .line 218
    invoke-direct {p0, v0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v0           #mode:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method downloadRefresh()V
    .locals 7

    .prologue
    .line 333
    const/4 v4, 0x0

    .line 334
    .local v4, status:I
    sget-object v3, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 335
    .local v3, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v3, :cond_0

    .line 336
    const/4 v2, 0x0

    .line 338
    .local v2, onlineId:Ljava/lang/String;
    :try_start_0
    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    .line 339
    iget-object v6, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/miui/player/network/DownloadInfoManager;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    const/4 v4, 0x1

    .line 357
    .end local v2           #onlineId:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/controller/ToolBarController;->downloadRefresh(I)V

    .line 358
    return-void

    .line 342
    .restart local v2       #onlineId:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, tr:Ljava/lang/String;
    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, ar:Ljava/lang/String;
    const-string v6, "mp3"

    invoke-static {v5, v0, v6}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 346
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 347
    const/4 v4, 0x2

    goto :goto_0

    .line 349
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 353
    .end local v0           #ar:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    .end local v5           #tr:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method downloadRefresh(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 303
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 304
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    const/4 v0, 0x0

    .line 306
    .local v0, isOnline:Z
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 312
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    :goto_1
    return-void

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 320
    :pswitch_0
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 323
    :pswitch_1
    iget-object v2, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 309
    :catch_0
    move-exception v2

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEqualizerEnabled()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleInfo()V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleEqualizer()V

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleFavorite()V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleRepeat()V

    goto :goto_0

    .line 145
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleShuffle()V

    goto :goto_0

    .line 148
    :pswitch_5
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->toggleDownload()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0c008a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .prologue
    .line 94
    iget-object v3, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v4

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentOnlineId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/player/ui/controller/ToolBarController;->refreshFavorite(Z)V

    .line 96
    invoke-direct {p0}, Lcom/miui/player/ui/controller/ToolBarController;->refreshEqualizer()V

    .line 98
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 99
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 103
    .local v0, isChannel:Z
    :goto_0
    if-nez v0, :cond_2

    .line 104
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getRepeatMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/player/ui/controller/ToolBarController;->refreshRepeatMode(I)V

    .line 105
    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getShuffleMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/miui/player/ui/controller/ToolBarController;->refreshShuffleMode(I)V

    .line 106
    const/4 v2, 0x0

    .line 111
    .local v2, visibility:I
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/ToolBarController;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v3, p0, Lcom/miui/player/ui/controller/ToolBarController;->mShuffleIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/miui/player/ui/controller/ToolBarController;->mRepeatIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0           #isChannel:Z
    .end local v2           #visibility:I
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/miui/player/ui/controller/ToolBarController;->downloadRefresh()V

    .line 119
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    .restart local v0       #isChannel:Z
    :cond_2
    const/16 v2, 0x8

    .restart local v2       #visibility:I
    goto :goto_1

    .line 114
    .end local v0           #isChannel:Z
    .end local v2           #visibility:I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/ui/controller/ToolBarController;->mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateDetailInfo()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/player/ui/controller/ToolBarController;->mTrackDetailController:Lcom/miui/player/ui/controller/TrackDetailController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/TrackDetailController;->updateDetailInfo()V

    .line 127
    return-void
.end method
