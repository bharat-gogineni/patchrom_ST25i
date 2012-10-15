.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excute([Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "items"
    .parameter "which"

    .prologue
    .line 1556
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v2, 0x7f09008b

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1564
    .local v0, item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v3, v3, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v4, v4, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mTrackName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v5, v5, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mArtistName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/miui/player/network/LyricDownloader;->download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    goto :goto_0
.end method
