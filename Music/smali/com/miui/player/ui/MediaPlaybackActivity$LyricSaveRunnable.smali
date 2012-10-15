.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricSaveRunnable"
.end annotation


# instance fields
.field private final mArtistName:Ljava/lang/String;

.field private final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "track"
    .parameter "artist"

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 1577
    iput-object p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mTrackName:Ljava/lang/String;

    .line 1578
    iput-object p3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mArtistName:Ljava/lang/String;

    .line 1579
    return-void
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 1583
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1588
    const/4 v0, 0x0

    .line 1589
    .local v0, content:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getContent()Lcom/miui/player/plugin/onlinelyric/LyricContent;

    move-result-object v0

    .line 1593
    :cond_0
    if-eqz v0, :cond_1

    .line 1594
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mTrackName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/miui/player/service/LyricManager;->saveLyricFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z

    .line 1597
    :cond_1
    move-object v1, v0

    .line 1598
    .local v1, lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;Lcom/miui/player/plugin/onlinelyric/LyricContent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1616
    return-void
.end method
