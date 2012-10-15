.class Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricOpenRunnable"
.end annotation


# instance fields
.field private final rArtist:Ljava/lang/String;

.field private final rTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/service/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "artist"

    .prologue
    .line 2688
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 2689
    iput-object p2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    .line 2690
    iput-object p3, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    .line 2691
    return-void
.end method

.method private isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v2, 0x0

    .line 2711
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return v2

    .line 2715
    :cond_1
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/service/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 2716
    .local v1, currentTrackName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/service/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 2718
    .local v0, currentArtistName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 2724
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2695
    const/4 v0, 0x0

    .line 2696
    .local v0, lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->mInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2697
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->mInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getContent()Lcom/miui/player/plugin/onlinelyric/LyricContent;

    move-result-object v0

    .line 2698
    if-eqz v0, :cond_0

    .line 2699
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/miui/player/service/LyricManager;->saveLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z

    .line 2702
    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2708
    :goto_0
    return-void

    .line 2706
    :cond_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2707
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v2, v2, Lcom/miui/player/service/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
