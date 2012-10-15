.class Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;
.super Landroid/database/ContentObserver;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    .line 1323
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1324
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    .line 1328
    const/4 v10, 0x0

    .line 1330
    .local v10, unregister:Z
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-boolean v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 1332
    :cond_0
    const/4 v10, 0x1

    .line 1362
    if-eqz v10, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {v1, p0}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1367
    :cond_1
    :goto_1
    return-void

    .line 1336
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1337
    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1338
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 1339
    const/4 v10, 0x1

    .line 1362
    if-eqz v10, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 1343
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1344
    const-string v1, "current_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1345
    .local v7, currentBytes:J
    const-string v1, "total_bytes"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1346
    .local v9, status:I
    invoke-static {v9}, Lcom/miui/player/network/DownloadProvider;->isRawStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1347
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1348
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v2, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;

    iget-object v4, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {v3, v4}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1359
    .end local v7           #currentBytes:J
    .end local v9           #status:I
    :cond_4
    :goto_2
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1362
    if-eqz v10, :cond_5

    .line 1363
    iget-object v1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v1, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1366
    :cond_5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_1

    .line 1349
    .restart local v7       #currentBytes:J
    .restart local v9       #status:I
    :cond_6
    :try_start_4
    invoke-static {v9}, Lcom/miui/player/network/DownloadProvider;->isRawStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide/32 v1, 0x80000

    cmp-long v1, v7, v1

    if-lez v1, :cond_4

    .line 1352
    :cond_7
    const/4 v10, 0x1

    .line 1353
    sget-object v1, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    const-string v2, "prepare next song success, no need to observe!"

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1359
    .end local v7           #currentBytes:J
    .end local v9           #status:I
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1362
    .end local v0           #res:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_8

    .line 1363
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/miui/player/network/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 1362
    :cond_8
    throw v1

    .line 1356
    .restart local v0       #res:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_9
    const/4 v10, 0x1

    goto :goto_2
.end method
