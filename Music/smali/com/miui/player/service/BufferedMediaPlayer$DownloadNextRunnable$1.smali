.class Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1236
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1237
    .local v1, remoteMediaInfo:Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v1, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 1240
    .local v0, audio:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    if-eqz v0, :cond_1

    .line 1241
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mCandidates:Ljava/util/List;

    .line 1242
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1243
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v3, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/miui/player/service/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    invoke-static {v3, v4, v2}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->updateDB(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)I

    .line 1245
    :cond_0
    iget-object v2, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, v2, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/service/RunnableList;

    sget-object v3, Lcom/miui/player/service/BufferedMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;

    iget-object v5, p0, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {v4, v5}, Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/service/BufferedMediaPlayer$DownloadNextRunnable;)V

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/miui/player/service/RunnableList;->add(Ljava/lang/String;Lcom/miui/player/service/RunnableList$RemovableRunnable;J)V

    .line 1248
    .end local v0           #audio:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    :cond_1
    return-void
.end method
