.class public Lcom/miui/player/service/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/ServiceHelper$ServiceBinder;,
        Lcom/miui/player/service/ServiceHelper$ServiceToken;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/miui/player/service/ServiceHelper$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/miui/player/service/IMediaPlaybackService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/miui/player/service/ServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 2
    .parameter "context"
    .parameter "list"

    .prologue
    .line 243
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/miui/player/service/IMediaPlaybackService;->addToCurrentPlaylist([JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/miui/player/service/ServiceHelper$ServiceToken;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 57
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    new-instance v0, Lcom/miui/player/service/ServiceHelper$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/miui/player/service/ServiceHelper$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 60
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/miui/player/service/ServiceHelper$ServiceToken;

    invoke-direct {v0, v1}, Lcom/miui/player/service/ServiceHelper$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 65
    :goto_1
    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 164
    :goto_0
    return-wide v0

    .line 161
    :catch_0
    move-exception v0

    .line 164
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()J
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 174
    :goto_0
    return-wide v0

    .line 171
    :catch_0
    move-exception v0

    .line 174
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()J
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 194
    :goto_0
    return-wide v0

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueue()[J
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueuePosition()I
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getQueueSize()I
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getQueueSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUpdateVersion()I
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, version:I
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getUpdateVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 536
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCurrentFavorited(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 198
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 200
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/miui/player/service/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/miui/player/provider/FavoriteCache;->contains(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveQueueItem(II)Z
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 496
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->moveQueueItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :cond_0
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 503
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 311
    return-void
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "forceShuffle"

    .prologue
    .line 318
    invoke-static {p1}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v0

    .line 319
    .local v0, idx:I
    invoke-static {p1, v0}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J

    move-result-object v1

    .line 320
    .local v1, list:[J
    sget v2, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    invoke-static {p0, v1, p2, p3, v2}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    .line 321
    return-void
.end method

.method public static playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZ)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "position"
    .parameter "append"
    .parameter "forceShuffle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, audioList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 348
    return-void
.end method

.method public static playAll(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "position"
    .parameter "append"
    .parameter "forceShuffle"
    .parameter "channelName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, audioList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v3, :cond_2

    .line 353
    :cond_0
    sget-object v3, Lcom/miui/player/service/ServiceHelper;->TAG:Ljava/lang/String;

    const-string v8, "attempt to play empty song list"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const v3, 0x7f090068

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v9

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 356
    .local v12, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p0, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 391
    .end local v12           #message:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v4

    .line 362
    .local v4, queue:[J
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueuePosition()I

    move-result v5

    .line 363
    .local v5, pos:I
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getCurrentAudioId()J

    move-result-wide v6

    .line 367
    .local v6, audioId:J
    if-eqz p4, :cond_3

    .line 368
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J

    move-result-object v11

    .line 369
    .local v11, list:[J
    invoke-static {p0, v11}, Lcom/miui/player/service/ServiceHelper;->addToCurrentPlaylist(Landroid/content/Context;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_1
    if-nez p4, :cond_1

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x400

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 387
    .local v10, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #list:[J
    :cond_3
    :try_start_1
    sget-object v3, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->getChannelName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 372
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->moveNowplayingOnlineToHistory(Landroid/content/Context;)V

    .line 374
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J

    move-result-object v11

    .line 375
    .restart local v11       #list:[J
    sget-object v3, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    move/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-interface {v3, v11, v0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService;->openList([JIZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 376
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    sget v9, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/miui/player/service/HistoryManager;->shift(Landroid/content/Context;[JIJLandroid/content/SharedPreferences;I)Z

    .line 380
    :cond_5
    sget-object v3, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 382
    .end local v4           #queue:[J
    .end local v5           #pos:I
    .end local v6           #audioId:J
    .end local v11           #list:[J
    :catch_0
    move-exception v3

    .line 384
    if-nez p4, :cond_1

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x400

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 387
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    .end local v10           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    if-nez p4, :cond_6

    .line 385
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 387
    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    .end local v10           #intent:Landroid/content/Intent;
    :cond_6
    throw v3
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .locals 2
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 314
    const/4 v0, 0x0

    sget v1, Lcom/miui/player/service/HistoryManager;->LAST_HISTORY_SIZE:I

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZI)V

    .line 315
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZI)V
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "forceShuffle"
    .parameter "history"

    .prologue
    .line 325
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;[JIZIZZLjava/lang/String;)V

    .line 326
    return-void
.end method

.method private static playAll(Landroid/content/Context;[JIZIZZLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "forceShuffle"
    .parameter "history"
    .parameter "directly"
    .parameter "startUI"
    .parameter "channelName"

    .prologue
    .line 331
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/miui/player/service/IMediaPlaybackService;->playAll([JIZIZLjava/lang/String;)V

    .line 335
    if-eqz p6, :cond_0

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 338
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static quitMediaPlay(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 519
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 521
    :try_start_0
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/miui/player/service/IMediaPlaybackService;->quit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    invoke-static {p0}, Lcom/miui/player/service/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 529
    return-void

    .line 525
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.quit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 522
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static recoverQueue([J)I
    .locals 12
    .parameter "validTrackIds"

    .prologue
    .line 420
    sget-object v11, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v11, :cond_1

    .line 421
    const/4 v8, 0x0

    .line 449
    :cond_0
    :goto_0
    return v8

    .line 424
    :cond_1
    const/4 v8, 0x0

    .line 426
    .local v8, removed:I
    :try_start_0
    sget-object v11, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v11}, Lcom/miui/player/service/IMediaPlaybackService;->getQueue()[J

    move-result-object v6

    .line 427
    .local v6, queue:[J
    if-eqz v6, :cond_0

    array-length v11, v6

    if-lez v11, :cond_0

    .line 428
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v4, 0x0

    .line 429
    .local v4, j:I
    array-length v11, v6

    new-array v7, v11, [I

    .line 431
    .local v7, removeIdxArr:[I
    move-object v0, v6

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-wide v9, v0, v3

    .line 432
    .local v9, track:J
    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {p0, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    if-gez v11, :cond_4

    .line 433
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput v4, v7, v2

    .line 435
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 431
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 438
    .end local v9           #track:J
    :cond_2
    if-lez v2, :cond_0

    .line 439
    array-length v11, v7

    if-ge v2, v11, :cond_3

    .line 440
    const/4 v11, -0x1

    aput v11, v7, v2

    .line 442
    :cond_3
    invoke-static {v7}, Lcom/miui/player/service/ServiceHelper;->removeQueueTracksBatch([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 446
    .end local v0           #arr$:[J
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #j:I
    .end local v5           #len$:I
    .end local v6           #queue:[J
    .end local v7           #removeIdxArr:[I
    :catch_0
    move-exception v11

    goto :goto_0

    .restart local v0       #arr$:[J
    .restart local v2       #i:I
    .restart local v3       #i$:I
    .restart local v4       #j:I
    .restart local v5       #len$:I
    .restart local v6       #queue:[J
    .restart local v7       #removeIdxArr:[I
    .restart local v9       #track:J
    :cond_4
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2
.end method

.method static registerMediaButtonReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 545
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 546
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/receiver/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 549
    return-void
.end method

.method public static removeQueueItem(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 485
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->removeTrack(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeQueueTracksBatch([I)I
    .locals 1
    .parameter "posArr"

    .prologue
    .line 463
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/miui/player/service/IMediaPlaybackService;->removeTracksBatch([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 469
    :goto_0
    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static scanFiles([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "paths"
    .parameter "mimeTypes"

    .prologue
    .line 508
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 509
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcom/miui/player/service/IMediaPlaybackService;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    const/4 v0, 0x1

    .line 515
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 515
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/player/service/ServiceHelper;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 261
    return-void
.end method

.method public static togglePause()V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 399
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->pause()V

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0

    .line 402
    :cond_1
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/service/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static toggleQueuePosition(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 119
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    sget-object v0, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/miui/player/service/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/miui/player/service/ServiceHelper$ServiceToken;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 70
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/miui/player/service/ServiceHelper$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 74
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/service/ServiceHelper$ServiceBinder;

    .line 75
    .local v1, sb:Lcom/miui/player/service/ServiceHelper$ServiceBinder;
    if-nez v1, :cond_2

    .line 76
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    sget-object v2, Lcom/miui/player/service/ServiceHelper;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    goto :goto_0
.end method

.method static unregisterMediaButtonReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 552
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 553
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/receiver/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 556
    return-void
.end method
