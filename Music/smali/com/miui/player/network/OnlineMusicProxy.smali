.class public Lcom/miui/player/network/OnlineMusicProxy;
.super Ljava/lang/Object;
.source "OnlineMusicProxy.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sAudioListManager:Lmiui/cache/RequestManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/RequestManager",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/miui/player/network/OnlineMusicProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/OnlineMusicProxy;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/network/OnlineMusicProxy;->sAudioListManager:Lmiui/cache/RequestManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;
    .locals 2
    .parameter "context"
    .parameter "searchInfo"
    .parameter "type"

    .prologue
    .line 323
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 324
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->createImageProvider(Lcom/miui/player/plugin/onlineimage/ImageSearchInfo;I)Lcom/miui/player/plugin/onlineimage/ImageProvider;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createLyricProvider(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    .locals 2
    .parameter "context"
    .parameter "searchInfo"

    .prologue
    .line 314
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 315
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->createLyricProvider(Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProviderLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"

    .prologue
    .line 271
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v2

    .line 273
    .local v2, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    const/4 v1, 0x0

    .line 274
    .local v1, logo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v2}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    :cond_0
    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 280
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 283
    :cond_1
    return-object v1
.end method

.method public static getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 265
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 266
    .local v1, pim:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v0

    .line 267
    .local v0, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/player/plugin/base/PlugInInterface;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUrlForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 158
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getIdentifyForAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUrlForArtist(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "artistId"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 121
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 122
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getIdentifyForArtist(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUrlForBill(Landroid/content/Context;[Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "types"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 84
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getIdentifyForBill([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUrlForChannel(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "channelId"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 203
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 204
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getIdentifyForChannel(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUrlForSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "keywords"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 212
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 213
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->getIdentifyForSearch(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    .locals 3
    .parameter "context"

    .prologue
    .line 355
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 356
    .local v1, pim:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v0

    .line 357
    .local v0, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    instance-of v2, v0, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicPlugIn;

    if-eqz v2, :cond_0

    .line 358
    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicPlugIn;

    .end local v0           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    invoke-interface {v0}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicPlugIn;->getWorker()Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v2

    .line 361
    :goto_0
    return-object v2

    .restart local v0       #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/Audio;
    .locals 3
    .parameter "id"
    .parameter "title"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 340
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 341
    new-instance v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;

    invoke-direct {v2, p0, p1}, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v2, outline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;
    new-instance v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;-><init>()V

    .line 343
    .local v1, detail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;
    iput-object p2, v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistName:Ljava/lang/String;

    .line 344
    iput-object p3, v1, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAlbumName:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/miui/player/plugin/onlinemusic2/Audio;

    invoke-direct {v0, v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;-><init>(Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;)V

    .line 347
    .local v0, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    iput-object v1, v0, Lcom/miui/player/plugin/onlinemusic2/Audio;->mDetail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    .line 351
    .end local v0           #audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v1           #detail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;
    .end local v2           #outline:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioOutline;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newAudio(Lmiui/provider/MusicSearchProvider$MusicMeta;)Lcom/miui/player/plugin/onlinemusic2/Audio;
    .locals 4
    .parameter "meta"

    .prologue
    .line 332
    if-eqz p0, :cond_0

    .line 333
    iget-object v0, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mOnlineId:Ljava/lang/String;

    iget-object v1, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mArtistName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/provider/MusicSearchProvider$MusicMeta;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->newAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/Audio;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postLocalPlayStatus(Landroid/content/Context;Ljava/util/Date;I)Z
    .locals 2
    .parameter "context"
    .parameter "date"
    .parameter "count"

    .prologue
    .line 296
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 297
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/miui/player/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->postLocalPlayStatus(Ljava/util/Date;ILjava/lang/String;)Z

    move-result v1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static postOnlinePlayStatus(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;)Z
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    .line 305
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 306
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/miui/player/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->postOnlinePlayStatus(Lcom/miui/player/plugin/onlinemusic2/OnlinePlayStatus;Ljava/lang/String;)Z

    move-result v1

    .line 310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static postUserStart(Landroid/content/Context;Ljava/util/Date;)Z
    .locals 2
    .parameter "context"
    .parameter "date"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 288
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/miui/player/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->postUserStart(Ljava/util/Date;Ljava/lang/String;)Z

    move-result v1

    .line 292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryAudio(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;
    .locals 2
    .parameter "context"
    .parameter "keywords"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 222
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 223
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->queryAudio(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryAudioSuggestion(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;
    .locals 2
    .parameter "context"
    .parameter "keywords"

    .prologue
    .line 231
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 232
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->queryAudioSuggestion(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/SearchSuggestion;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static request(Lmiui/cache/RequestManager$Request;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    const-class v1, Lcom/miui/player/network/OnlineMusicProxy;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/miui/player/network/OnlineMusicProxy;->sAudioListManager:Lmiui/cache/RequestManager;

    if-nez v0, :cond_0

    .line 56
    const/16 v0, 0x64

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/cache/RequestManager;->create(ILjava/lang/Object;)Lmiui/cache/RequestManager;

    move-result-object v0

    sput-object v0, Lcom/miui/player/network/OnlineMusicProxy;->sAudioListManager:Lmiui/cache/RequestManager;

    .line 57
    sget-object v0, Lcom/miui/player/network/OnlineMusicProxy;->sAudioListManager:Lmiui/cache/RequestManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/cache/RequestManager;->setup(Z)V

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/miui/player/network/OnlineMusicProxy;->sAudioListManager:Lmiui/cache/RequestManager;

    invoke-virtual {v0, p0}, Lmiui/cache/RequestManager;->request(Lmiui/cache/RequestManager$Request;)Z

    move-result v0

    return v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static requestAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .parameter "context"
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Album;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 167
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAlbum(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAlbumList(Landroid/content/Context;II)Lcom/miui/player/plugin/onlinemusic2/AlbumList;
    .locals 2
    .parameter "context"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 149
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAlbumList(II)Lcom/miui/player/plugin/onlinemusic2/AlbumList;

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestArtistList(Landroid/content/Context;III)Lcom/miui/player/plugin/onlinemusic2/ArtistList;
    .locals 2
    .parameter "context"
    .parameter "orderBy"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 113
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestArtistList(III)Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .parameter "context"
    .parameter "audioId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 65
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 66
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAudioDetail(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAudioListOfAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 2
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 176
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAudioListOfAlbum(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAudioListOfArtist(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 2
    .parameter "context"
    .parameter "artistId"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 140
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAudioListOfArtist(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAudioListOfBill(Landroid/content/Context;[Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .parameter "context"
    .parameter "types"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 104
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAudioListOfBill([Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestAudioListOfChannel(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;
    .locals 2
    .parameter "context"
    .parameter "channelId"
    .parameter "pageNum"
    .parameter "pageSize"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 195
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestAudioListOfChannel(Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioList;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestBillDetail(Landroid/content/Context;[Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .parameter "context"
    .parameter "types"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;",
            "Lcom/miui/player/plugin/onlinemusic2/AudioList;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 94
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestBillDetails([Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestBillList(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/BillList;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 75
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestBillList()Lcom/miui/player/plugin/onlinemusic2/BillList;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/miui/player/network/OnlineMusicProxy;->requestStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 250
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 255
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :goto_0
    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    .line 255
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 257
    :goto_1
    throw v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static requestChannelList(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/ChannelList;
    .locals 2
    .parameter "context"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 185
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestChannelList()Lcom/miui/player/plugin/onlinemusic2/ChannelList;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 240
    invoke-static {p0}, Lcom/miui/player/network/OnlineMusicProxy;->getWorker(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;

    move-result-object v0

    .line 241
    .local v0, worker:Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic2/OnlineMusicWorker;->requestStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
