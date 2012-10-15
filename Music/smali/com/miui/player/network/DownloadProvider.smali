.class public Lcom/miui/player/network/DownloadProvider;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# static fields
.field public static final DOWNLOAD_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/miui/player/network/DownloadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/DownloadProvider;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteByAppointName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "appointName"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/miui/player/network/DownloadProvider;->queryByAppointName(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    .line 82
    .local v1, ids:[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 83
    :cond_0
    const/4 v2, 0x0

    .line 87
    :goto_0
    return v2

    .line 86
    :cond_1
    const-string v2, "download"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 87
    .local v0, dm:Landroid/app/DownloadManager;
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v2

    goto :goto_0
.end method

.method public static deleteByUri(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 76
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 77
    .local v0, dm:Landroid/app/DownloadManager;
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v1

    return v1
.end method

.method public static isRawStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 182
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    return v0
.end method

.method public static isRawStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 173
    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 155
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryByAppointName(Landroid/content/Context;Ljava/lang/String;)[J
    .locals 9
    .parameter "context"
    .parameter "appointName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v5

    .line 95
    :cond_1
    const-string v7, "appointname=?"

    .line 96
    .local v7, where:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "appointname=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 104
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v6, v0}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "onlineId"

    .prologue
    const/4 v11, 0x0

    .line 114
    if-nez p0, :cond_1

    move-object v0, v11

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    .line 119
    goto :goto_0

    .line 122
    :cond_2
    invoke-static {p0, p1}, Lcom/miui/player/network/DownloadInfoManager;->getDownloadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 123
    .local v8, id:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_3

    move-object v0, v11

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    const-string v6, "(status >= \'100\') AND (status <= \'199\')"

    .line 129
    .local v6, WHERE_RUNNING_ALL:Ljava/lang/String;
    const-string v10, "(status >= \'100\') AND (status <= \'199\') AND _id= ?"

    .line 130
    .local v10, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 134
    .local v4, args:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 136
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(status >= \'100\') AND (status <= \'199\') AND _id= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    if-eqz v7, :cond_0

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 141
    :cond_4
    if-eqz v7, :cond_5

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    .line 146
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    const/4 v1, 0x1

    .line 187
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 188
    :cond_0
    const/4 v1, 0x0

    .line 195
    :goto_0
    return v1

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    invoke-virtual {p3, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "link"
    .parameter "onlineId"
    .parameter "details"
    .parameter "appointName"
    .parameter "sunDirectory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 32
    .local p6, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;
    .locals 14
    .parameter "context"
    .parameter "link"
    .parameter "onlineId"
    .parameter "details"
    .parameter "appointName"
    .parameter "subDirectory"
    .parameter
    .parameter "visible"
    .parameter "timeOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;ZJ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 38
    .local p6, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    if-nez p1, :cond_0

    .line 39
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 42
    :cond_0
    iget-object v13, p1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;->mURL:Ljava/lang/String;

    .line 43
    .local v13, url:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 44
    const/4 v2, 0x0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v12, Landroid/app/MiuiDownloadManager$Request;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/MiuiDownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 48
    .local v12, request:Landroid/app/MiuiDownloadManager$Request;
    invoke-static {v13}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, ext:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 51
    if-eqz p7, :cond_2

    .line 53
    const-string v2, "mp3"

    invoke-static {p0, v2}, Lcom/miui/player/meta/MetaManager;->makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/miui/player/meta/MetaManager;->getAppointFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 55
    .local v9, dst:Ljava/io/File;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 58
    invoke-virtual {v12}, Landroid/app/MiuiDownloadManager$Request;->allowScanningByMediaScanner()V

    .line 65
    .end local v9           #dst:Ljava/io/File;
    :goto_1
    move/from16 v0, p7

    invoke-virtual {v12, v0}, Landroid/app/MiuiDownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 66
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/app/MiuiDownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 67
    const-string v2, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setUserAgent(Ljava/lang/String;)V

    .line 69
    const-string v2, "download"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/DownloadManager;

    .line 70
    .local v11, manager:Landroid/app/DownloadManager;
    invoke-virtual {v11, v12}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    .local v4, id:J
    move-object v2, p0

    move-object/from16 v3, p2

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 71
    invoke-static/range {v2 .. v8}, Lcom/miui/player/network/DownloadInfoManager;->register(Landroid/content/Context;Ljava/lang/String;JLcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/util/List;)V

    .line 72
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3

    sget-object v2, Lcom/miui/player/network/DownloadProvider;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 61
    .end local v4           #id:J
    .end local v11           #manager:Landroid/app/DownloadManager;
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/app/MiuiDownloadManager$Request;->setAppointName(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Request;

    .line 62
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/MiuiDownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 72
    .restart local v4       #id:J
    .restart local v11       #manager:Landroid/app/DownloadManager;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 201
    return-void
.end method
