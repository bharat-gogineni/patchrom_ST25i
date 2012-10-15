.class final Lcom/miui/player/network/LyricDownloader$1;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    iput-object p3, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$1;->val$searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-static {v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->createLyricProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    move-result-object v0

    .line 103
    .local v0, provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    if-eqz v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-static {v0, v2}, Lcom/miui/player/network/LyricDownloader;->request(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z

    move-result v1

    .line 107
    :cond_0
    if-nez v1, :cond_1

    .line 108
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$1;->val$searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-static {v2, v3}, Lcom/miui/player/network/LyricDownloader;->createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-static {v0, v2}, Lcom/miui/player/network/LyricDownloader;->request(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 118
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    .line 120
    .end local v0           #provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v2

    .line 117
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 118
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v2

    .line 117
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 118
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 115
    :catch_2
    move-exception v2

    .line 117
    iget-object v2, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 118
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/player/network/LyricDownloader$1;->val$callback:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v3}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 118
    invoke-static {v1}, Lcom/miui/player/network/LyricDownloader;->statistics(Z)V

    throw v2
.end method
