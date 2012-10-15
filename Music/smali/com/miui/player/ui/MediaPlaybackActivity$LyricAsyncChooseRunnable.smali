.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricAsyncChooseRunnable"
.end annotation


# instance fields
.field final mArtistName:Ljava/lang/String;

.field final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "track"
    .parameter "artist"

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 1489
    iput-object p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mTrackName:Ljava/lang/String;

    .line 1490
    iput-object p3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mArtistName:Ljava/lang/String;

    .line 1491
    return-void
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 1495
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 1500
    const/4 v5, 0x0

    .line 1501
    .local v5, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1502
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1503
    .restart local v5       #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1504
    .local v7, info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1508
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v8, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mTrackName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1509
    return-void
.end method
