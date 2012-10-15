.class Lcom/miui/player/service/AsyncMusicPlayer$1;
.super Landroid/os/Handler;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/service/AsyncMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 368
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 396
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :pswitch_0
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_0

    .line 371
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;

    .line 372
    .local v0, errMsg:Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v4, v0, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;->mp:Landroid/media/MediaPlayer;

    iget v5, v0, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;->what:I

    iget v6, v0, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;->extra:I

    invoke-interface {v3, v4, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 398
    .end local v0           #errMsg:Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v4, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/MediaPlayer;

    invoke-interface {v4, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;

    .line 382
    .local v1, objFailed:Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

    iget-object v4, v1, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;->path:Ljava/lang/String;

    iget-object v5, v1, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;->extra:Ljava/lang/Object;

    iget-object v6, v1, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;->exception:Ljava/lang/Exception;

    invoke-interface {v3, v4, v5, v6}, Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;->onPrepareFailed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 387
    .end local v1           #objFailed:Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;

    .line 388
    .local v2, objSuc:Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

    iget-object v4, v2, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;->path:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;->extra:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;->onPrepareSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    .end local v2           #objSuc:Lcom/miui/player/service/AsyncMusicPlayer$MessageObj;
    :pswitch_4
    iget-object v3, p0, Lcom/miui/player/service/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v3, v3, Lcom/miui/player/service/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;->onSeeked(I)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
