.class Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/controller/TimeIndicatorController$OnProgressSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPlayerSeekListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public seek(II)V
    .locals 7
    .parameter "progress"
    .parameter "max"

    .prologue
    .line 788
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 790
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 791
    .local v0, duration:J
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    int-to-long v3, p1

    mul-long/2addr v3, v0

    int-to-long v5, p2

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/miui/player/service/IMediaPlaybackService;->seek(J)J

    .line 794
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    sget-object v3, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget v4, v4, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    .end local v0           #duration:J
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v2

    goto :goto_0
.end method
