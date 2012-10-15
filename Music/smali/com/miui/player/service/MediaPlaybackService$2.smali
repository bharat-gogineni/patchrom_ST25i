.class Lcom/miui/player/service/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, action:Ljava/lang/String;
    const-string v8, "command"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, cmd:Ljava/lang/String;
    sget-object v8, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v9, "mIntentReceiver.onReceive action=%s, cmd=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-static {v8, v9, v10}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const-string v8, "next"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    :cond_0
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    const-string v8, "previous"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 322
    :cond_3
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 323
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 325
    :cond_4
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 327
    :cond_5
    const-string v8, "togglepause"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 328
    :cond_6
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 329
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 331
    :cond_7
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 333
    :cond_8
    const-string v8, "pause"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 334
    :cond_9
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 335
    :cond_a
    const-string v8, "play"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 336
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 337
    :cond_b
    const-string v8, "stop"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 338
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 339
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 340
    :cond_c
    const-string v8, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 341
    const-string v8, "lyric"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 342
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v9, "meta_changed_lyric"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 343
    :cond_d
    const-string v8, "album"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 344
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v9, "meta_changed_album"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 345
    :cond_e
    const-string v8, "track"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 346
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v9, "meta_changed_track"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 348
    :cond_f
    const-string v8, "com.miui.player.updateshake"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 349
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v8, v8, Lcom/miui/player/service/MediaPlaybackService;->mShakeListener:Lcom/miui/player/service/ShakeListener;

    invoke-virtual {v8}, Lcom/miui/player/service/ShakeListener;->onUpdatePref()V

    goto/16 :goto_0

    .line 350
    :cond_10
    const-string v8, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 351
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->quit()V

    goto/16 :goto_0

    .line 352
    :cond_11
    const-string v8, "com.miui.player.seek"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 353
    const/4 v7, 0x0

    .line 354
    .local v7, valid:Z
    const-string v8, "online_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, onlineId:Ljava/lang/String;
    if-eqz v4, :cond_13

    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v7, 0x1

    .line 356
    :goto_1
    if-nez v7, :cond_12

    .line 357
    const-string v8, "local_id"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 358
    .local v2, localId:J
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-nez v8, :cond_14

    const/4 v7, 0x1

    .line 361
    .end local v2           #localId:J
    :cond_12
    :goto_2
    if-eqz v7, :cond_1

    .line 362
    const-string v8, "seek_position"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 363
    .local v5, pos:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-ltz v8, :cond_1

    .line 364
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$2;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8, v5, v6}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    goto/16 :goto_0

    .line 355
    .end local v5           #pos:J
    :cond_13
    const/4 v7, 0x0

    goto :goto_1

    .line 358
    .restart local v2       #localId:J
    :cond_14
    const/4 v7, 0x0

    goto :goto_2
.end method
