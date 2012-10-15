.class public Lcom/miui/player/service/PlayerProxy;
.super Ljava/lang/Object;
.source "PlayerProxy.java"


# static fields
.field private static final FFMPEG_SUPPORT_TYPES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFFMPEGExcludeFilePathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private mUsingSysPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/miui/player/service/PlayerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/service/PlayerProxy;->FFMPEG_SUPPORT_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xe9t 0x3t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    .line 39
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 40
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->createFFMPEGPlayer(II)Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    .line 41
    return-void
.end method

.method private isFFMPEGSupported(Ljava/io/File;)Z
    .locals 8
    .parameter "file"

    .prologue
    const/4 v6, 0x0

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 186
    .local v5, type:Landroid/media/MediaFile$MediaFileType;
    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v6

    .line 190
    :cond_1
    iget v1, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 191
    .local v1, fileType:I
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->FFMPEG_SUPPORT_TYPES:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 192
    .local v4, t:I
    if-ne v4, v1, :cond_2

    .line 193
    const/4 v6, 0x1

    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isUsingSysPlayer()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTryFFMPEGPlayer(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v3, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v3, :cond_0

    const-string v3, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    const-string v3, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGExcludeFilePathSet:Ljava/util/Set;

    .line 158
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method private translateToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 216
    const/4 v9, 0x0

    .line 217
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v1, "file"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 235
    :cond_1
    :goto_0
    if-eqz v9, :cond_5

    .line 236
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    .end local v7           #f:Ljava/io/File;
    :goto_1
    return-object v7

    .line 221
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 222
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 225
    :try_start_0
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 226
    .local v8, idx:I
    if-ltz v8, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 230
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #idx:I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v7       #f:Ljava/io/File;
    :cond_4
    move-object v7, v2

    .line 237
    goto :goto_1

    .end local v7           #f:Ljava/io/File;
    :cond_5
    move-object v7, v2

    .line 240
    goto :goto_1
.end method

.method private tryFFMPEGPlayer(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/IOException;
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/PlayerProxy;->translateToFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 168
    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/player/service/PlayerProxy;->isFFMPEGSupported(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported by FFMPEG, path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :catch_0
    move-exception v0

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v2, v1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->setDataSource(Ljava/io/File;)V

    .line 173
    iget-object v2, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v2}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->prepare()V

    .line 174
    sget-object v2, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v3, "use ffmpeg MediaPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryMediaPlayer(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/IOException;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "async"

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 203
    if-eqz p3, :cond_0

    .line 204
    iget-object v1, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 208
    :goto_0
    sget-object v1, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v2, "use system MediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_1
    return-object v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->pause()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 280
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->release()V

    .line 283
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 272
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->reset()V

    .line 275
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .parameter "streamType"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v1, "FFMPEGPlayer is always music stream type!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDataSourceAndPrepare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v1, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v2, "setDataSourceAndPrepare"

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, exp:Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    .line 115
    invoke-direct {p0, p1, p2, v3}, Lcom/miui/player/service/PlayerProxy;->tryMediaPlayer(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/IOException;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/player/service/PlayerProxy;->needTryFFMPEGPlayer(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/PlayerProxy;->tryFFMPEGPlayer(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/IOException;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    iput-boolean v3, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    goto :goto_0

    .line 129
    :cond_1
    throw v0
.end method

.method public setDataSourceAndPrepareAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 133
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setDataSourceAndPrepare"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iput-boolean v2, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    .line 135
    invoke-direct {p0, p2}, Lcom/miui/player/service/PlayerProxy;->needTryFFMPEGPlayer(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/PlayerProxy;->tryFFMPEGPlayer(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/PlayerProxy;->mUsingSysPlayer:Z

    .line 144
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lcom/miui/player/service/PlayerProxy;->tryMediaPlayer(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to play with uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFFMPEGExcludeFilePathSet(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGExcludeFilePathSet:Ljava/util/Set;

    .line 45
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 98
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 105
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 68
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->setVolume(FF)V

    .line 71
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/miui/player/service/PlayerProxy;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lcom/miui/player/service/PlayerProxy;->isUsingSysPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/PlayerProxy;->mFFMPEGPlayer:Lcom/miui/player/ffmpeg/FFMPEGPlayer;

    invoke-virtual {v0}, Lcom/miui/player/ffmpeg/FFMPEGPlayer;->start()Z

    goto :goto_0
.end method
