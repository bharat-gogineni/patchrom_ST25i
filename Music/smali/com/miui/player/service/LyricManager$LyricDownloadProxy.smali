.class Lcom/miui/player/service/LyricManager$LyricDownloadProxy;
.super Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.source "LyricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/LyricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LyricDownloadProxy"
.end annotation


# instance fields
.field private final mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

.field private final mContext:Landroid/content/Context;

.field private final mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V
    .locals 0
    .parameter "context"
    .parameter "actual"
    .parameter "info"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    .line 201
    iput-object p3, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    .line 202
    iput-object p1, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mContext:Landroid/content/Context;

    .line 203
    return-void
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->isAutoChoose()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/player/service/LyricManager$SearchAndDownload;

    iget-object v2, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mSearchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-direct {v1, v2}, Lcom/miui/player/service/LyricManager$SearchAndDownload;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)V

    iget-object v2, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-static {v0, v1, v2}, Lcom/miui/player/service/LyricManager;->download(Landroid/content/Context;Lcom/miui/player/service/LyricManager$LyricCommand;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    goto :goto_0
.end method

.method public setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    .locals 1
    .parameter "provider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinelyric/LyricProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, info:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    invoke-super {p0, p1, p2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/miui/player/service/LyricManager$LyricDownloadProxy;->mActual:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    .line 214
    return-void
.end method
