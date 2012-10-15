.class public Lcom/miui/player/service/LyricManager;
.super Ljava/lang/Object;
.source "LyricManager.java"

# interfaces
.implements Lmiui/util/PlayerActions$Out$LyricStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/LyricManager$LyricDownloadProxy;,
        Lcom/miui/player/service/LyricManager$DirectlyDownload;,
        Lcom/miui/player/service/LyricManager$SearchAndDownload;,
        Lcom/miui/player/service/LyricManager$LyricCommand;
    }
.end annotation


# instance fields
.field private mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

.field private mLyricStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 31
    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I
    .locals 1
    .parameter "context"
    .parameter "searchInfo"
    .parameter "cbk"

    .prologue
    .line 127
    new-instance v0, Lcom/miui/player/service/LyricManager$SearchAndDownload;

    invoke-direct {v0, p1}, Lcom/miui/player/service/LyricManager$SearchAndDownload;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V

    invoke-static {p0, v0, p2}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/service/LyricManager$LyricCommand;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v0

    return v0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/service/LyricManager$LyricCommand;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I
    .locals 1
    .parameter "context"
    .parameter "command"
    .parameter "cbk"

    .prologue
    .line 131
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x5

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "other_connect_lyric"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_1
    invoke-interface {p1, p0, p2}, Lcom/miui/player/service/LyricManager$LyricCommand;->execute(Landroid/content/Context;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static saveLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "artist"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 147
    :cond_1
    const-string v3, "lyric"

    invoke-static {p1, p2, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v3, "lyric"

    invoke-static {p0, v3}, Lcom/miui/player/meta/MetaManager;->makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {p3, v1}, Lcom/miui/player/plugin/onlinelyric/LyricContent;->persist(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getStringArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeArr()[I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->getTimeArr()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleContent()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/meta/LyricParser$Lyric;->recycleContent()V

    .line 53
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 35
    return-void
.end method

.method public status()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    return v0
.end method

.method public updateLyricStatus(Lcom/miui/player/service/MediaPlaybackService;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "service"
    .parameter "callback"
    .parameter "needLyric"
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "reset"

    .prologue
    .line 61
    const-string v5, "display_lyric"

    invoke-static {p1, v5}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    const/4 v5, 0x1

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 63
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 64
    const/4 v5, 0x0

    .line 123
    :goto_0
    return v5

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p7, :cond_1

    iget v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    if-eqz v5, :cond_1

    .line 68
    const/4 v5, 0x0

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 73
    const/4 v5, 0x2

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 74
    const/4 v5, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, p6, v5}, Lcom/miui/player/meta/MetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, lyricFile:Ljava/io/File;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 79
    if-nez p7, :cond_3

    iget-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v5}, Lcom/miui/player/meta/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    invoke-virtual {v5}, Lcom/miui/player/meta/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    .line 82
    :cond_3
    invoke-static {v1}, Lcom/miui/player/meta/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 84
    iget-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-nez v5, :cond_4

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    const/4 v5, 0x2

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 93
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    if-eqz v5, :cond_7

    .line 94
    const/4 v5, 0x3

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 123
    :cond_5
    :goto_2
    iget v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    if-eqz p3, :cond_c

    const/4 v5, 0x1

    goto :goto_0

    .line 90
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/player/service/LyricManager;->mLyric:Lcom/miui/player/meta/LyricParser$Lyric;

    goto :goto_1

    .line 95
    :cond_7
    iget v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    if-nez v5, :cond_b

    .line 96
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->isBuffering()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez p7, :cond_8

    .line 97
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 99
    :cond_8
    const/4 v5, 0x1

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    .line 100
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->needSearch()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 102
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, onlineId:Ljava/lang/String;
    new-instance v3, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-virtual {p1}, Lcom/miui/player/service/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p4, p6, p5, v5}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v3, searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    const/4 v4, 0x2

    .line 107
    .local v4, status:I
    if-eqz v2, :cond_9

    .line 108
    new-instance v5, Lcom/miui/player/service/LyricManager$DirectlyDownload;

    invoke-direct {v5, v2}, Lcom/miui/player/service/LyricManager$DirectlyDownload;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;

    invoke-direct {v6, v0, p2, v3}, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;-><init>(Landroid/content/Context;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V

    invoke-static {v0, v5, v6}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/service/LyricManager$LyricCommand;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v4

    .line 112
    :cond_9
    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 114
    new-instance v5, Lcom/miui/player/service/LyricManager$SearchAndDownload;

    invoke-direct {v5, v3}, Lcom/miui/player/service/LyricManager$SearchAndDownload;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V

    invoke-static {v0, v5, p2}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/service/LyricManager$LyricCommand;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    move-result v4

    .line 117
    :cond_a
    iput v4, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    goto :goto_2

    .line 119
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #onlineId:Ljava/lang/String;
    .end local v3           #searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    .end local v4           #status:I
    :cond_b
    iget v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    if-eqz p3, :cond_5

    .line 120
    const/4 v5, 0x2

    iput v5, p0, Lcom/miui/player/service/LyricManager;->mLyricStatus:I

    goto :goto_2

    .line 123
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0
.end method
