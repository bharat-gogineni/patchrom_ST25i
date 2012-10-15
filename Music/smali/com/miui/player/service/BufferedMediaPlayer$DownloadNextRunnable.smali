.class Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Lcom/miui/player/service/RunnableList$RemovableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadNextRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;,
        Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mGotoDownload:Z

.field private mNextContentObserver:Landroid/database/ContentObserver;

.field mNextDownloadUri:Landroid/net/Uri;

.field mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

.field private final mNextTempDir:Ljava/lang/String;

.field private mNextTempName:Ljava/lang/String;

.field final mRunnableList:Lcom/miui/player/service/RunnableList;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/RunnableList;Ljava/lang/String;)V
    .locals 1
    .parameter "runnableList"
    .parameter "nextTempDir"

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1191
    iput-object p2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempDir:Ljava/lang/String;

    .line 1192
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/service/RunnableList;

    .line 1193
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    .line 1306
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/service/RunnableList;

    invoke-static {v0, v1, v2}, Lcom/miui/player/service/BufferedMediaPlayer;->deleteRecord(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/service/RunnableList;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1315
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "nextId"
    .parameter "nextName"

    .prologue
    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1198
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 1199
    iput-object p5, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    .line 1200
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    .line 1201
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;

    invoke-direct {v0, p0, p2}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;-><init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    .line 1202
    invoke-static {p1, p3, p4}, Lcom/miui/player/network/MP3Downloader;->getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1206
    return-void

    .line 1205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDownload()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1209
    iget-boolean v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v4, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return v3

    .line 1213
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1214
    .local v1, remoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v1, :cond_0

    .line 1217
    iget-object v4, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    const-string v5, "mp3"

    invoke-static {v4, v5}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1218
    .local v0, localMedia:Ljava/io/File;
    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/miui/player/network/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1220
    .local v2, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->needDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1232
    :cond_0
    new-instance v0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;

    invoke-direct {v0, p0}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;-><init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method tryToDownload()V
    .locals 15

    .prologue
    const/4 v0, 0x0

    .line 1259
    iget-object v12, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1260
    .local v12, remoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-nez v12, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    iget-object v10, v12, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mCandidates:Ljava/util/List;

    .line 1264
    .local v10, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    if-eqz v10, :cond_0

    .line 1267
    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    .line 1275
    sget-object v14, Lcom/miui/player/service/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1276
    const/4 v11, 0x0

    .line 1277
    .local v11, isSuccess:Z
    :try_start_0
    new-instance v13, Lcom/miui/player/service/OnlinePlayStatstics;

    iget-object v0, v12, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-direct {v13, v0}, Lcom/miui/player/service/OnlinePlayStatstics;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v13, stat:Lcom/miui/player/service/OnlinePlayStatstics;
    sput-object v13, Lcom/miui/player/service/BufferedMediaPlayer;->sGlobalStastics:Lcom/miui/player/service/OnlinePlayStatstics;

    .line 1280
    :goto_1
    if-nez v11, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-eqz v0, :cond_3

    .line 1281
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;

    .line 1282
    .local v1, link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    if-nez v1, :cond_2

    .line 1280
    :goto_2
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1294
    .end local v1           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    .end local v13           #stat:Lcom/miui/player/service/OnlinePlayStatstics;
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1286
    .restart local v1       #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    .restart local v13       #stat:Lcom/miui/player/service/OnlinePlayStatstics;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v0, v1}, Lcom/miui/player/service/OnlinePlayStatstics;->setAudioLink(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;)V

    .line 1287
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    iget-object v3, v12, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempDir:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    invoke-static/range {v0 .. v9}, Lcom/miui/player/network/DownloadProvider;->start(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZJ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    .line 1290
    sget-object v0, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare candidates "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v3, v4}, Lcom/miui/player/network/DownloadProvider;->registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z

    move-result v11

    goto :goto_2

    .line 1294
    .end local v1           #link:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;
    :cond_3
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
