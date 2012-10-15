.class Lcom/miui/player/service/MediaPlaybackService$11;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 1642
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$11;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 1645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$11;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-wide v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mSleepTriggerTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/miui/player/service/BufferedMediaPlayer;->getLongFadeOutTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$11;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->position()J

    .line 1648
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$11;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/service/MediaPlaybackService;->duration()J

    .line 1649
    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$11;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1651
    :cond_0
    return-void
.end method
