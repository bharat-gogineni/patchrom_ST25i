.class Lcom/miui/player/service/AsyncMusicPlayer$2;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 412
    iput-object p1, p0, Lcom/miui/player/service/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, v1, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/miui/player/service/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/service/AsyncMusicPlayer;

    iget-object v1, v1, Lcom/miui/player/service/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    return-void
.end method
