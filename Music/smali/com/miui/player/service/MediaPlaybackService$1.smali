.class Lcom/miui/player/service/MediaPlaybackService$1;
.super Landroid/os/Handler;
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
    .line 221
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 224
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaplayerHandler.handleMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 227
    :pswitch_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-boolean v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v5}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->openCurrent()V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mRepeatMode:I

    if-ne v2, v5, :cond_2

    .line 239
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->accumulateCurrent()V

    .line 240
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    .line 241
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 255
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_1

    .line 281
    :pswitch_5
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "Unknown audio focus change code"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :pswitch_6
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 260
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->clear()V

    goto :goto_0

    .line 265
    :pswitch_7
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus: received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-boolean v0, v2, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 268
    .local v0, isSupposedToBePlaying:Z
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    sget v3, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_AUDIO_FOCUS:I

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->add(I)V

    goto/16 :goto_0

    .line 275
    .end local v0           #isSupposedToBePlaying:Z
    :pswitch_8
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    sget v3, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_AUDIO_FOCUS:I

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 285
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 286
    .local v1, state:I
    if-nez v1, :cond_3

    .line 287
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "CallState: goto idle"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    sget v3, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_CALL_STATE:I

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 292
    :cond_3
    sget-object v2, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v3, "CallState: leave idle"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-boolean v0, v2, Lcom/miui/player/service/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 295
    .restart local v0       #isSupposedToBePlaying:Z
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/service/MediaPlaybackService;->pause()V

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    sget v3, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->TYPE_CALL_STATE:I

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->add(I)V

    goto/16 :goto_0

    .line 305
    .end local v0           #isSupposedToBePlaying:Z
    .end local v1           #state:I
    :pswitch_a
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$1;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/service/MediaPlaybackService$CheckAction;

    invoke-virtual {v3, p0, v4, v5, v2}, Lcom/miui/player/service/MediaPlaybackService;->loopCheck(Landroid/os/Handler;IILcom/miui/player/service/MediaPlaybackService$CheckAction;)V

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
