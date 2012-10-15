.class public Lcom/miui/player/receiver/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static needReport(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static openDownloadList(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private static postDownloadStatus(Landroid/content/Context;ZLjava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;)V
    .locals 4
    .parameter "context"
    .parameter "success"
    .parameter "onlineId"
    .parameter "info"

    .prologue
    .line 166
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p3, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    if-nez v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x3ea

    .line 173
    .local v0, error:I
    :goto_1
    new-instance v2, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;

    invoke-direct {v2, p2, v0}, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;-><init>(Ljava/lang/String;I)V

    .line 174
    .local v2, report:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    iget-object v1, p3, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mAudioLink:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 175
    .local v1, link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    iget v3, v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mBitrate:I

    iput v3, v2, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mBitrate:I

    .line 176
    iget-object v3, v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    iput-object v3, v2, Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;->mURL:Ljava/lang/String;

    .line 178
    invoke-static {p0, v2}, Lcom/miui/player/network/OnlineMusicReporter;->postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)V

    goto :goto_0

    .line 170
    .end local v0           #error:I
    .end local v1           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    .end local v2           #report:Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;
    :cond_2
    const/16 v0, 0x3e9

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 41
    .local v16, action:Ljava/lang/String;
    const-string v3, "download"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/DownloadManager;

    .line 42
    .local v30, manager:Landroid/app/DownloadManager;
    new-instance v33, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v33 .. v33}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 43
    .local v33, query:Landroid/app/DownloadManager$Query;
    const-string v3, "extra_download_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    .line 44
    .local v25, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v25, v3

    if-nez v3, :cond_1

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v25, v3, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 50
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v18

    .line 51
    .local v18, c:Landroid/database/Cursor;
    if-nez v18, :cond_2

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 57
    const/4 v12, 0x0

    .line 58
    .local v12, details:Ljava/lang/String;
    const/4 v11, 0x0

    .line 59
    .local v11, onlineId:Ljava/lang/String;
    const/16 v27, 0x0

    .line 60
    .local v27, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/miui/player/network/DownloadInfoManager;->getDownloadInfoByDownloadId(Landroid/content/Context;J)Ljava/util/Map$Entry;

    move-result-object v21

    .line 61
    .local v21, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 62
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #onlineId:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 63
    .restart local v11       #onlineId:Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    .end local v27           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    check-cast v27, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 64
    .restart local v27       #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    move-object/from16 v0, v27

    iget-object v12, v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDescription:Ljava/lang/String;

    .line 67
    :cond_3
    const/16 v34, 0x0

    .line 69
    .local v34, retry:Z
    if-eqz v12, :cond_5

    .line 70
    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v28, json:Lorg/json/JSONObject;
    const-string v3, "album"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, album:Ljava/lang/String;
    const-string v3, "artist"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, artist:Ljava/lang/String;
    const-string v3, "track"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, track:Ljava/lang/String;
    const-string v3, "mp3"

    invoke-static {v6, v8, v3}, Lcom/miui/player/meta/MetaManager;->getMetaFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, appointName:Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    const-string v3, "status"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 78
    .local v35, status:I
    const-string v3, "local_filename"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 79
    .local v32, path:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/miui/player/network/DownloadProvider;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    invoke-static/range {v32 .. v32}, Lcom/miui/player/receiver/OpenDownloadReceiver;->needReport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v3, v11, v1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->postDownloadStatus(Landroid/content/Context;ZLjava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;)V

    .line 82
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v12, v3}, Lcom/miui/player/network/MP3Downloader;->correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v3, Lcom/miui/player/meta/AlbumInfo;

    const-wide/16 v4, -0x1

    invoke-direct/range {v3 .. v8}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v3, v11}, Lcom/miui/player/network/AlbumDownloader;->downloadByOnlineId(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v6, v8}, Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v11, v4}, Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    .line 105
    :cond_4
    :goto_1
    if-nez v34, :cond_5

    .line 106
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/miui/player/network/DownloadInfoManager;->unregister(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v6           #track:Ljava/lang/String;
    .end local v7           #album:Ljava/lang/String;
    .end local v8           #artist:Ljava/lang/String;
    .end local v13           #appointName:Ljava/lang/String;
    .end local v28           #json:Lorg/json/JSONObject;
    .end local v32           #path:Ljava/lang/String;
    .end local v35           #status:I
    :cond_5
    :goto_2
    if-nez v34, :cond_0

    .line 116
    new-instance v24, Landroid/content/Intent;

    const-string v3, "com.miui.player.DOWNLOAD_COMPLETED"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v24, i:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 87
    .end local v24           #i:Landroid/content/Intent;
    .restart local v6       #track:Ljava/lang/String;
    .restart local v7       #album:Ljava/lang/String;
    .restart local v8       #artist:Ljava/lang/String;
    .restart local v13       #appointName:Ljava/lang/String;
    .restart local v28       #json:Lorg/json/JSONObject;
    .restart local v32       #path:Ljava/lang/String;
    .restart local v35       #status:I
    :cond_6
    :try_start_1
    invoke-static/range {v32 .. v32}, Lcom/miui/player/receiver/OpenDownloadReceiver;->needReport(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 88
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v3, v11, v1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->postDownloadStatus(Landroid/content/Context;ZLjava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;)V

    .line 90
    :cond_7
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/miui/player/network/DownloadInfoManager;->getCandidates(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 91
    .local v19, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    const-string v3, "mp3"

    invoke-static {v3}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 92
    .local v20, dir:Ljava/io/File;
    if-eqz v19, :cond_4

    if-eqz v20, :cond_4

    .line 93
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 94
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 97
    const/16 v34, 0x1

    .line 98
    goto :goto_1

    .line 100
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 112
    .end local v6           #track:Ljava/lang/String;
    .end local v7           #album:Ljava/lang/String;
    .end local v8           #artist:Ljava/lang/String;
    .end local v13           #appointName:Ljava/lang/String;
    .end local v19           #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    .end local v20           #dir:Ljava/io/File;
    .end local v28           #json:Lorg/json/JSONObject;
    .end local v32           #path:Ljava/lang/String;
    .end local v35           #status:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 119
    .end local v11           #onlineId:Ljava/lang/String;
    .end local v12           #details:Ljava/lang/String;
    .end local v21           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    .end local v27           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    .end local v34           #retry:Z
    :cond_9
    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/16 v17, 0x1

    .line 121
    .local v17, allDownloadSuccess:Z
    const-string v3, "status"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 122
    .local v36, statusIdx:I
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_a

    .line 123
    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 124
    .restart local v35       #status:I
    invoke-static/range {v35 .. v35}, Lcom/miui/player/network/DownloadProvider;->isStatusSuccess(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 125
    const/16 v17, 0x0

    .line 130
    .end local v35           #status:I
    :cond_a
    if-eqz v17, :cond_d

    .line 131
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, "local_uri"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 133
    .local v23, filename:Ljava/lang/String;
    const-string v3, "media_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 134
    .local v31, mimetype:Ljava/lang/String;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v29, launchIntent:Landroid/content/Intent;
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 137
    .local v32, path:Landroid/net/Uri;
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    .line 138
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v32

    .line 140
    :cond_b
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v3, 0x1000

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v22

    .line 145
    .local v22, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 122
    .end local v22           #ex:Landroid/content/ActivityNotFoundException;
    .end local v23           #filename:Ljava/lang/String;
    .end local v29           #launchIntent:Landroid/content/Intent;
    .end local v31           #mimetype:Ljava/lang/String;
    .end local v32           #path:Landroid/net/Uri;
    .restart local v35       #status:I
    :cond_c
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 151
    .end local v35           #status:I
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/miui/player/receiver/OpenDownloadReceiver;->openDownloadList(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
