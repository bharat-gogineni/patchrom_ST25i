.class Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/LockScreenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockScreenReceiver"
.end annotation


# instance fields
.field private mForceCopyAlbum:Z

.field private mLockScreenArtistName:Ljava/lang/String;

.field private mLockScrenAlbumName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/service/LockScreenListener;


# direct methods
.method constructor <init>(Lcom/miui/player/service/LockScreenListener;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v9, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 101
    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    iget-object v5, v9, Lcom/miui/player/service/LockScreenListener;->mService:Lcom/miui/player/service/MediaPlaybackService;

    .line 102
    .local v5, s:Lcom/miui/player/service/MediaPlaybackService;
    if-nez v5, :cond_1

    .line 137
    .end local v5           #s:Lcom/miui/player/service/MediaPlaybackService;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v5       #s:Lcom/miui/player/service/MediaPlaybackService;
    :cond_1
    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, albumName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, artistName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, trackName:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 111
    const-string v9, "track"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 112
    .local v4, isRequestTrack:Z
    if-eqz v4, :cond_2

    .line 113
    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/miui/player/service/LockScreenListener;->notifyScreenManager(Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/miui/player/service/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ablum.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, tempAlbumPath:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mForceCopyAlbum:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mLockScrenAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mLockScreenArtistName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v6, tempAlbumFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 121
    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v9, v7, v11}, Lcom/miui/player/service/LockScreenListener;->notifyScreenManager(Ljava/lang/String;Z)V

    goto :goto_0

    .line 125
    .end local v6           #tempAlbumFile:Ljava/io/File;
    :cond_3
    iput-object v1, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mLockScrenAlbumName:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mLockScreenArtistName:Ljava/lang/String;

    .line 127
    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v9, v7}, Lcom/miui/player/service/LockScreenListener;->copyAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    iget-object v9, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->this$0:Lcom/miui/player/service/LockScreenListener;

    invoke-virtual {v9, v7, v11}, Lcom/miui/player/service/LockScreenListener;->notifyScreenManager(Ljava/lang/String;Z)V

    .line 129
    iput-boolean v12, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mForceCopyAlbum:Z

    goto :goto_0

    .line 131
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v4           #isRequestTrack:Z
    .end local v5           #s:Lcom/miui/player/service/MediaPlaybackService;
    .end local v7           #tempAlbumPath:Ljava/lang/String;
    .end local v8           #trackName:Ljava/lang/String;
    :cond_4
    const-string v9, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    const-string v9, "command"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, cmd:Ljava/lang/String;
    const-string v9, "album"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "track"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 134
    :cond_5
    iput-boolean v11, p0, Lcom/miui/player/service/LockScreenListener$LockScreenReceiver;->mForceCopyAlbum:Z

    goto/16 :goto_0
.end method
