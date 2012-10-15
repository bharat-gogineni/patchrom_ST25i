.class Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 501
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_2

    .line 502
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getUpdateVersion()I

    move-result v0

    .line 505
    .local v0, updateVersion:I
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mUpdateVersion:I

    if-eq v1, v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iput v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mUpdateVersion:I

    .line 508
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v0           #updateVersion:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 517
    :cond_1
    :goto_1
    return-void

    .line 514
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 515
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mSpectrumVisualizer:Lmiui/widget/SpectrumVisualizer;

    invoke-virtual {v1, v3}, Lmiui/widget/SpectrumVisualizer;->enableUpdate(Z)V

    goto :goto_1

    .line 510
    :catch_0
    move-exception v1

    goto :goto_0
.end method
