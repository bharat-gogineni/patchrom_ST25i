.class final Lcom/miui/player/network/LyricDownloader$3;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/network/LyricDownloader;->download(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onlineId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$3;->val$onlineId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/player/network/LyricDownloader$3;->val$onlineId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->queryLyricURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 173
    .local v4, url:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 191
    if-eqz v2, :cond_0

    .line 193
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    .line 199
    .end local v4           #url:Ljava/lang/String;
    :goto_1
    return-void

    .line 177
    .restart local v4       #url:Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;-><init>()V

    .line 178
    .local v1, info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-virtual {v1, v4}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->setLink(Ljava/lang/Object;)V

    .line 180
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$context:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/miui/player/network/OnlineMusicProxy;->requestStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_2

    .line 182
    invoke-static {v2}, Lcom/xiaomi/common/util/StreamHelper;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 183
    .local v0, content:[B
    if-eqz v0, :cond_2

    .line 184
    invoke-static {v0}, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory;->create([B)Lcom/miui/player/plugin/onlinelyric/LyricContent;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->setContent(Lcom/miui/player/plugin/onlinelyric/LyricContent;)V

    .line 185
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 186
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    .end local v0           #content:[B
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 193
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 197
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    goto :goto_1

    .line 189
    .end local v1           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 191
    if-eqz v2, :cond_4

    .line 193
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v5}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_5

    .line 193
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/miui/player/network/LyricDownloader$3;->val$cbk:Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v6}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->run()V

    throw v5

    .line 194
    .restart local v4       #url:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0

    .restart local v1       #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    .end local v4           #url:Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_4
.end method
