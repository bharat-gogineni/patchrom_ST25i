.class public Lcom/miui/player/network/AlbumDownloader;
.super Ljava/lang/Object;
.source "AlbumDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/network/AlbumDownloader$AlbumUrlListGetTask;,
        Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;,
        Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;,
        Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;,
        Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/miui/player/network/AlbumDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/miui/player/network/AlbumDownloader;->requestList(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    move-result-object v0

    return-object v0
.end method

.method public static allowAlbumDownload(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 295
    invoke-static {p0}, Lcom/xiaomi/common/util/Network;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other_connect_album"

    invoke-static {p0, v0}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createPluginProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/plugin/onlineimage/ImageProvider;
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 471
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/miui/player/network/AlbumDownloader;->createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v0

    return-object v0
.end method

.method static createProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;
    .locals 5
    .parameter "context"
    .parameter "info"
    .parameter "type"

    .prologue
    .line 475
    const/16 v3, 0x3e8

    if-lt p2, v3, :cond_0

    .line 476
    invoke-static {p0, p1, p2}, Lcom/miui/player/network/OnlineMusicProxy;->createImageProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v3

    .line 489
    :goto_0
    return-object v3

    .line 478
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 479
    .local v1, mgr:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v2

    .line 481
    .local v2, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :try_start_0
    instance-of v3, v2, Lcom/miui/player/plugin/onlineimage/ImagePlugIn;

    if-eqz v3, :cond_1

    .line 482
    check-cast v2, Lcom/miui/player/plugin/onlineimage/ImagePlugIn;

    .end local v2           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    invoke-interface {v2, p1, p2}, Lcom/miui/player/plugin/onlineimage/ImagePlugIn;->create(Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static createSearchInfo(Lcom/miui/player/meta/AlbumInfo;)Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;
    .locals 5
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p0, :cond_0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    iget-object v2, p0, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "raw"

    .prologue
    .line 185
    invoke-static {p0, p1, p1}, Lcom/miui/player/network/AlbumDownloader;->download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Lcom/miui/player/meta/AlbumInfo;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "raw"
    .parameter "search"

    .prologue
    const/4 v0, 0x0

    .line 189
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/meta/AlbumInfo;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-static {p2}, Lcom/miui/player/network/AlbumDownloader;->createSearchInfo(Lcom/miui/player/meta/AlbumInfo;)Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/miui/player/network/AlbumDownloader;->requestList(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    move-result-object v3

    .line 194
    .local v3, list:Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    invoke-virtual {v3, p0}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->getProvider(Landroid/content/Context;)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v4

    .line 199
    .local v4, provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;
    if-eqz v4, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v5, v3, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;->mContent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;

    .line 205
    .local v2, item:Lcom/miui/player/plugin/onlineimage/ImageItemInfo;
    invoke-static {v4, v2}, Lcom/miui/player/network/AlbumDownloader;->requestItem(Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    iget-object v5, v2, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, v5}, Lcom/miui/player/network/AlbumDownloader;->saveAlbum(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "raw"
    .parameter "onlineId"

    .prologue
    const/4 v6, 0x0

    .line 153
    if-nez p2, :cond_0

    move-object v5, v6

    .line 181
    :goto_0
    return-object v5

    .line 157
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->queryAlbumId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, albumId:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v5, v6

    .line 159
    goto :goto_0

    .line 161
    :cond_1
    invoke-static {p0, v0}, Lcom/miui/player/network/OnlineMusicProxy;->requestAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 162
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Album;Lcom/miui/player/plugin/onlinemusic2/AudioList;>;"
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Album;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Album;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLImage:Ljava/lang/String;

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v6

    .line 163
    goto :goto_0

    .line 165
    :cond_3
    const/4 v3, 0x0

    .line 166
    .local v3, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 168
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/miui/player/plugin/onlinemusic2/Album;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    iget-object v5, v5, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mURLImage:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/miui/player/network/OnlineMusicProxy;->requestStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 173
    if-eqz v3, :cond_4

    .line 175
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :cond_4
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/miui/player/network/AlbumDownloader;->saveAlbum(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 170
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 171
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v3, :cond_4

    .line 175
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 176
    :catch_2
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 173
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    .line 175
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    :cond_5
    :goto_2
    throw v5

    .line 176
    :catch_3
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v6, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static downloadAll(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 309
    invoke-static {p0}, Lcom/miui/player/network/AlbumDownloader;->allowAlbumDownload(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 357
    :goto_0
    return-object v1

    .line 313
    :cond_0
    new-instance v0, Lcom/miui/player/network/AlbumDownloader$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/network/AlbumDownloader$1;-><init>(Landroid/content/Context;Lcom/miui/player/network/AlbumDownloader$AlbumDownloadListener;)V

    .line 356
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    new-instance v1, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;

    invoke-direct {v1, v0}, Lcom/miui/player/network/AlbumDownloader$DownloadTaskToken;-><init>(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method public static downloadByOnlineId(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "raw"
    .parameter "onlineId"

    .prologue
    .line 249
    if-nez p2, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/network/AlbumDownloader$DownloadAlbumRunnable;-><init>(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/util/ThreadManager;->postNetworkRequest(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getExistAlbumSet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 416
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "album"

    invoke-static {v7}, Lcom/miui/player/meta/MetaManager;->getMetaDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 417
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 419
    .local v5, list:[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 420
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 421
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 426
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/io/File;
    :cond_0
    return-object v6
.end method

.method static getItemList(Lcom/miui/player/plugin/onlineimage/ImageProvider;)Ljava/util/ArrayList;
    .locals 3
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlineimage/ImageProvider;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlineimage/ImageItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    if-eqz p0, :cond_0

    .line 458
    :try_start_0
    invoke-interface {p0}, Lcom/miui/player/plugin/onlineimage/ImageProvider;->requestList()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 467
    :goto_0
    return-object v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    sget-object v1, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v2, "createProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    .line 462
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v1, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v2, "createProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 463
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 464
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v2, "createProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static prepareAlbumList(Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/meta/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/meta/AlbumInfo;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    .line 368
    .local v4, cols:[Ljava/lang/String;
    const-string v16, "album_id"

    .line 370
    .local v16, orderBy:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "album != \'\'"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "album_id"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 374
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 411
    :goto_0
    return-object v15

    .line 379
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/player/network/AlbumDownloader;->getExistAlbumSet()Ljava/util/Set;

    move-result-object v18

    .line 380
    .local v18, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-wide/16 v13, -0x1

    .line 381
    .local v13, lastId:J
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 382
    .local v11, cached:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 384
    .local v6, aid:J
    cmp-long v2, v6, v13

    if-eqz v2, :cond_1

    .line 387
    move-wide v13, v6

    .line 389
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, artist:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, album:Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v10}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    :cond_2
    const-string v2, "album"

    invoke-static {v9, v10, v2}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 396
    .local v17, path:Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v11}, Lcom/miui/player/meta/AlbumManager;->isArtworkQuickExist(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    new-instance v5, Lcom/miui/player/meta/AlbumInfo;

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/miui/player/meta/AlbumInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v5, info:Lcom/miui/player/meta/AlbumInfo;
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 408
    .end local v5           #info:Lcom/miui/player/meta/AlbumInfo;
    .end local v6           #aid:J
    .end local v9           #album:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    .end local v11           #cached:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #lastId:J
    .end local v17           #path:Ljava/lang/String;
    .end local v18           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v11       #cached:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #lastId:J
    .restart local v18       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static requestItem(Lcom/miui/player/plugin/onlineimage/ImageProvider;Lcom/miui/player/plugin/onlineimage/ImageItemInfo;)Z
    .locals 4
    .parameter "provider"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/player/plugin/onlineimage/ImageProvider;->requestItem(Lcom/miui/player/plugin/onlineimage/ImageItemInfo;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static requestList(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlineimage/ImageItemInfo;>;"
    const/4 v2, -0x1

    invoke-static {p0, p1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->createImageProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v1

    .line 121
    .local v1, provider:Lcom/miui/player/plugin/onlineimage/ImageProvider;
    invoke-static {v1}, Lcom/miui/player/network/AlbumDownloader;->getItemList(Lcom/miui/player/plugin/onlineimage/ImageProvider;)Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-static {p0, p1}, Lcom/miui/player/network/AlbumDownloader;->createPluginProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/miui/player/network/AlbumDownloader;->getItemList(Lcom/miui/player/plugin/onlineimage/ImageProvider;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    new-instance v2, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;

    invoke-direct {v2, v0, v1}, Lcom/miui/player/network/AlbumDownloader$ImageItemInfoList;-><init>(Ljava/util/ArrayList;Lcom/miui/player/plugin/onlineimage/ImageProvider;)V

    .line 131
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static saveAlbum(Landroid/content/Context;Lcom/miui/player/meta/AlbumInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "raw"
    .parameter "bm"

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 220
    const/4 v5, 0x0

    .line 245
    :goto_0
    return-object v5

    .line 223
    :cond_0
    iget-object v5, p1, Lcom/miui/player/meta/AlbumInfo;->mAlbumName:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/player/meta/AlbumInfo;->mArtistName:Ljava/lang/String;

    const-string v7, "album"

    invoke-static {v5, v6, v7}, Lcom/miui/player/meta/MetaManager;->getMetaFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 224
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    :goto_1
    move-object v5, p2

    .line 245
    goto :goto_0

    .line 227
    :cond_2
    if-eqz v1, :cond_1

    const-string v5, "album"

    invoke-static {p0, v5}, Lcom/miui/player/meta/MetaManager;->makeDirIfNotExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v2           #os:Ljava/io/OutputStream;
    .local v3, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 236
    if-eqz v3, :cond_1

    .line 238
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v2, :cond_1

    .line 238
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 239
    :catch_2
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_3

    .line 238
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 241
    :cond_3
    :goto_4
    throw v5

    .line 239
    :catch_3
    move-exception v0

    .line 240
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v6, Lcom/miui/player/network/AlbumDownloader;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 236
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 233
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method
