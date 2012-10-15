.class final Lcom/miui/player/network/LyricDownloader$2;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/LyricDownloader;->download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

.field final synthetic val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

.field final synthetic val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    iput-object p3, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-interface {v2, v3}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestItem(Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-virtual {v2, v3, v0}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    const/4 v1, 0x1

    .line 150
    .end local v0           #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 151
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    .line 153
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    .line 150
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 151
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 147
    :catch_1
    move-exception v2

    .line 150
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 151
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 148
    :catch_2
    move-exception v2

    .line 150
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 151
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$2;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v3}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 151
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    throw v2
.end method
