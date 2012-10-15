.class public Lcom/miui/player/provider/FavoriteCache;
.super Ljava/lang/Object;
.source "FavoriteCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFavoriteLocalTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoriteOnlineTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoritePlaylistId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    const-class v0, Lcom/miui/player/provider/FavoriteCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/FavoriteCache;->TAG:Ljava/lang/String;

    .line 26
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    .line 27
    sput-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 28
    sput-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;[J)I
    .locals 8
    .parameter "context"
    .parameter "ids"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, addNum:I
    sget-object v6, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 56
    .local v6, localTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v6, :cond_1

    .line 57
    move-object v1, p1

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v1, v2

    .line 58
    .local v3, id:J
    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->onCacheChange(Landroid/content/Context;)V

    .line 67
    :cond_2
    return v0
.end method

.method public static add(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "onlineIds"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 77
    sget-object v5, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 78
    .local v5, onlineTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, addNum:I
    if-eqz v5, :cond_1

    .line 80
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 81
    .local v3, id:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_1
    if-eqz v0, :cond_2

    .line 88
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->onCacheChange(Landroid/content/Context;)V

    .line 90
    :cond_2
    return v0
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public static contains(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "onlineId"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, favorite:Z
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/FavoriteCache;->localContains(Landroid/content/Context;J)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 103
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-static {p0, p3}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getOnlineId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    .line 109
    invoke-static {p0, p3}, Lcom/miui/player/provider/FavoriteCache;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getFavoritePlaylistId(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 127
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    return-wide v0
.end method

.method private static initialize(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 225
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 226
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->readFavorityPlaylist(Landroid/content/Context;)V

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFavoritePlaylistId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "playlistId"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 45
    sget-wide v0, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static localContains(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "localId"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 117
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onCacheChange(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.FAVORITE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public static onlineContains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 121
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 122
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlineRemove(Landroid/content/Context;Ljava/util/Collection;)I
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 160
    .local v2, onlineSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 162
    .local v1, oldSize:I
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 164
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int v0, v1, v3

    .line 165
    .local v0, change:I
    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->onCacheChange(Landroid/content/Context;)V

    .line 171
    .end local v0           #change:I
    .end local v1           #oldSize:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readFavorityPlaylist(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 234
    const-string v0, "$miui$"

    invoke-static {p0, v0, v2, v1}, Lcom/miui/player/provider/PlaylistHelper;->createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    .line 236
    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->TAG:Ljava/lang/String;

    const-string v1, "create favority failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 242
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 243
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 244
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v1

    const-string v0, "online_id"

    aput-object v0, v2, v3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v6, v7}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_3

    .line 253
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 255
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 258
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 262
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    const-class v1, Lcom/miui/player/provider/FavoriteCache;

    monitor-enter v1

    .line 267
    :try_start_2
    sput-wide v6, Lcom/miui/player/provider/FavoriteCache;->sFavoritePlaylistId:J

    .line 268
    sput-object v8, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 269
    sput-object v9, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 270
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static recoverCache(Landroid/content/Context;[J)I
    .locals 6
    .parameter "context"
    .parameter "validTrackIds"

    .prologue
    .line 138
    sget-object v2, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 139
    .local v2, localSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v2, :cond_3

    .line 140
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    .line 141
    .local v3, oldSize:I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    sub-int v0, v3, v4

    .line 149
    .local v0, change:I
    if-eqz v0, :cond_2

    .line 150
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->onCacheChange(Landroid/content/Context;)V

    .line 155
    .end local v0           #change:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v3           #oldSize:I
    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static remove(Landroid/content/Context;[J)I
    .locals 19
    .parameter "context"
    .parameter "audioIds"

    .prologue
    .line 175
    sget-object v14, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 176
    .local v14, localSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v17, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 177
    .local v17, onlineSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v16, onlineList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v14, :cond_5

    if-eqz v17, :cond_5

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v15

    .line 181
    .local v15, oldSize:I
    move-object/from16 v7, p1

    .local v7, arr$:[J
    array-length v13, v7

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v13, :cond_1

    aget-wide v11, v7, v10

    .line 182
    .local v11, id:J
    invoke-static {v11, v12}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v11           #id:J
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 192
    invoke-static/range {v16 .. v16}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v18

    .line 193
    .local v18, set:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id IN "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, where:Ljava/lang/String;
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    .line 197
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "online_id"

    aput-object v5, v3, v1

    .line 198
    .local v3, proj:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 199
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 201
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 205
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v18           #set:Ljava/lang/String;
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->size(Landroid/content/Context;)I

    move-result v1

    sub-int v8, v15, v1

    .line 211
    .local v8, change:I
    if-eqz v8, :cond_4

    .line 212
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/FavoriteCache;->onCacheChange(Landroid/content/Context;)V

    .line 217
    .end local v7           #arr$:[J
    .end local v8           #change:I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v15           #oldSize:I
    :cond_4
    :goto_3
    return v8

    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public static size(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/miui/player/provider/FavoriteCache;->initialize(Landroid/content/Context;)Z

    .line 32
    const/4 v2, 0x0

    .line 34
    .local v2, ret:I
    sget-object v0, Lcom/miui/player/provider/FavoriteCache;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 35
    .local v0, localTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v1, Lcom/miui/player/provider/FavoriteCache;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 36
    .local v1, onlineTracks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    add-int v2, v3, v4

    .line 40
    :cond_0
    return v2
.end method
