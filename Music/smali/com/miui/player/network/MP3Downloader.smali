.class public Lcom/miui/player/network/MP3Downloader;
.super Ljava/lang/Object;
.source "MP3Downloader.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/network/MP3Downloader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "appointName"
    .parameter "details"
    .parameter "forceScan"

    .prologue
    .line 165
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, json:Lorg/json/JSONObject;
    const-string v0, "album"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, album:Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, artist:Ljava/lang/String;
    const-string v0, "track"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, track:Ljava/lang/String;
    const-string v0, "mp3"

    invoke-static {p1, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 173
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v5, p3

    .line 174
    invoke-static/range {v0 .. v5}, Lcom/miui/player/meta/MediaFileManager;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #file:Ljava/io/File;
    .end local v2           #track:Ljava/lang/String;
    .end local v3           #artist:Ljava/lang/String;
    .end local v4           #album:Ljava/lang/String;
    .end local v6           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getCandidateInfo(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, links:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    const/4 v3, 0x0

    .line 149
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    invoke-static {p0}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 152
    .local v2, link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v2           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object v3, v0

    .line 160
    .end local v0           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-object v3

    .line 157
    .restart local v0       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v0, details:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "album"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v1, "artist"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v1, "track"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    .locals 16
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 191
    invoke-static/range {p1 .. p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const/4 v13, 0x0

    .line 223
    :cond_0
    :goto_0
    return-object v13

    .line 195
    :cond_1
    const/4 v11, 0x0

    .line 196
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 199
    .local v13, info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :try_start_0
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 201
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/player/network/MP3Downloader;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 202
    if-nez v11, :cond_2

    .line 203
    const/4 v13, 0x0

    .line 218
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 219
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 204
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 205
    const/4 v13, 0x0

    .line 218
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 219
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 208
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 209
    .local v14, onlineId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, title:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    .local v10, artist:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, album:Ljava/lang/String;
    const-string v2, "mp3"

    invoke-static {v15, v10, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, appointName:Ljava/lang/String;
    invoke-static {v15, v10, v8}, Lcom/miui/player/network/MP3Downloader;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, details:Ljava/lang/String;
    new-instance v13, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    const/4 v2, 0x0

    invoke-direct {v13, v14, v9, v12, v2}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .restart local v13       #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v11, :cond_0

    .line 219
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 218
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #album:Ljava/lang/String;
    .end local v9           #appointName:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    .end local v12           #details:Ljava/lang/String;
    .end local v13           #info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    .end local v14           #onlineId:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_4

    .line 219
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;)Z
    .locals 14
    .parameter "context"
    .parameter "item"

    .prologue
    .line 90
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/player/network/MP3Downloader;->getCandidateInfo(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    .line 95
    .local v11, linkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    if-nez v11, :cond_1

    .line 96
    const v0, 0x7f090006

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, tr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, ar:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 103
    const-string v8, ""

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, al:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 108
    const-string v7, ""

    .line 111
    :cond_3
    const-string v0, "mp3"

    invoke-static {v12, v8, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, appointName:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :cond_4
    const-string v0, "mp3"

    invoke-static {v0}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 117
    .local v10, dir:Ljava/io/File;
    if-nez v10, :cond_5

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_5
    invoke-static {v12, v8, v7}, Lcom/miui/player/network/MP3Downloader;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, details:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v11, v0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v13

    .line 126
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "context"
    .parameter "audio"
    .parameter "runOnStartDownload"

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/miui/player/network/MP3Downloader$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/miui/player/network/MP3Downloader$1;-><init>(Lcom/miui/player/plugin/onlinemusic2/Audio;Landroid/content/Context;Ljava/lang/Runnable;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/player/network/MP3Downloader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method
