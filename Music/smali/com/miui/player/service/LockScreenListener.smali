.class public Lcom/miui/player/service/LockScreenListener;
.super Ljava/lang/Object;
.source "LockScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;
    }
.end annotation


# instance fields
.field private final mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

.field mService:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-direct {v0, p0}, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;-><init>(Lcom/miui/player/service/LockScreenListener;)V

    iput-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    .line 27
    return-void
.end method


# virtual methods
.method copyAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "destPath"

    .prologue
    .line 46
    iget-object v6, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 47
    .local v6, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v6, :cond_0

    .line 48
    const/4 v7, 0x0

    .line 90
    :goto_0
    return-object v7

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 52
    .local v3, inputStream:Ljava/io/InputStream;
    const-string v7, "display_album"

    invoke-static {v6, v7}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    const-string v7, "android_album"

    invoke-static {v6, v7}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 54
    invoke-virtual {v6}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumId()J

    move-result-wide v9

    invoke-static {v6, v7, v8, v9, v10}, Lcom/miui/player/meta/AlbumManager;->getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v3

    .line 56
    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    :goto_1
    if-nez v4, :cond_5

    .line 57
    invoke-virtual {v6}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #albumFile:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_1
    :goto_2
    if-nez v3, :cond_4

    .line 67
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 71
    :cond_2
    const/4 p1, 0x0

    .end local v2           #file:Ljava/io/File;
    :cond_3
    :goto_3
    move-object v7, p1

    .line 90
    goto :goto_0

    .line 61
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v0       #albumFile:Ljava/io/File;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .line 73
    .end local v0           #albumFile:Ljava/io/File;
    :cond_4
    const/4 v5, 0x0

    .line 75
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "ablum.jpg"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/miui/player/service/MediaPlaybackService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 80
    :goto_4
    if-eqz v5, :cond_3

    .line 81
    invoke-static {v3, v5}, Lcom/xiaomi/common/file/FileOperations;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 83
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 85
    :catch_1
    move-exception v7

    goto :goto_3

    .line 76
    :catch_2
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :cond_5
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    :cond_6
    move-object v4, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method notifyScreenManager(Ljava/lang/String;Z)V
    .locals 4
    .parameter "tempAlbumPath"
    .parameter "isShowMusic"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 142
    .local v1, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "tmp_album_path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "is_showmusic"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v2, "artist"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "album"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "track"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "playing"

    invoke-virtual {v1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    invoke-virtual {v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerScreenlock(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, screenlockFilter:Landroid/content/IntentFilter;
    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/miui/player/service/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    iput-object p1, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 35
    return-void
.end method

.method public unregisterScreenlock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/service/LockScreenListener;->notifyScreenManager(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/service/LockScreenListener;->mLockScreenListener:Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    iput-object v2, p0, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 43
    :cond_0
    return-void
.end method
