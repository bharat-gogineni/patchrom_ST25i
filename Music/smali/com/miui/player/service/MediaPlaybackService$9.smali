.class Lcom/miui/player/service/MediaPlaybackService$9;
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
    .line 866
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 870
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mPauseState:Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService$AutoPauseState;->isEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-boolean v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mServiceInUse:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->saveQueue(Z)V

    .line 878
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$9;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v1, v1, Lcom/miui/player/service/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {v0, v1}, Lcom/miui/player/service/MediaPlaybackService;->stopSelf(I)V

    .line 880
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 881
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
