.class public Lcom/miui/player/ui/MediaPlaybackActivity;
.super Lcom/miui/player/ui/base/TemplateListActivity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/DialogCallback;
.implements Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;
.implements Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;,
        Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;,
        Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;
    }
.end annotation


# static fields
.field static final ACTIVE_INTERVAL:[I

.field private static final INDEXER_COUNT:I

.field static final TAG:Ljava/lang/String;


# instance fields
.field mActiveIndexer:I

.field mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

.field mAlbumIndicator:Landroid/widget/ImageSwitcher;

.field private mAlbumIndicatorDefault:Landroid/graphics/drawable/Drawable;

.field private mAlbumIndicatorMask:Landroid/graphics/Bitmap;

.field private mAnimClosedHeight:I

.field private mAnimDuraton:I

.field private mAnimOpenHeight:I

.field mAnimView:Landroid/widget/ImageView;

.field mBackupIndexer:I

.field mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

.field private mCurrentLocalId:J

.field mDownloadFreezeDialog:Landroid/app/ProgressDialog;

.field final mHandler:Landroid/os/Handler;

.field mIsAnimationPlaying:Z

.field private mIsLyricProgressModify:Z

.field private mIsOnline:Z

.field private mLastActive:Z

.field mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

.field private mLyricDir:Ljava/io/File;

.field private mLyricModifyHintTitle:Landroid/widget/TextView;

.field private mOnlineMusicLogo:Landroid/widget/ImageView;

.field mPaused:Z

.field mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

.field mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

.field mPlaylistIndicator:Landroid/widget/ImageView;

.field private mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

.field private mPrimaryTitle:Landroid/widget/TextView;

.field private mSeconaryTitle:Landroid/widget/TextView;

.field mService:Lcom/miui/player/service/IMediaPlaybackService;

.field mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

.field mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

.field mUpdateVersion:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    .line 143
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    array-length v0, v0

    sput v0, Lcom/miui/player/ui/MediaPlaybackActivity;->INDEXER_COUNT:I

    return-void

    .line 139
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xc8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/miui/player/ui/base/TemplateListActivity;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    .line 169
    iput-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 171
    iput-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPaused:Z

    .line 173
    iput-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    .line 175
    iput v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mUpdateVersion:I

    .line 372
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    .line 857
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    .line 1483
    iput-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1695
    iput-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastActive:Z

    .line 1848
    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/MediaPlaybackActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->turnToLyricIndexerMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode()V

    return-void
.end method

.method private doPickAlbumFromGallery()V
    .locals 3

    .prologue
    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1167
    :cond_0
    const-string v2, "album"

    invoke-static {v0, v1, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1169
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    const v0, 0x7f090098

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1172
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private doPickLyricFromFileExplorer()V
    .locals 2

    .prologue
    .line 1129
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLyricPickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1130
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    const v0, 0x7f090096

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private editId3(Landroid/content/Intent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1213
    const-string v0, "new_track_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    const-string v2, "new_artist_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v3, "new_album_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    const-string v4, "raw_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1218
    const-string v5, "raw_track_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    const-string v6, "raw_artist_name"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    const-string v7, "raw_album_name"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1222
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return v1

    .line 1228
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1229
    invoke-static {p0, v4}, Lcom/miui/player/util/SqlUtils;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 1230
    if-eqz v4, :cond_3

    .line 1231
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1233
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v0, v2, v3}, Lcom/miui/player/meta/MediaFileManager;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1234
    if-nez v0, :cond_2

    .line 1235
    const v2, 0x7f090099

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    move v1, v0

    .line 1238
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private enableSpectrumVisualizer(Z)V
    .locals 9
    .parameter "isPlaying"

    .prologue
    const/16 v8, 0x8

    const/4 v0, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 461
    sget-boolean v6, Lcom/miui/player/util/PreferenceCache;->IS_LPA_DECODE:Z

    if-eqz v6, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 466
    .local v4, spv:Lmiui/widget/SpectrumVisualizer;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    .line 468
    .local v1, handler:Landroid/os/Handler;
    const-string v6, "display_spectrogram"

    invoke-static {p0, v6}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 469
    .local v3, pref:Z
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    iget v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-nez v6, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 474
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->isUpdateEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    .line 477
    invoke-virtual {v4, v5}, Lmiui/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 479
    :cond_2
    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 480
    .local v2, msg:Landroid/os/Message;
    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #enabled:Z
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    move v0, v5

    .line 469
    goto :goto_1

    .line 483
    .restart local v0       #enabled:Z
    :cond_4
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    invoke-virtual {v4, v5}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 485
    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    iget v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-eqz v5, :cond_0

    .line 486
    :cond_5
    invoke-virtual {v4}, Lmiui/widget/SpectrumVisualizer;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 487
    invoke-virtual {v4, v8}, Lmiui/widget/SpectrumVisualizer;->setVisibility(I)V

    goto :goto_0
.end method

.method private enterLyricProgressModifyMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1087
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    .line 1088
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/controller/LyricViewController;->setLyricMode(I)V

    .line 1090
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricModifyHintTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    return-void
.end method

.method private getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1183
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v1, "aspectX"

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/AlbumViewController;->getAlbumWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    const-string v1, "aspectY"

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v2}, Lcom/miui/player/ui/controller/AlbumViewController;->getAlbumHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1188
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1189
    const-string v1, "noShowToast"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1190
    return-object v0
.end method

.method private getLyricPickIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 1143
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 1145
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1148
    const-string v1, "root_directory"

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v1, "ext_filter"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "lrc"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v1, "ext_file_first"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1153
    const-string v1, "back_to_parent_directory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    return-object v0
.end method

.method private getPreferenceSelection()I
    .locals 4

    .prologue
    .line 583
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_plackback_selection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 584
    .local v0, ret:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 588
    :cond_0
    return v0
.end method

.method private leaveLyricProgressModifyMode()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 1104
    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    .line 1105
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v2, v0}, Lcom/miui/player/ui/controller/LyricViewController;->setLyricMode(I)V

    .line 1107
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricModifyHintTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1108
    const v2, 0x7f0c0023

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    const v2, 0x7f0c002b

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    const v2, 0x7f0c0036

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :goto_1
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1122
    return-void

    :cond_0
    move v0, v1

    .line 1115
    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    sget-object v1, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static savePreferenceSelection(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "indexer"

    .prologue
    .line 592
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 593
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_plackback_selection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 594
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 595
    return-void
.end method

.method private setTitleBar()V
    .locals 5

    .prologue
    .line 1809
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrimaryTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1810
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1811
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1812
    invoke-static {p0, v0, v1}, Lcom/miui/player/ui/UIHelper;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1813
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 1814
    if-eqz v1, :cond_0

    .line 1815
    const v2, 0x7f0900e8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-nez v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1826
    :goto_0
    return-void

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private turnToLyricIndexerMode(I)V
    .locals 2
    .parameter "newIndexer"

    .prologue
    .line 709
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 710
    .local v0, bottomOut:Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$3;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 727
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 728
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/LyricViewController;->startLeaveAnimation(Landroid/view/animation/Animation;)V

    .line 729
    return-void
.end method

.method private updateAnimView(Z)V
    .locals 8
    .parameter "hasAnim"

    .prologue
    const/4 v7, 0x0

    .line 562
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 564
    .local v4, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimOpenHeight:I

    iget v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimClosedHeight:I

    sub-int v1, v5, v6

    .line 565
    .local v1, delta:I
    iget v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v5, :cond_1

    neg-int v3, v1

    .line 566
    .local v3, margin:I
    :goto_0
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v5, v3, :cond_2

    .line 580
    :cond_0
    :goto_1
    return-void

    .line 565
    .end local v3           #margin:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 571
    .restart local v3       #margin:I
    :cond_2
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 572
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    if-eqz p1, :cond_0

    .line 575
    iget v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-eqz v5, :cond_3

    move v2, v1

    .line 576
    .local v2, endY:I
    :goto_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v2

    invoke-direct {v0, v7, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 577
    .local v0, anim:Landroid/view/animation/Animation;
    iget v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimDuraton:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 578
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 575
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v2           #endY:I
    :cond_3
    neg-int v2, v1

    goto :goto_2
.end method


# virtual methods
.method adjustActiveIndexer()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 631
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 636
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 637
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-ne v0, v2, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeExternal()V

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setClickable(Z)V

    .line 642
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 643
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setClickable(Z)V

    .line 647
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 648
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-ne v0, v2, :cond_3

    .line 649
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method adjustEqualizer()V
    .locals 2

    .prologue
    .line 1684
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.EQUALIZER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    const/16 v1, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1686
    return-void
.end method

.method changeActiveIndexer(I)V
    .locals 2
    .parameter "newIndexer"

    .prologue
    .line 550
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-eq v0, p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->deactive()V

    .line 552
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/MediaPlaybackController;->active()V

    .line 553
    iput p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 554
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    invoke-static {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 557
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateAnimView(Z)V

    .line 558
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 559
    return-void
.end method

.method changeExternal()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f040003

    const v5, 0x7f040002

    .line 661
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    if-ltz v3, :cond_0

    .line 662
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 663
    const/4 v3, -0x1

    iput v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    .line 668
    :goto_0
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-ne v3, v4, :cond_2

    .line 669
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v3}, Lcom/miui/player/ui/controller/AlbumViewController;->getCurrentAlbum()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->onAlbumChanged(Landroid/graphics/Bitmap;)V

    .line 671
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 672
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 674
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-virtual {v3, v7}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 676
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    if-eq v3, v8, :cond_1

    .line 677
    const/high16 v3, 0x7f04

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 678
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 679
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/controller/PlaylistController;->startEnterAnimation(Landroid/view/animation/Animation;)V

    .line 707
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_1
    return-void

    .line 665
    :cond_0
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    iput v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    .line 666
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    goto :goto_0

    .line 681
    :cond_1
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 682
    .local v2, fadeOut:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/controller/LyricViewController;->startLeaveAnimation(Landroid/view/animation/Animation;)V

    .line 684
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 685
    .local v1, fadeIn:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 686
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/PlaylistController;->startEnterAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 689
    .end local v1           #fadeIn:Landroid/view/animation/Animation;
    .end local v2           #fadeOut:Landroid/view/animation/Animation;
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->startAnimation(Landroid/view/animation/Animation;)V

    .line 690
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageSwitcher;->setVisibility(I)V

    .line 691
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 692
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-eq v3, v8, :cond_3

    .line 695
    const v3, 0x7f040001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 696
    .restart local v0       #anim:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 697
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    invoke-virtual {v3, v0}, Lcom/miui/player/ui/controller/PlaylistController;->startLeaveAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 699
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_3
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 700
    .restart local v2       #fadeOut:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/controller/PlaylistController;->startLeaveAnimation(Landroid/view/animation/Animation;)V

    .line 702
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 703
    .restart local v1       #fadeIn:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;

    invoke-direct {v3, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$AnimationEndListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 704
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/controller/LyricViewController;->startEnterAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method enableSpectrumVisualizer()V
    .locals 1

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->enableSpectrumVisualizer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getCursorAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNextIndexerWhenInternalClick()I
    .locals 3

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, newIndexer:I
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v1, :cond_1

    .line 773
    const/4 v0, 0x1

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 775
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getObservedServiceActions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1752
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.miui.player.queuechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.miui.player.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.miui.player.playstatechanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.miui.player.playbackcomplete"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.miui.player.refreshprogress"

    aput-object v2, v0, v1

    .line 1760
    return-object v0
.end method

.method public handleLoadFinished(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "loaderId"
    .parameter "cursor"

    .prologue
    .line 1878
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/base/TemplateListActivity;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 1879
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/fragment/TrackListFragment;->handleLoadFinished(ILandroid/database/Cursor;)V

    .line 1880
    return-void
.end method

.method protected handleServiceConnected(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1742
    if-nez p1, :cond_0

    .line 1743
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    .line 1748
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setService(Lcom/miui/player/service/IMediaPlaybackService;)V

    goto :goto_0
.end method

.method protected handleServiceNotification(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1771
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1772
    const-string v0, "other"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1773
    const/4 v0, 0x0

    .line 1774
    if-eqz v1, :cond_2

    const-string v2, "meta_changed_track"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1775
    :cond_2
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-eqz v0, :cond_3

    .line 1776
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode()V

    .line 1778
    :cond_3
    const/4 v0, 0x3

    .line 1785
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V

    .line 1786
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshTimeIndicator()V

    .line 1787
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar()V

    .line 1801
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshToolBar()V

    .line 1802
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0

    .line 1779
    :cond_6
    const-string v2, "meta_changed_album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1780
    const/4 v0, 0x2

    goto :goto_1

    .line 1781
    :cond_7
    const-string v2, "meta_changed_lyric"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1782
    const/4 v0, 0x1

    goto :goto_1

    .line 1788
    :cond_8
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1789
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_2

    .line 1790
    :cond_9
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1791
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    goto :goto_2

    .line 1792
    :cond_a
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1793
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isMusicLoaded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1794
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto/16 :goto_0

    .line 1798
    :cond_b
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->adjustActiveIndexer()V

    goto :goto_2
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method public launchLoader(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 1861
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 1862
    const-string v1, "nowplaying"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 1864
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    .line 1874
    :goto_0
    return-void

    .line 1867
    :cond_0
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$NowplayingLoaderCallback;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 1868
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1873
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->launchLoader(Z)V

    goto :goto_0
.end method

.method public onActiveChanged()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1706
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v1

    .line 1707
    iget-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastActive:Z

    if-ne v2, v1, :cond_1

    .line 1708
    const/4 v0, 0x0

    .line 1730
    :cond_0
    :goto_0
    return v0

    .line 1711
    :cond_1
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLastActive:Z

    .line 1712
    if-eqz v1, :cond_2

    .line 1714
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->removeMessages(I)V

    .line 1715
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1716
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1718
    const-string v1, "screen_bright_wake"

    invoke-static {p0, v1}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1722
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v1}, Lcom/miui/player/ui/controller/LyricViewController;->unregisterToolBar()V

    .line 1724
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->enableSpectrumVisualizer()V

    .line 1725
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1373
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1381
    :pswitch_1
    const-string v0, "artist"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1382
    const-string v0, "album"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1383
    const-string v0, "raw_artist"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1384
    const-string v0, "raw_album"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1385
    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    const-wide/16 v1, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z

    .line 1386
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1389
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 1391
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    :cond_3
    const-string v0, "album"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1397
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1404
    :pswitch_2
    if-eqz p3, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1407
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 1408
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 1409
    const-string v0, "album"

    invoke-static {v4, v5, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1410
    if-eqz v2, :cond_0

    .line 1414
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1415
    if-eqz v0, :cond_4

    .line 1416
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1417
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1421
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1422
    if-eqz v0, :cond_0

    .line 1425
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .line 1428
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1429
    :try_start_3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v3, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1433
    if-eqz v1, :cond_4

    .line 1435
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 1443
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    new-instance v0, Lcom/miui/player/meta/AlbumInfo;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumListAdapter;->removeCacheAlbum(Lcom/miui/player/meta/AlbumInfo;)Z

    .line 1445
    const-string v0, "album"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1447
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 1436
    :catch_2
    move-exception v0

    .line 1437
    sget-object v1, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1448
    :catch_3
    move-exception v0

    .line 1449
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    .line 1430
    :catch_4
    move-exception v0

    .line 1431
    :goto_2
    :try_start_6
    sget-object v1, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1433
    if-eqz v3, :cond_4

    .line 1435
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 1436
    :catch_5
    move-exception v0

    .line 1437
    :try_start_8
    sget-object v1, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1433
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_5

    .line 1435
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3

    .line 1438
    :cond_5
    :goto_4
    :try_start_a
    throw v0

    .line 1436
    :catch_6
    move-exception v1

    .line 1437
    sget-object v2, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 1455
    :pswitch_3
    if-eqz p3, :cond_0

    .line 1456
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1457
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1459
    :try_start_b
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 1460
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 1461
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1462
    :cond_6
    const-string v3, "lyric"

    invoke-static {v2, v1, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1464
    invoke-static {v0, v1}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1466
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 1467
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 1470
    :cond_7
    const-string v0, "lyric"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    .line 1474
    :catch_7
    move-exception v0

    goto/16 :goto_0

    .line 1433
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_3

    .line 1430
    :catch_8
    move-exception v0

    move-object v3, v1

    goto/16 :goto_2

    .line 1379
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAlbumChanged(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "src"

    .prologue
    .line 1831
    if-eqz p1, :cond_1

    .line 1832
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicatorMask:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, v2, v3}, Lcom/xiaomi/common/util/BitmapHelper;->transferMode(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Xfermode;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1834
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1839
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1840
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1842
    :cond_0
    return-void

    .line 1836
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicatorDefault:Landroid/graphics/drawable/Drawable;

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-nez v0, :cond_0

    .line 807
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onBackPressed()V

    .line 812
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricViewController;->cancelModifyLyricProgress()V

    .line 810
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode()V

    goto :goto_0
.end method

.method public onCreateContent(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 182
    invoke-super/range {p0 .. p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onCreateContent(Landroid/os/Bundle;)V

    .line 184
    const-string v1, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 185
    .local v14, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    sget-object v3, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 187
    const v1, 0x7f030009

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setContentView(I)V

    .line 188
    const v1, 0x7f0c001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, container:Landroid/view/View;
    const v1, 0x7f0c0021

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SpectrumVisualizer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    .line 190
    const v1, 0x7f0c001d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimView:Landroid/widget/ImageView;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 193
    .local v15, res:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/ui/UIHelper;->getActivityHeight(Landroid/app/Activity;)I

    move-result v1

    const v3, 0x7f070022

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimOpenHeight:I

    .line 194
    const v1, 0x7f070021

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimClosedHeight:I

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimOpenHeight:I

    invoke-static {v1, v3}, Lcom/miui/player/ui/UIHelper;->setLayoutHeight(Landroid/view/View;I)V

    .line 196
    const v1, 0x7f080009

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimDuraton:I

    .line 198
    new-instance v1, Lcom/miui/player/ui/controller/PlayerCommonController;

    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    const v4, 0x7f02008a

    const v5, 0x7f020087

    const v6, 0x7f02008d

    const v7, 0x7f020084

    const v8, 0x7f020081

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/ui/controller/PlayerCommonController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/PlayerCommonController$RepeatClickCallback;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    .line 207
    const v1, 0x7f0c001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 208
    .local v16, wrap:Landroid/view/View;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimOpenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAnimClosedHeight:I

    sub-int/2addr v1, v3

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->setLayoutHeight(Landroid/view/View;I)V

    .line 210
    new-instance v6, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 211
    .local v6, l:Landroid/view/View$OnClickListener;
    new-instance v1, Lcom/miui/player/ui/controller/AlbumViewController;

    move-object/from16 v0, p0

    invoke-direct {v1, v2, v0, v6}, Lcom/miui/player/ui/controller/AlbumViewController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/controller/AlbumViewController;->setAlbumChangedListener(Lcom/miui/player/ui/controller/AlbumViewController$AlbumChangedListener;)V

    .line 213
    new-instance v1, Lcom/miui/player/ui/controller/LyricViewController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    new-instance v7, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    new-instance v8, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/player/ui/controller/LyricViewController;-><init>(Landroid/view/View;Lcom/miui/player/ui/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/ui/controller/AlbumViewController;Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    .line 218
    .local v12, fm:Landroid/app/FragmentManager;
    const v1, 0x7f0c001f

    invoke-virtual {v12, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/player/ui/fragment/TrackListFragment;->setHasOptionsMenu(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/player/ui/fragment/TrackListFragment;->setListChoiceMode(I)V

    .line 222
    new-instance v1, Lcom/miui/player/ui/controller/PlaylistController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/miui/player/ui/controller/PlaylistController;-><init>(Landroid/app/Activity;Lcom/miui/player/ui/fragment/TrackListFragment;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    .line 224
    sget v1, Lcom/miui/player/ui/MediaPlaybackActivity;->INDEXER_COUNT:I

    new-array v1, v1, [Lcom/miui/player/ui/controller/MediaPlaybackController;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    aput-object v4, v1, v3

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    aput-object v4, v1, v3

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    aput-object v4, v1, v3

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getPreferenceSelection()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setActiveIndexer(I)V

    .line 231
    const v1, 0x7f0c0026

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricModifyHintTitle:Landroid/widget/TextView;

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricModifyHintTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricModifyHintTitle:Landroid/widget/TextView;

    const v3, 0x7f09009e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 235
    const v1, 0x7f03000d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 236
    .local v10, customView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 238
    .local v9, actionBar:Landroid/app/ActionBar;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 240
    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 242
    const v1, 0x7f020005

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicatorDefault:Landroid/graphics/drawable/Drawable;

    .line 243
    const v1, 0x7f020006

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicatorMask:Landroid/graphics/Bitmap;

    .line 245
    const v1, 0x7f0c0037

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPrimaryTitle:Landroid/widget/TextView;

    .line 246
    const v1, 0x7f0c0038

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    const/4 v3, -0x2

    const/4 v4, -0x2

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicatorDefault:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v7}, Lcom/miui/player/ui/UIHelper;->makeImageFactory(Landroid/content/Context;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/drawable/Drawable;)Landroid/widget/ViewSwitcher$ViewFactory;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 251
    const v1, 0x7f0c0039

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    .line 253
    new-instance v11, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$OnExternalIndexClick;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    .line 254
    .local v11, externalClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumIndicator:Landroid/widget/ImageSwitcher;

    invoke-virtual {v1, v11}, Landroid/widget/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v1, 0x7f0c0024

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOnlineMusicLogo:Landroid/widget/ImageView;

    invoke-static/range {p0 .. p0}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    const v1, 0x7f0c0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 262
    .local v13, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/ui/UIHelper;->getHomeAsUpWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mSeconaryTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    invoke-static {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 272
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 274
    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    :cond_1
    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 282
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onDestroy()V

    .line 283
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1251
    sparse-switch p1, :sswitch_data_0

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1253
    :sswitch_0
    if-eqz p2, :cond_0

    .line 1254
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_0

    .line 1256
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1257
    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1258
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1259
    int-to-long v2, v0

    const/4 v0, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto :goto_0

    .line 1264
    :sswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1268
    invoke-direct {p0, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1271
    :sswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1274
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    const-string v0, "new_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1279
    const-string v0, "new_artist_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    const-string v0, "new_album_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1281
    const-string v0, "raw_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v0, "raw_artist_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    const-string v4, "raw_path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1287
    const-string v4, "modify_id3"

    const/4 v7, 0x0

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1288
    if-eqz v4, :cond_1

    invoke-direct {p0, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    move-object v2, v3

    .line 1293
    :cond_1
    const/4 v4, 0x0

    .line 1294
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1295
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/miui/player/util/SqlUtils;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1296
    if-eqz v6, :cond_2

    .line 1297
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1301
    :cond_2
    new-instance v6, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-direct {v6, v3, v1, v5, v4}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;

    invoke-direct {v3, p0, v2, v0}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v6, v3}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v0

    .line 1305
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1307
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1310
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1311
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1313
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1314
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1320
    :sswitch_3
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1323
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1324
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1329
    :cond_5
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const-string v0, "new_track_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    const-string v1, "new_artist_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1335
    const-string v2, "new_album_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    const-string v3, "raw_track_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1338
    const-string v3, "raw_artist_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1339
    const-string v3, "raw_album_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1341
    new-instance v4, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    const/4 v3, 0x1

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1343
    new-instance v3, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    const/4 v0, 0x1

    invoke-direct {v3, v5, v7, v6, v0}, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1345
    const-string v0, "modify_id3"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1346
    const-string v1, "trace"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1347
    const-string v2, "track_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1348
    const-string v2, "album_id"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1349
    const/4 v5, 0x0

    .line 1350
    if-eqz v0, :cond_6

    .line 1351
    invoke-direct {p0, p3}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    move-result v5

    .line 1353
    :cond_6
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;ZJJ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1357
    :sswitch_4
    if-eqz p2, :cond_0

    .line 1358
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 1360
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1362
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v1

    int-to-long v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1363
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1251
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_4
        0x1d -> :sswitch_2
        0x1e -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1884
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/ui/fragment/TrackListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1885
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 937
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v0}, Lcom/miui/player/ui/fragment/TrackListFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1080
    :goto_0
    return v0

    .line 942
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1080
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 944
    :sswitch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 945
    goto :goto_0

    .line 948
    :sswitch_1
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    invoke-static {p0, v0, v1}, Lcom/miui/player/ui/UIHelper;->setRingtone(Landroid/content/Context;J)V

    move v0, v6

    .line 949
    goto :goto_0

    .line 953
    :sswitch_2
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, v1}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V

    move v0, v6

    .line 954
    goto :goto_0

    .line 958
    :sswitch_3
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 959
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 960
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dst_playlist"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 961
    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZ)I

    move v0, v6

    .line 962
    goto :goto_0

    .line 966
    :sswitch_4
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_2

    .line 967
    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 968
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    aput-wide v2, v1, v0

    .line 969
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 970
    const-string v2, "description"

    const v3, 0x7f090047

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 973
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0xa

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/ui/DeleteItems;->show(Landroid/app/Activity;[JLjava/util/ArrayList;ILcom/miui/player/ui/DialogCallback;I)V

    :cond_2
    move v0, v6

    .line 975
    goto/16 :goto_0

    .line 978
    :sswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 980
    const-string v1, "dialog_title"

    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 983
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 984
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 985
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 986
    const-string v5, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v1, "raw_path"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    const/16 v2, 0x20

    invoke-direct {v1, p0, v0, p0, v2}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 993
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 994
    goto/16 :goto_0

    .line 997
    :sswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 999
    const-string v1, "dialog_title"

    const v2, 0x7f090092

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 1003
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 1004
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 1005
    const-string v4, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    if-nez v1, :cond_3

    .line 1009
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1010
    const-string v2, "raw_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1014
    :cond_3
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v0, p0, v2}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 1015
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 1016
    goto/16 :goto_0

    .line 1020
    :sswitch_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1022
    const-string v1, "dialog_title"

    const v2, 0x7f090094

    invoke-virtual {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 1026
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 1027
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 1028
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 1029
    iget-object v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v7

    .line 1031
    const-string v9, "raw_album_name"

    invoke-static {v1}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v1, "raw_artist_name"

    invoke-static {v2}, Lcom/miui/player/meta/MetaManager;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v1, "raw_track_name"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    if-nez v1, :cond_4

    .line 1035
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1036
    const-string v2, "raw_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v1, "modify_id3_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1041
    const-string v2, "track_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1042
    const-string v2, "album_id"

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1043
    const-string v2, "trace"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1045
    new-instance v1, Lcom/miui/player/ui/MediaEditDialog;

    const/16 v2, 0x1e

    invoke-direct {v1, p0, v0, p0, v2}, Lcom/miui/player/ui/MediaEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/ui/DialogCallback;I)V

    .line 1046
    invoke-virtual {v1}, Lcom/miui/player/ui/MediaEditDialog;->show()V

    move v0, v6

    .line 1047
    goto/16 :goto_0

    .line 1050
    :sswitch_8
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPickAlbumFromGallery()V

    move v0, v6

    .line 1051
    goto/16 :goto_0

    .line 1053
    :sswitch_9
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPickLyricFromFileExplorer()V

    goto/16 :goto_1

    .line 1078
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1056
    :sswitch_a
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricViewController;->existLyric()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1057
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-eq v0, v6, :cond_5

    .line 1058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->turnToLyricIndexerMode(I)V

    .line 1060
    :cond_5
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->enterLyricProgressModifyMode()V

    goto/16 :goto_1

    .line 1062
    :cond_6
    const v0, 0x7f09008a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1067
    :sswitch_b
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->adjustEqualizer()V

    goto/16 :goto_1

    .line 1070
    :sswitch_c
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1071
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    invoke-static {p0, v0, v1}, Lcom/miui/player/ui/UIHelper;->sendByChooser(Landroid/content/Context;J)Z

    goto/16 :goto_1

    .line 1075
    :sswitch_d
    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-static {p0, p0, v0, v1}, Lcom/miui/player/ui/OperationDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/ui/DialogCallback;ILandroid/content/Intent;)Lcom/miui/player/ui/OperationDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/ui/OperationDialog;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v6

    .line 1076
    goto/16 :goto_0

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xa -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_9
        0x18 -> :sswitch_8
        0x1a -> :sswitch_b
        0x1b -> :sswitch_d
        0x23 -> :sswitch_c
        0x24 -> :sswitch_a
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPaused:Z

    .line 296
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->onActiveChanged()Z

    .line 297
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onPause()V

    .line 298
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 862
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v1, :cond_0

    move v0, v3

    .line 932
    :goto_0
    return v0

    .line 865
    :cond_0
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 866
    goto :goto_0

    .line 869
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 870
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackListFragment:Lcom/miui/player/ui/fragment/TrackListFragment;

    invoke-virtual {v1}, Lcom/miui/player/ui/fragment/TrackListFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 871
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 874
    :cond_2
    iput-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    .line 875
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v4

    .line 877
    cmp-long v1, v4, v9

    if-ltz v1, :cond_d

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 883
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 884
    :try_start_2
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-static {p0, v2, v1, v4, v5}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 889
    :goto_1
    iget-wide v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_3

    .line 890
    const/16 v6, 0xa

    const v7, 0x7f090045

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 893
    :cond_3
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v6}, Lcom/miui/player/ui/controller/LyricViewController;->isEqualizerEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 894
    const/16 v6, 0x1a

    const v7, 0x7f0900a3

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 897
    :cond_4
    const/16 v6, 0x1c

    const v7, 0x7f090090

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    .line 899
    invoke-interface {v6}, Landroid/view/SubMenu;->clear()V

    .line 900
    invoke-static {v4, v5}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    .line 901
    iget-boolean v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    if-nez v4, :cond_5

    .line 902
    const/16 v4, 0x14

    const v5, 0x7f090091

    invoke-interface {v6, v8, v4, v3, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 905
    :cond_5
    invoke-static {}, Lcom/miui/player/util/Utils;->isOnlineVaild()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 906
    const/16 v4, 0x15

    const v5, 0x7f090092

    invoke-interface {v6, v8, v4, v3, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 908
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 909
    :cond_7
    const/16 v2, 0x17

    const v4, 0x7f090093

    invoke-interface {v6, v8, v2, v3, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 912
    :cond_8
    invoke-static {}, Lcom/miui/player/util/Utils;->isOnlineVaild()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 913
    const/16 v2, 0x16

    const v4, 0x7f090094

    invoke-interface {v6, v8, v2, v3, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 915
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 916
    :cond_a
    const/16 v0, 0x18

    const v1, 0x7f090095

    invoke-interface {v6, v8, v0, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 919
    :cond_b
    const/16 v0, 0x24

    const v1, 0x7f09009d

    invoke-interface {v6, v8, v0, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 920
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_c

    .line 921
    const/4 v0, 0x2

    const v1, 0x7f09005f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 924
    :cond_c
    const v0, 0x7f090062

    invoke-interface {p1, v3, v8, v3, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 925
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V

    .line 927
    iget-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentLocalId:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_d

    .line 928
    const/16 v0, 0x23

    const v1, 0x7f090072

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 932
    :cond_d
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 886
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v1, v0

    goto/16 :goto_1

    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/miui/player/ui/base/TemplateListActivity;->onResume()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPaused:Z

    .line 289
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->adjustActiveIndexer()V

    .line 290
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->onActiveChanged()Z

    .line 291
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/miui/player/ui/base/TemplateListActivity;->onWindowFocusChanged(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->onActiveChanged()Z

    .line 319
    return-void
.end method

.method queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method refreshNow()J
    .locals 15

    .prologue
    .line 337
    const-wide/16 v11, -0x1

    .line 338
    .local v11, ret:J
    const/4 v6, 0x0

    .line 340
    .local v6, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 343
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 344
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v3

    .line 345
    .local v3, duration:J
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    iget v8, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget v0, v0, v8

    int-to-long v9, v0

    .line 346
    .local v9, interval:J
    const-wide/16 v13, 0x0

    cmp-long v0, v9, v13

    if-lez v0, :cond_0

    .line 347
    rem-long v13, v1, v9

    sub-long v11, v9, v13

    .line 350
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 351
    const-wide/16 v13, 0x0

    cmp-long v0, v1, v13

    if-ltz v0, :cond_2

    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-lez v0, :cond_2

    .line 352
    if-nez v6, :cond_1

    .line 353
    const-wide/16 v11, -0x1

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/controller/LyricViewController;->refreshLyric(J)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getBufferedPercent()F

    move-result v5

    .line 361
    .local v5, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z

    move-result v7

    .line 362
    .local v7, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/player/ui/controller/LyricViewController;->refreshProgress(JJFZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1           #pos:J
    .end local v3           #duration:J
    .end local v5           #bufferedPer:F
    .end local v7           #isBuffering:Z
    .end local v9           #interval:J
    :cond_3
    :goto_0
    invoke-direct {p0, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->enableSpectrumVisualizer(Z)V

    .line 369
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_4

    const-wide/16 v11, -0x1

    .end local v11           #ret:J
    :cond_4
    return-wide v11

    .line 363
    .restart local v11       #ret:J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method refreshTimeIndicator()V
    .locals 9

    .prologue
    .line 831
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 834
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v3

    .line 835
    .local v3, dur:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getBufferedPercent()F

    move-result v5

    .line 836
    .local v5, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v6

    .line 837
    .local v6, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isBuffering()Z

    move-result v7

    .line 838
    .local v7, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/miui/player/ui/controller/LyricViewController;->refreshProgress(JJFZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v1           #pos:J
    .end local v3           #dur:J
    .end local v5           #bufferedPer:F
    .end local v6           #isPlaying:Z
    .end local v7           #isBuffering:Z
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshToolBar()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/LyricViewController;->refreshToolbar()V

    .line 334
    return-void
.end method

.method requestUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1245
    return-void
.end method

.method public setActiveIndexer(I)V
    .locals 8
    .parameter "indexer"

    .prologue
    const/4 v5, 0x0

    .line 526
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    .local v0, arr$:[Lcom/miui/player/ui/controller/MediaPlaybackController;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 527
    .local v1, c:Lcom/miui/player/ui/controller/MediaPlaybackController;
    invoke-virtual {v1}, Lcom/miui/player/ui/controller/MediaPlaybackController;->deactive()V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v1           #c:Lcom/miui/player/ui/controller/MediaPlaybackController;
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/miui/player/ui/controller/MediaPlaybackController;->active()V

    .line 530
    iput p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 532
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    iget v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    if-gtz v4, :cond_1

    .line 533
    iput v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mBackupIndexer:I

    .line 536
    :cond_1
    invoke-direct {p0, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateAnimView(Z)V

    .line 538
    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$2;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    return-void
.end method

.method public setAnimationPlaying(Z)V
    .locals 2
    .parameter "isAnimationPlaying"

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    .line 605
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->enableSpectrumVisualizer()V

    .line 606
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 609
    :cond_0
    return-void
.end method

.method setService(Lcom/miui/player/service/IMediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 303
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshTimeIndicator()V

    .line 308
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshToolBar()V

    .line 310
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar()V

    .line 312
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->adjustActiveIndexer()V

    .line 313
    return-void
.end method

.method showDownloadDialog(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1194
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1195
    const/4 v0, 0x0

    .line 1209
    :goto_0
    return v0

    .line 1198
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1199
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1200
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$4;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method updateTrackInfo(I)V
    .locals 16
    .parameter "metaChanged"

    .prologue
    .line 410
    sget-object v11, Lcom/miui/player/ui/MediaPlaybackActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "** updateTrackInfo with metaChanged = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v11, :cond_0

    .line 451
    :goto_0
    return-void

    .line 415
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 416
    .local v13, path:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v13           #path:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 449
    .local v12, ex:Landroid/os/RemoteException;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_0

    .line 421
    .end local v12           #ex:Landroid/os/RemoteException;
    .restart local v13       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    .line 422
    .local v2, trId:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    .line 423
    .local v4, alId:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, tr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, ar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, al:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, trPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getLyricStatus()I

    move-result v10

    .line 429
    .local v10, lrcStatus:I
    invoke-static {v7}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 430
    const-wide/16 v4, -0x1

    .line 433
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v11, v2, v14

    if-gez v11, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v14, "http://"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 434
    const-wide/16 v2, -0x1

    .line 435
    const-wide/16 v4, -0x1

    .line 437
    :cond_3
    new-instance v1, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 438
    .local v1, info:Lcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Lcom/miui/player/ui/controller/AlbumViewController;->touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/ui/controller/AlbumViewController;

    invoke-virtual {v11}, Lcom/miui/player/ui/controller/AlbumViewController;->update()V

    .line 442
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/ui/controller/LyricViewController;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Lcom/miui/player/ui/controller/LyricViewController;->touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/ui/controller/PlaylistController;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Lcom/miui/player/ui/controller/PlaylistController;->touch(ILcom/miui/player/ui/controller/MediaPlaybackController$ControllerInfo;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/ui/controller/MediaPlaybackController;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget-object v11, v11, v14

    invoke-virtual {v11}, Lcom/miui/player/ui/controller/MediaPlaybackController;->update()V

    .line 445
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/ui/controller/PlayerCommonController;

    invoke-virtual {v11}, Lcom/miui/player/ui/controller/PlayerCommonController;->refresh()V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshToolBar()V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setTitleBar()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
