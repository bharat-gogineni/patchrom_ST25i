.class public Lcom/miui/player/provider/PlaylistHelper;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlaylistHelper$StringPredication;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/miui/player/provider/PlaylistHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlaylistHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method public static addOnlineToPlaylist(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V
    .locals 14
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, audioList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 273
    sget-object v12, Lcom/miui/player/provider/PlaylistHelper;->TAG:Ljava/lang/String;

    const-string v13, "ListSelection null"

    invoke-static {v12, v13}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static/range {p3 .. p4}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v10

    .line 277
    .local v10, uri:Landroid/net/Uri;
    invoke-static {p0, v10}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 279
    .local v2, base:I
    invoke-static {p0, v10}, Lcom/miui/player/provider/PlaylistHelper;->getExistOnlineIdList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, existOnlineIdlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lcom/miui/player/provider/PlaylistHelper;->getDifferenceAudioList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 285
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 288
    .local v9, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v11, v12, [Landroid/content/ContentValues;

    .line 289
    .local v11, values:[Landroid/content/ContentValues;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v12}, Lcom/miui/player/ui/UIHelper;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 294
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 296
    .local v8, onlineIds:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 297
    .local v4, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 298
    .local v7, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-virtual {v7}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v4

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 300
    .end local v7           #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    :cond_2
    invoke-static {p0, v8}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJZ)I
    .locals 6
    .parameter "context"
    .parameter "ids"
    .parameter "playlistId"
    .parameter "notify"

    .prologue
    .line 150
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/PlaylistHelper;->addToPlaylist(Landroid/content/Context;[JJZZ)I

    move-result v0

    return v0
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJZZ)I
    .locals 11
    .parameter "context"
    .parameter "ids"
    .parameter "playlistId"
    .parameter "filterDuplicate"
    .parameter "notify"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 165
    :cond_0
    const/4 v9, 0x0

    .line 199
    :goto_0
    return v9

    .line 167
    :cond_1
    invoke-static {p2, p3}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 168
    .local v7, uri:Landroid/net/Uri;
    invoke-static {p0, v7}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 169
    .local v2, base:I
    if-eqz p4, :cond_3

    .line 170
    invoke-static {p1, v7, p0}, Lcom/miui/player/provider/PlaylistHelper;->getLocalAddAudioList([JLandroid/net/Uri;Landroid/content/Context;)[J

    move-result-object v0

    .line 171
    .local v0, addAudioIdList:[J
    if-nez v0, :cond_2

    .line 172
    const/4 v9, 0x0

    goto :goto_0

    .line 174
    :cond_2
    move-object p1, v0

    .line 177
    .end local v0           #addAudioIdList:[J
    :cond_3
    invoke-static {p0, p1, v2}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoById(Landroid/content/Context;[JI)[Landroid/content/ContentValues;

    move-result-object v8

    .line 178
    .local v8, values:[Landroid/content/ContentValues;
    if-nez v8, :cond_4

    .line 179
    const/4 v9, 0x0

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 184
    invoke-static {p0, p2, p3}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 185
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;[J)I

    move-result v9

    array-length v10, p1

    if-ge v9, v10, :cond_6

    .line 186
    move-object v1, v8

    .local v1, arr$:[Landroid/content/ContentValues;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v3, v1, v4

    .line 187
    .local v3, cv:Landroid/content/ContentValues;
    const-string v9, "online_id"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, onlineId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 189
    invoke-static {p0, v6}, Lcom/miui/player/provider/FavoriteCache;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    .end local v1           #arr$:[Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #onlineId:Ljava/lang/String;
    :cond_6
    if-eqz p5, :cond_7

    .line 196
    array-length v9, v8

    invoke-static {p0, p2, p3, v9}, Lcom/miui/player/ui/UIHelper;->notifyAddToPlaylist(Landroid/content/Context;JI)V

    .line 199
    :cond_7
    array-length v9, v8

    goto :goto_0
.end method

.method public static addToPlaylistAsync(Landroid/content/Context;[JJZLjava/lang/Runnable;)V
    .locals 7
    .parameter "context"
    .parameter "trackIds"
    .parameter "playlistId"
    .parameter "filterDuplicate"
    .parameter "callback"

    .prologue
    .line 205
    new-instance v0, Lcom/miui/player/provider/PlaylistHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/provider/PlaylistHelper$1;-><init>(Landroid/content/Context;[JJZLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/provider/PlaylistHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 120
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter "type"
    .parameter "clear"

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 57
    .end local v1           #uri:Landroid/net/Uri;
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 44
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, id:I
    if-ltz v0, :cond_2

    .line 46
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 47
    if-eqz p3, :cond_1

    .line 48
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlaylistHelper;->clearPlaylist(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    move-object v2, v1

    .line 57
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 51
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 52
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "list_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method public static deletePlaylist(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/provider/PlaylistHelper;->deletePlaylist(Landroid/content/Context;[J)V

    .line 404
    return-void
.end method

.method public static deletePlaylist(Landroid/content/Context;[J)V
    .locals 4
    .parameter "context"
    .parameter "plidlist"

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, inClause:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    return-void
.end method

.method private static getDifferenceAudioList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, audioList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    .local p1, exist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, to:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    new-instance v1, Lcom/miui/player/provider/PlaylistHelper$StringPredication;

    invoke-direct {v1, p1}, Lcom/miui/player/provider/PlaylistHelper$StringPredication;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, v1}, Lcom/xiaomi/common/util/CollectionHelper;->differenceList(Ljava/util/List;Ljava/util/List;Lcom/xiaomi/common/util/CollectionHelper$Predication;)I

    .line 267
    return-object v0
.end method

.method private static getExistOnlineIdList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 225
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v10

    .line 227
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "online_id"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, lastId:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v7, existOnlineIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, onlineId:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    move-object v8, v9

    goto :goto_0

    .line 244
    .end local v9           #onlineId:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v7           #existOnlineIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #lastId:Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_2
    move-object v7, v3

    goto :goto_1
.end method

.method private static getLocalAddAudioList([JLandroid/net/Uri;Landroid/content/Context;)[J
    .locals 9
    .parameter "addAudioIdList"
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v1

    .line 130
    .local v2, cols:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 131
    .local v7, existAudioIdList:[J
    const-string v5, "audio_id"

    move-object v0, p2

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 135
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 136
    .local v8, idx:I
    invoke-static {v6, v8}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    .end local v8           #idx:I
    :cond_0
    if-eqz v7, :cond_1

    array-length v0, v7

    if-nez v0, :cond_2

    .line 146
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 138
    .restart local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 146
    :cond_2
    invoke-static {v7, p0}, Lcom/miui/player/util/SqlUtils;->differenceSet([J[J)[J

    move-result-object p0

    goto :goto_0
.end method

.method public static getLocalTrackListForPlaylist(Landroid/content/Context;J)[J
    .locals 2
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 323
    const-string v0, "audio_id<536870911"

    .line 325
    .local v0, where:Ljava/lang/String;
    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/provider/PlaylistHelper;->getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J

    move-result-object v1

    return-object v1
.end method

.method public static getPlaylistCount(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 352
    const-string v6, " AND "

    .line 353
    .local v6, AND:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v10

    .line 356
    .local v2, cols:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "name"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v0, " != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, "list_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, " == "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const/4 v8, 0x0

    .line 365
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x4

    .line 367
    .local v7, count:I
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 369
    if-eqz v8, :cond_1

    .line 370
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v7, v0

    .line 373
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_1
    return v7
.end method

.method public static getRecentlyAddedTrackCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 420
    const/4 v6, 0x0

    .line 422
    .local v6, count:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v1

    .line 423
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/provider/PlaylistHelper;->recentlyAddedWhere(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 425
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 427
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 431
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_1
    return v6

    .line 431
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRecentlyPlayedTrackCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 439
    const/4 v1, 0x0

    .line 440
    .local v1, c:I
    invoke-static {p0}, Lcom/miui/player/service/HistoryManager;->loadLatest(Landroid/content/Context;)[J

    move-result-object v5

    .line 441
    .local v5, last:[J
    if-eqz v5, :cond_1

    .line 442
    move-object v0, v5

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-wide v3, v0, v2

    .line 443
    .local v3, id:J
    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 444
    add-int/lit8 v1, v1, 0x1

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    .end local v0           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v6           #len$:I
    :cond_1
    return v1
.end method

.method public static getTrackListForPlaylist(Landroid/content/Context;JLjava/lang/String;)[J
    .locals 8
    .parameter "context"
    .parameter "plid"
    .parameter "where"

    .prologue
    const/4 v3, 0x0

    .line 329
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, v3

    .line 330
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    const-string v5, "play_order"

    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 334
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 336
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v2, v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 337
    .local v7, idx:I
    invoke-static {v6, v7}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 343
    .end local v7           #idx:I
    :goto_0
    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 343
    :cond_0
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    goto :goto_0
.end method

.method public static queryAllPlaylistNameSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 384
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 387
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 389
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 390
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 399
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-object v7

    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    goto :goto_1
.end method

.method public static queryPlaylistId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    int-to-long v2, p2

    aput-wide v2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlaylistHelper;->queryPlaylistId(Landroid/content/Context;Ljava/lang/String;[J)I

    move-result v0

    return v0
.end method

.method private static queryPlaylistId(Landroid/content/Context;Ljava/lang/String;[J)I
    .locals 9
    .parameter "context"
    .parameter "name"
    .parameter "types"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 89
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 92
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "list_type"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v0, " IN "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p2}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 103
    .local v4, args:[Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 107
    .local v7, id:I
    if-eqz v6, :cond_2

    .line 109
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 113
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    return v7

    .line 113
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryPlaylistName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v4

    .line 69
    .local v2, cols:[Ljava/lang/String;
    sget-object v0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 73
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 77
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1
    return-object v7

    .line 77
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static recentlyAddedWhere(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 412
    const-wide/32 v0, 0x93a80

    .line 413
    .local v0, WEEK:J
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "numweeks"

    const/4 v9, 0x2

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 414
    .local v6, pref:I
    int-to-long v7, v6

    const-wide/32 v9, 0x93a80

    mul-long v4, v7, v9

    .line 415
    .local v4, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    sub-long v2, v7, v4

    .line 416
    .local v2, deadline:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date_added>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static removeMembers(Landroid/content/Context;[JJ)I
    .locals 1
    .parameter "context"
    .parameter "audioIds"
    .parameter "playlistId"

    .prologue
    .line 306
    invoke-static {p0, p2, p3}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->remove(Landroid/content/Context;[J)I

    .line 310
    :cond_0
    invoke-static {p0, p2, p3, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->removeMembersFromDB(Landroid/content/Context;J[J)I

    move-result v0

    return v0
.end method

.method public static removeOnlineMembers(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;J)I
    .locals 1
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)I"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p3, p4}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {p0, p1}, Lcom/miui/player/provider/FavoriteCache;->onlineRemove(Landroid/content/Context;Ljava/util/Collection;)I

    .line 319
    :cond_0
    invoke-static {p0, p3, p4, p1, p2}, Lcom/miui/player/provider/PlayerProviderUtils;->removeOnlineMembersFromDB(Landroid/content/Context;JLjava/util/Collection;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
