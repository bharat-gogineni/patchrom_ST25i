.class final Lcom/miui/player/network/MP3Downloader$1;
.super Landroid/os/AsyncTask;
.source "MP3Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;",
        "Ljava/util/List",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runOnStartDownload:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Audio;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iput-object p2, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v2, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v0, v2, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    .line 53
    .local v0, links:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    invoke-virtual {v3}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 58
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    :goto_0
    return-object v1

    .line 56
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    :cond_1
    iget-object v2, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v2, v2, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iget-object v3, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .restart local v1       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3Downloader$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    const/4 v2, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    .line 68
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/network/MP3Downloader$1;->val$audio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    invoke-static {v0, v1}, Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/common/util/Network;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    const v1, 0x7f090006

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$runOnStartDownload:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_2
    return-void

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/miui/player/network/MP3Downloader$1;->val$context:Landroid/content/Context;

    const v1, 0x7f090005

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3Downloader$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
