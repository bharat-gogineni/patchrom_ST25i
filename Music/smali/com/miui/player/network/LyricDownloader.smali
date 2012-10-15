.class public Lcom/miui/player/network/LyricDownloader;
.super Ljava/lang/Object;
.source "LyricDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/LyricDownloader$LyricAsyncSaveCallback;,
        Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/miui/player/network/LyricDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/LyricDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 207
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 208
    .local v1, mgr:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v2

    .line 210
    .local v2, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :try_start_0
    instance-of v3, v2, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;

    if-eqz v3, :cond_0

    .line 211
    check-cast v2, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;

    .end local v2           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    invoke-interface {v2, p1}, Lcom/miui/player/plugin/onlinelyric/LyricPlugIn;->create(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 217
    :goto_0
    return-object v3

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/miui/player/network/LyricDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "context"
    .parameter "searchInfo"
    .parameter "callback"

    .prologue
    .line 96
    new-instance v0, Lcom/miui/player/network/LyricDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/network/LyricDownloader$1;-><init>(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "cbk"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    .line 166
    :cond_0
    new-instance v0, Lcom/miui/player/network/LyricDownloader$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/network/LyricDownloader$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 203
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 1
    .parameter "provider"
    .parameter "item"
    .parameter "callback"

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 134
    :cond_0
    new-instance v0, Lcom/miui/player/network/LyricDownloader$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/network/LyricDownloader$2;-><init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static request(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;)Z
    .locals 6
    .parameter "provider"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, success:Z
    invoke-interface {p0}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestList()Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->isAutoChoose()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 76
    .local v1, info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    invoke-interface {p0, v1}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestItem(Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v3, newList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p1, p0, v3}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    .line 80
    const/4 v4, 0x1

    .line 91
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    .end local v3           #newList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 86
    :cond_2
    invoke-virtual {p1, p0, v2}, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V

    .line 87
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static statistics(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 221
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/player/plugin/PlugInManager;->tryToGetInstance(I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v0

    .line 222
    .local v0, mgr:Lcom/miui/player/plugin/PlugInManager;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p0}, Lcom/miui/player/plugin/PlugInManager;->statistics(Z)V

    .line 225
    :cond_0
    return-void
.end method
