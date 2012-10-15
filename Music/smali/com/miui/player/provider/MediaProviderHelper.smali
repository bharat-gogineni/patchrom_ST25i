.class public Lcom/miui/player/provider/MediaProviderHelper;
.super Ljava/lang/Object;
.source "MediaProviderHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumCount(Landroid/content/Context;J)I
    .locals 11
    .parameter "context"
    .parameter "artistId"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 58
    .local v2, cols:[Ljava/lang/String;
    cmp-long v0, p1, v9

    if-lez v0, :cond_2

    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    const/4 v3, 0x0

    .line 62
    .local v3, inClause:Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidAlbumIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 63
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 64
    invoke-static {v7, v4}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, albumSet:Ljava/lang/String;
    cmp-long v0, p1, v9

    if-ltz v0, :cond_3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " audio.album_id  IN "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 73
    .end local v6           #albumSet:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 74
    .local v8, count:I
    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1
    return v8

    .line 58
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #inClause:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #count:I
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 68
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v3       #inClause:Ljava/lang/String;
    .restart local v6       #albumSet:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getArtistCount(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 86
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidArtistIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v9

    .line 87
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 88
    .local v8, count:I
    if-eqz v9, :cond_1

    .line 89
    invoke-static {v9, v11}, Lcom/miui/player/util/SqlUtils;->concatIdsAsSet(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, artistSet:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v11

    .line 94
    .local v2, cols:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, " IN "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 102
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 106
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 111
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #artistSet:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :cond_1
    return v8
.end method

.method public static getTrackCount(Landroid/content/Context;J)I
    .locals 11
    .parameter "context"
    .parameter "artistId"

    .prologue
    const/4 v10, 0x0

    .line 23
    const-string v6, " AND "

    .line 24
    .local v6, AND:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v10

    .line 28
    .local v2, cols:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v0, " != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 32
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "artist_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, "="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 42
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 43
    .local v7, count:I
    if-eqz v8, :cond_2

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 47
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_2
    return v7
.end method

.method private static getValueArrFromCursor(Landroid/database/Cursor;I)[J
    .locals 4
    .parameter "c"
    .parameter "colIdx"

    .prologue
    .line 196
    sget-object v1, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 197
    .local v1, ret:[J
    if-eqz p0, :cond_0

    .line 198
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v1, v2, [J

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, i:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 200
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public static queryTrackListForAlbums(Landroid/content/Context;[J)[J
    .locals 10
    .parameter "context"
    .parameter "albumIds"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 250
    :cond_0
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 282
    :goto_0
    return-object v0

    .line 253
    :cond_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 258
    .local v2, ccols:[Ljava/lang/String;
    array-length v0, p1

    if-ne v0, v5, :cond_2

    .line 259
    const-string v0, "%s = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "album_id"

    aput-object v3, v1, v4

    aget-wide v3, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, where:Ljava/lang/String;
    :goto_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v9}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 276
    :try_start_0
    invoke-static {v6}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v7

    .line 277
    .local v7, idx:I
    invoke-static {v6, v7}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #idx:I
    .end local v9           #where:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, set:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #where:Ljava/lang/String;
    goto :goto_1

    .line 279
    .end local v8           #set:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 282
    :cond_3
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    goto :goto_0
.end method

.method public static queryTrackListForArtists(Landroid/content/Context;[J)[J
    .locals 12
    .parameter "context"
    .parameter "artistIds"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 209
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 210
    :cond_0
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 245
    :goto_0
    return-object v0

    .line 213
    :cond_1
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 218
    .local v2, ccols:[Ljava/lang/String;
    array-length v0, p1

    if-ne v0, v11, :cond_2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-wide v3, p1, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, where:Ljava/lang/String;
    :goto_1
    const-string v0, "%s,%s,%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "artist_key"

    aput-object v3, v1, v10

    const-string v3, "album_key"

    aput-object v3, v1, v11

    const/4 v3, 0x2

    const-string v4, "track"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, sortKey:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v9}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 239
    :try_start_0
    invoke-static {v6}, Lcom/miui/player/provider/PlayerProviderUtils;->guessAudioIdColumnIndex(Landroid/database/Cursor;)I

    move-result v7

    .line 240
    .local v7, idx:I
    invoke-static {v6, v7}, Lcom/miui/player/util/SqlUtils;->getIdsForCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    .end local v5           #sortKey:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #idx:I
    .end local v9           #where:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, set:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #where:Ljava/lang/String;
    goto :goto_1

    .line 242
    .end local v8           #set:Ljava/lang/String;
    .restart local v5       #sortKey:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 245
    :cond_3
    sget-object v0, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    goto :goto_0
.end method

.method public static queryValidAlbumIdArr(Landroid/content/Context;)[J
    .locals 2
    .parameter "context"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidAlbumIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/miui/player/provider/MediaProviderHelper;->getValueArrFromCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static queryValidAlbumIdCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 136
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "distinct album_id"

    aput-object v1, v2, v0

    .line 139
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_id"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static queryValidArtistIdArr(Landroid/content/Context;)[J
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidArtistIdCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/miui/player/provider/MediaProviderHelper;->getValueArrFromCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    .line 124
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static queryValidArtistIdCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    .line 186
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "distinct artist_id"

    aput-object v1, v2, v0

    .line 190
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist_id"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static queryValidTrackIdArr(Landroid/content/Context;)[J
    .locals 7
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 163
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 167
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v6, v0}, Lcom/miui/player/provider/MediaProviderHelper;->getValueArrFromCursor(Landroid/database/Cursor;I)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 174
    if-eqz v6, :cond_0

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
