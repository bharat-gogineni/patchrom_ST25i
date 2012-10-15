.class public Lcom/miui/player/provider/OnlineAudioDetailHelper;
.super Ljava/lang/Object;
.source "OnlineAudioDetailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;,
        Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryLyricURL;,
        Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryAlbumId;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/miui/player/provider/OnlineAudioDetailHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/OnlineAudioDetailHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static clean(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 49
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v8, "online_audio_detail_last_clean"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 50
    .local v3, lastClean:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    .local v0, current:J
    const-wide/32 v8, 0x240c8400

    invoke-static {v3, v4, v8, v9}, Lcom/miui/player/util/Utils;->isOutOfTime(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    const-string v2, "(%s<?)OR(%s>?)"

    .line 53
    .local v2, format:Ljava/lang/String;
    const-string v5, "time_last_modified"

    .line 54
    .local v5, lastModifyColumn:Ljava/lang/String;
    const-string v8, "(%s<?)OR(%s>?)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "time_last_modified"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "time_last_modified"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/miui/player/provider/PlayerStore$OnlineAudioDetail;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-wide/32 v12, 0x240c8400

    sub-long v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v7, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "online_audio_detail_last_clean"

    invoke-interface {v8, v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    sget-object v8, Lcom/miui/player/provider/OnlineAudioDetailHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update OnlineAudioDetail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v2           #format:Ljava/lang/String;
    .end local v5           #lastModifyColumn:Ljava/lang/String;
    .end local v7           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cv"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static query(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "onlineId"
    .parameter "queryDetail"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    if-nez p1, :cond_1

    .line 189
    const/4 v6, 0x0

    .line 220
    :cond_0
    :goto_0
    return-object v6

    .line 192
    :cond_1
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    invoke-interface {p2}, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;->getColumn()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    const-string v7, "time_last_modified"

    aput-object v7, v0, v9

    .line 197
    .local v0, PROJECTION:[Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 198
    .local v3, lastModified:J
    const/4 v6, 0x0

    .line 199
    .local v6, result:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->queryByOnlineId(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 202
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 204
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 207
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_3
    if-nez v6, :cond_0

    const-wide/32 v7, 0x1b7740

    invoke-static {v3, v4, v7, v8}, Lcom/miui/player/util/Utils;->isOutOfTime(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    invoke-static {p0, p1}, Lcom/miui/player/network/OnlineMusicProxy;->requestAudioDetail(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 213
    .local v5, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 214
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;

    .line 215
    .local v2, detail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;
    invoke-static {p0, p1, v2}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->updateDB(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)I

    .line 216
    invoke-interface {p2, v2}, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;->getResult(Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 207
    .end local v2           #detail:Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;
    .end local v5           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio$AudioLink;>;>;"
    :catchall_0
    move-exception v7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method public static queryAlbumId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 168
    new-instance v0, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryAlbumId;

    invoke-direct {v0}, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryAlbumId;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->query(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static queryByOnlineId(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "onlineId"
    .parameter "projection"

    .prologue
    const/4 v6, 0x1

    .line 122
    sget-object v1, Lcom/miui/player/provider/PlayerStore$OnlineAudioDetail;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "online_id=?"

    new-array v4, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static queryLyricURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "onlineId"

    .prologue
    .line 178
    new-instance v0, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryLyricURL;

    invoke-direct {v0}, Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryLyricURL;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->query(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/provider/OnlineAudioDetailHelper$QueryDetail;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateDB(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;)I
    .locals 12
    .parameter "context"
    .parameter "onlineId"
    .parameter "detail"

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v6, v11

    .line 112
    :cond_1
    :goto_0
    return v6

    .line 79
    :cond_2
    const/4 v9, 0x0

    .line 80
    .local v9, exist:Z
    sget-object v1, Lcom/miui/player/provider/PlayerStore$OnlineAudioDetail;->EXTERNAL_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v11

    const-string v3, "online_id =?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v11

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 89
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "online_id"

    invoke-static {v8, v0, p1}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "album_id"

    iget-object v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mAlbumId:Ljava/lang/String;

    invoke-static {v8, v0, v1}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "artist_id"

    iget-object v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mArtistId:Ljava/lang/String;

    invoke-static {v8, v0, v1}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "lyric_url"

    iget-object v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mURLLrc:Ljava/lang/String;

    invoke-static {v8, v0, v1}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "album_url"

    iget-object v1, p2, Lcom/miui/player/plugin/onlinemusic2/Audio$AudioDetail;->mURLPictureBig:Ljava/lang/String;

    invoke-static {v8, v0, v1}, Lcom/miui/player/provider/OnlineAudioDetailHelper;->putIfNotNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v9, :cond_4

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$OnlineAudioDetail;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v2, "online_id=?"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v11

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 91
    .end local v8           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 111
    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$OnlineAudioDetail;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 112
    .local v10, uri:Landroid/net/Uri;
    if-nez v10, :cond_1

    move v6, v11

    goto :goto_0
.end method
