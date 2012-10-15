.class public Lcom/miui/player/network/MP3DownloadTask;
.super Landroid/os/AsyncTask;
.source "MP3DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/network/MP3DownloadTask$AudioWrap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRefreshRunnable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSongItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/miui/player/network/MP3DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/MP3DownloadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/player/plugin/onlinemusic2/AudioList;)V
    .locals 1
    .parameter "context"
    .parameter "runnable"
    .parameter "list"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/player/network/MP3DownloadTask;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/network/MP3DownloadTask;->mRefreshRunnable:Ljava/lang/ref/WeakReference;

    .line 30
    iget-object v0, p3, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    iput-object v0, p0, Lcom/miui/player/network/MP3DownloadTask;->mSongItemList:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 42
    iget-object v4, p0, Lcom/miui/player/network/MP3DownloadTask;->mSongItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 44
    .local v0, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 45
    new-instance v3, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;

    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    iget-object v5, v0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    invoke-direct {v3, v0, v4, v5}, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;-><init>(Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/util/List;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)V

    .line 56
    .local v3, wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    :goto_1
    if-eqz v3, :cond_0

    .line 57
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/miui/player/network/MP3DownloadTask$AudioWrap;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/miui/player/network/MP3DownloadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v3           #wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/network/MP3DownloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 49
    .local v2, p:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 50
    new-instance v3, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    invoke-direct {v3, v0, v4, v5}, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;-><init>(Lcom/miui/player/plugin/onlinemusic2/Audio;Ljava/util/List;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)V

    .restart local v3       #wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    goto :goto_1

    .line 52
    .end local v3           #wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    goto :goto_1

    .line 60
    .end local v0           #audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v2           #p:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    .end local v3           #wrap:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/network/MP3DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/common/util/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-gez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/player/network/MP3DownloadTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090005

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/network/MP3DownloadTask$AudioWrap;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 66
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    aget-object v3, p1, v4

    if-eqz v3, :cond_0

    .line 67
    aget-object v1, p1, v4

    .line 68
    .local v1, item:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    iget-object v0, v1, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mAudio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 69
    .local v0, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    if-eqz v0, :cond_0

    .line 70
    iget-object v3, v1, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mAudio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v4, v1, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    iput-object v4, v3, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    .line 71
    iget-object v3, v1, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mAudio:Lcom/miui/player/plugin/onlinemusic2/Audio;

    iget-object v4, v1, Lcom/miui/player/network/MP3DownloadTask$AudioWrap;->mLinks:Ljava/util/List;

    iput-object v4, v3, Lcom/miui/player/plugin/onlinemusic2/Audio;->mAudioLinks:Ljava/util/List;

    .line 73
    iget-object v3, p0, Lcom/miui/player/network/MP3DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/miui/player/network/MP3Downloader;->startOnUIThread(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/Audio;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/miui/player/network/MP3DownloadTask;->mRefreshRunnable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 75
    .local v2, r:Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 81
    .end local v0           #audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v1           #item:Lcom/miui/player/network/MP3DownloadTask$AudioWrap;
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Lcom/miui/player/network/MP3DownloadTask$AudioWrap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/network/MP3DownloadTask;->onProgressUpdate([Lcom/miui/player/network/MP3DownloadTask$AudioWrap;)V

    return-void
.end method
