.class Lcom/miui/player/service/AsyncMusicPlayer$3;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 435
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer$3;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer$3;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, v1, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;

    iget-object v2, p0, Lcom/miui/player/service/AsyncMusicPlayer$3;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/miui/player/service/AsyncMusicPlayer$ErrorMessage;-><init>(Lcom/miui/player/service/AsyncMusicPlayer;Landroid/media/MediaPlayer;II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer$3;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, v1, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    const/4 v1, 0x1

    return v1
.end method
