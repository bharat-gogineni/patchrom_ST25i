.class final Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;
.super Ljava/lang/Thread;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AsyncMusicPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 234
    :goto_0
    const/4 v1, 0x0

    .line 235
    .local v1, cmd:Lcom/miui/player/service/AsyncMusicPlayer$Command;
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v8

    .line 236
    :try_start_0
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/AsyncMusicPlayer;->popNextUsableCommand()Lcom/miui/player/service/AsyncMusicPlayer$Command;

    move-result-object v1

    .line 237
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get next command "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget v7, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->code:I

    packed-switch v7, :pswitch_data_0

    .line 316
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v8

    .line 317
    :try_start_1
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 324
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mThread:Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;

    .line 325
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    .line 237
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 242
    :pswitch_0
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v7, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->startSound(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    goto :goto_1

    .line 245
    :pswitch_1
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_0

    .line 246
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->start()V

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v7, :cond_0

    .line 251
    iget-object v7, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 252
    .local v6, stopNextDownload:Z
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7, v6}, Lcom/miui/player/service/BufferedMediaPlayer;->reset(Z)V

    .line 253
    if-eqz v6, :cond_0

    .line 254
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iput v11, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    goto :goto_1

    .line 260
    .end local v6           #stopNextDownload:Z
    :pswitch_3
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v7, :cond_0

    .line 261
    iget-object v4, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 262
    .local v4, pos:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_2

    .line 263
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 268
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/player/service/BufferedMediaPlayer;->seekTo(I)V

    .line 269
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v8, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x68

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 264
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v8, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v8}, Lcom/miui/player/service/BufferedMediaPlayer;->getDuration()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 265
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->getDuration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 274
    .end local v4           #pos:Ljava/lang/Integer;
    :pswitch_4
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 275
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    invoke-virtual {v7}, Lcom/miui/player/service/BufferedMediaPlayer;->pause()V

    goto/16 :goto_1

    .line 280
    :pswitch_5
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    if-eqz v7, :cond_0

    .line 281
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v7, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/service/BufferedMediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/miui/player/service/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 282
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iput v11, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mNextId:I

    goto/16 :goto_1

    .line 287
    :pswitch_6
    iget-object v2, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;

    .line 288
    .local v2, info:Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;
    iget-object v5, v2, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;->runnable:Lcom/miui/player/service/RunnableList$RemovableRunnable;

    .line 289
    .local v5, rr:Lcom/miui/player/service/RunnableList$RemovableRunnable;
    invoke-interface {v5}, Lcom/miui/player/service/RunnableList$RemovableRunnable;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 290
    iget-wide v7, v2, Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 291
    invoke-interface {v5}, Lcom/miui/player/service/RunnableList$RemovableRunnable;->run()V

    goto/16 :goto_1

    .line 294
    :cond_3
    const-wide/16 v7, 0xc8

    :try_start_3
    invoke-static {v7, v8}, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->sleep(J)V

    .line 295
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 296
    :try_start_4
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v9, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/miui/player/service/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 297
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v7, v1}, Lcom/miui/player/service/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/service/AsyncMusicPlayer$Command;)V

    .line 298
    monitor-exit v8

    goto/16 :goto_1

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 299
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 305
    .end local v2           #info:Lcom/miui/player/service/AsyncMusicPlayer$RunnableInfo;
    .end local v5           #rr:Lcom/miui/player/service/RunnableList$RemovableRunnable;
    :pswitch_7
    iget-object v3, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 306
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v8, v7, Lcom/miui/player/service/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v8

    .line 307
    :try_start_6
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v7, v3}, Lcom/miui/player/service/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 308
    monitor-exit v8

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 311
    .end local v3           #name:Ljava/lang/String;
    :pswitch_8
    iget-object v0, v1, Lcom/miui/player/service/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 312
    .local v0, c:Landroid/content/Context;
    iget-object v7, p0, Lcom/miui/player/service/AsyncMusicPlayer$WorkThread;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v7, v0}, Lcom/miui/player/service/AsyncMusicPlayer;->releaseAll(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 327
    .end local v0           #c:Landroid/content/Context;
    :cond_4
    :try_start_7
    monitor-exit v8

    goto/16 :goto_0

    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
