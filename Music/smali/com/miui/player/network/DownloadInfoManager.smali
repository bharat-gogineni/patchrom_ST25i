.class public Lcom/miui/player/network/DownloadInfoManager;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    }
.end annotation


# static fields
.field private static sOnlineIdToCandidateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$OnlineDownloading;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v2, "online_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public static declared-synchronized getCandidates(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-class v2, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 140
    sget-object v1, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 141
    .local v0, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mCandidates:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    .end local v0           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getDownloadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 151
    const-class v3, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 152
    sget-object v1, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 153
    .local v0, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDownloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 151
    .end local v0           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static declared-synchronized getDownloadInfoByDownloadId(Landroid/content/Context;J)Ljava/util/Map$Entry;
    .locals 7
    .parameter "context"
    .parameter "downloadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-class v4, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 163
    sget-object v3, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    .line 167
    .local v1, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    if-eqz v1, :cond_0

    iget-wide v5, v1, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;->mDownloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v5, p1

    if-nez v3, :cond_0

    .line 172
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    .end local v1           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    :goto_0
    monitor-exit v4

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static initializeFromDB(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 44
    sget-object v8, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    sput-object v8, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    .line 50
    new-instance v16, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct/range {v16 .. v16}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 51
    .local v16, query:Landroid/app/MiuiDownloadManager$Query;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/app/MiuiDownloadManager$Query;->setFilterByNotificationPackage(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    .line 52
    const/4 v8, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/app/MiuiDownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 56
    const-string v8, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/DownloadManager;

    .line 57
    .local v10, dm:Landroid/app/DownloadManager;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v11

    .line 58
    .local v11, dmCurosr:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 60
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 61
    const-string v8, "_id"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-static {v11, v8}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v12

    .line 62
    .local v12, in:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v18, Lcom/miui/player/provider/PlayerStore$OnlineDownloading;->EXTERNAL_URI:Landroid/net/Uri;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "download_id in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .end local v12           #in:Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_3
    sget-object v4, Lcom/miui/player/provider/PlayerStore$OnlineDownloading;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v18, "online_id"

    aput-object v18, v5, v8

    const/4 v8, 0x1

    const-string v18, "download_id"

    aput-object v18, v5, v8

    const/4 v8, 0x2

    const-string v18, "link"

    aput-object v18, v5, v8

    const/4 v8, 0x3

    const-string v18, "bitrate"

    aput-object v18, v5, v8

    const/4 v8, 0x4

    const-string v18, "description"

    aput-object v18, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 84
    .local v15, plCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 86
    :try_start_1
    sget-object v13, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    .line 87
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 88
    const/4 v8, 0x0

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 89
    .local v14, onlineId:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 90
    .local v4, downloadId:J
    const/4 v8, 0x2

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 91
    .local v17, url:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 92
    .local v9, bitrate:I
    const/4 v8, 0x4

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, description:Ljava/lang/String;
    if-eqz v17, :cond_4

    new-instance v6, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    move-object/from16 v0, v17

    invoke-direct {v6, v0, v9}, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;-><init>(Ljava/lang/String;I)V

    .line 95
    .local v6, link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :goto_2
    new-instance v3, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;-><init>(JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/util/List;)V

    .line 96
    .local v3, info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    .end local v3           #info:Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;
    .end local v4           #downloadId:J
    .end local v6           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    .end local v7           #description:Ljava/lang/String;
    .end local v9           #bitrate:I
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    .end local v14           #onlineId:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v8

    .line 68
    .end local v15           #plCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v8

    .line 94
    .restart local v4       #downloadId:J
    .restart local v7       #description:Ljava/lang/String;
    .restart local v9       #bitrate:I
    .restart local v13       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;>;"
    .restart local v14       #onlineId:Ljava/lang/String;
    .restart local v15       #plCursor:Landroid/database/Cursor;
    .restart local v17       #url:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 99
    .end local v4           #downloadId:J
    .end local v7           #description:Ljava/lang/String;
    .end local v9           #bitrate:I
    .end local v14           #onlineId:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static insert(Landroid/content/Context;Ljava/lang/String;JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "onlineId"
    .parameter "downloadId"
    .parameter "link"
    .parameter "description"

    .prologue
    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "online_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "download_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    if-eqz p4, :cond_0

    .line 111
    const-string v1, "link"

    iget-object v2, p4, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "bitrate"

    iget v2, p4, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mBitrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    :cond_0
    const-string v1, "description"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$OnlineDownloading;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 116
    return-void
.end method

.method public static declared-synchronized isDownloading(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 157
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 158
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter "onlineId"
    .parameter "id"
    .parameter "link"
    .parameter "descriptin"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p6, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    const-class v6, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 128
    sget-object v7, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/network/DownloadInfoManager$CandidateInfo;-><init>(JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static/range {p0 .. p5}, Lcom/miui/player/network/DownloadInfoManager;->insert(Landroid/content/Context;Ljava/lang/String;JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v6

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized unregister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 133
    const-class v1, Lcom/miui/player/network/DownloadInfoManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/miui/player/network/DownloadInfoManager;->initializeFromDB(Landroid/content/Context;)V

    .line 134
    sget-object v0, Lcom/miui/player/network/DownloadInfoManager;->sOnlineIdToCandidateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p0, p1}, Lcom/miui/player/network/DownloadInfoManager;->delete(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v1

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
