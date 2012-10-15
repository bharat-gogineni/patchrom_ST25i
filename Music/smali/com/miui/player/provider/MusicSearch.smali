.class public Lcom/miui/player/provider/MusicSearch;
.super Ljava/lang/Object;
.source "MusicSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/MusicSearch$SearchKey;,
        Lcom/miui/player/provider/MusicSearch$CursorWithExtras;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/miui/player/provider/MusicSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/MusicSearch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method private static contains(II)Z
    .locals 1
    .parameter "value"
    .parameter "type"

    .prologue
    .line 264
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static doQuery(Landroid/content/Context;I[Ljava/lang/String;I)Lmiui/provider/MusicSearchProvider$MusicSearchResult;
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, local:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    const/4 v2, 0x0

    .line 271
    .local v2, online:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/miui/player/provider/MusicSearch;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-static {p0, p2, p3}, Lcom/miui/player/provider/MusicSearch;->localQuery(Landroid/content/Context;[Ljava/lang/String;I)[Lmiui/provider/MusicSearchProvider$MusicMeta;

    move-result-object v0

    .line 275
    :cond_0
    if-eqz v0, :cond_2

    array-length v1, v0

    .line 276
    .local v1, localCount:I
    :goto_0
    if-ge v1, p3, :cond_1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/miui/player/provider/MusicSearch;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/player/util/Utils;->isOnlineVaild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    sub-int v3, p3, v1

    invoke-static {p0, p2, v3}, Lcom/miui/player/provider/MusicSearch;->onlineQuery(Landroid/content/Context;[Ljava/lang/String;I)[Lmiui/provider/MusicSearchProvider$MusicMeta;

    move-result-object v2

    .line 280
    :cond_1
    new-instance v3, Lmiui/provider/MusicSearchProvider$MusicSearchResult;

    invoke-direct {v3, v0, v2, p2, p1}, Lmiui/provider/MusicSearchProvider$MusicSearchResult;-><init>([Lmiui/provider/MusicSearchProvider$MusicMeta;[Lmiui/provider/MusicSearchProvider$MusicMeta;[Ljava/lang/String;I)V

    return-object v3

    .line 275
    .end local v1           #localCount:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static localQuery(Landroid/content/Context;[Ljava/lang/String;I)[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .locals 18
    .parameter "context"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 284
    invoke-static/range {p1 .. p1}, Lcom/miui/player/provider/MusicSearch;->toLocalSearchKey([Ljava/lang/String;)Lcom/miui/player/provider/MusicSearch$SearchKey;

    move-result-object v16

    .line 287
    .local v16, key:Lcom/miui/player/provider/MusicSearch$SearchKey;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/player/provider/MusicSearch$SearchKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    :cond_0
    const/4 v4, 0x0

    .line 289
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 295
    .local v5, args:[Ljava/lang/String;
    :goto_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v1

    const/4 v1, 0x1

    const-string v6, "title"

    aput-object v6, v3, v1

    const/4 v1, 0x2

    const-string v6, "_data"

    aput-object v6, v3, v1

    const/4 v1, 0x3

    const-string v6, "artist"

    aput-object v6, v3, v1

    const/4 v1, 0x4

    const-string v6, "album"

    aput-object v6, v3, v1

    const/4 v1, 0x5

    const-string v6, "duration"

    aput-object v6, v3, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v9

    .line 311
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 313
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/MediaProviderHelper;->queryValidTrackIdArr(Landroid/content/Context;)[J

    move-result-object v17

    .line 314
    .local v17, validIds:[J
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v10, v1, [Lmiui/provider/MusicSearchProvider$MusicMeta;

    .line 315
    .local v10, data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    const/4 v12, 0x0

    .local v12, i:I
    move v13, v12

    .line 316
    .end local v12           #i:I
    .local v13, i:I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 319
    .local v14, id:J
    const/4 v11, 0x0

    .line 320
    .local v11, flag:I
    invoke-static {v14, v15}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_1

    .line 321
    or-int/lit8 v11, v11, 0x1

    .line 324
    :cond_1
    new-instance v8, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    invoke-direct {v8}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;-><init>()V

    .line 325
    .local v8, builder:Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setLocalId(J)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setTitle(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setData(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setArtistName(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setAlbumName(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x1f4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setDuration(J)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setFlag(I)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    .line 333
    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    invoke-virtual {v8}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->create()Lmiui/provider/MusicSearchProvider$MusicMeta;

    move-result-object v1

    aput-object v1, v10, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    .line 334
    .end local v12           #i:I
    .restart local v13       #i:I
    goto :goto_1

    .line 291
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #args:[Ljava/lang/String;
    .end local v8           #builder:Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .end local v11           #flag:I
    .end local v13           #i:I
    .end local v14           #id:J
    .end local v17           #validIds:[J
    :cond_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/miui/player/provider/MusicSearch$SearchKey;->mSelection:Ljava/lang/String;

    .line 292
    .restart local v4       #where:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/miui/player/provider/MusicSearch$SearchKey;->mSelectionArgs:[Ljava/lang/String;

    .restart local v5       #args:[Ljava/lang/String;
    goto/16 :goto_0

    .line 338
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .restart local v13       #i:I
    .restart local v17       #validIds:[J
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 342
    .end local v10           #data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .end local v13           #i:I
    .end local v17           #validIds:[J
    :goto_2
    return-object v10

    .line 338
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 342
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public static onlineQuery(Landroid/content/Context;[Ljava/lang/String;I)[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .locals 13
    .parameter "context"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {p1}, Lcom/miui/player/provider/MusicSearch;->toOnlineSearchKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, key:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 376
    :cond_0
    return-object v2

    .line 351
    :cond_1
    const/4 v10, 0x1

    invoke-static {p0, v8, v10, p2}, Lcom/miui/player/network/OnlineMusicProxy;->queryAudio(Landroid/content/Context;Ljava/lang/String;II)Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;

    move-result-object v0

    .line 353
    .local v0, asr:Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;
    if-eqz v0, :cond_0

    iget-object v10, v0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    if-eqz v10, :cond_0

    .line 357
    iget-object v10, v0, Lcom/miui/player/plugin/onlinemusic2/AudioSearchResult;->mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

    iget-object v7, v10, Lcom/miui/player/plugin/onlinemusic2/AudioList;->mContent:Ljava/util/List;

    .line 358
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge p2, v10, :cond_2

    move v9, p2

    .line 359
    .local v9, total:I
    :goto_0
    new-array v2, v9, [Lmiui/provider/MusicSearchProvider$MusicMeta;

    .line 360
    .local v2, data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    const/4 v3, 0x0

    .line 361
    .local v3, i:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 362
    .local v6, item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    if-ge v3, v9, :cond_0

    .line 366
    new-instance v1, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    invoke-direct {v1}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;-><init>()V

    .line 367
    .local v1, builder:Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;
    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setOnlineId(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setTitle(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setArtistName(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getAlbumName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setAlbumName(Ljava/lang/String;)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getDurationInSec()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->setDuration(J)Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;

    .line 373
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v1}, Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;->create()Lmiui/provider/MusicSearchProvider$MusicMeta;

    move-result-object v10

    aput-object v10, v2, v3

    move v3, v4

    .line 374
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 358
    .end local v1           #builder:Lmiui/provider/MusicSearchProvider$MusicMeta$Builder;
    .end local v2           #data:[Lmiui/provider/MusicSearchProvider$MusicMeta;
    .end local v3           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v9           #total:I
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "limit"

    .prologue
    .line 250
    invoke-static {p1}, Lmiui/provider/MusicSearchProvider;->isValidType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-nez v2, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 254
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v1, data:Landroid/os/Bundle;
    const-string v2, "result_key"

    invoke-static {p0, p1, p3, p4}, Lcom/miui/player/provider/MusicSearch;->doQuery(Landroid/content/Context;I[Ljava/lang/String;I)Lmiui/provider/MusicSearchProvider$MusicSearchResult;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 257
    new-instance v0, Lcom/miui/player/provider/MusicSearch$CursorWithExtras;

    invoke-direct {v0}, Lcom/miui/player/provider/MusicSearch$CursorWithExtras;-><init>()V

    .line 258
    .local v0, cursor:Lcom/miui/player/provider/MusicSearch$CursorWithExtras;
    invoke-virtual {v0, v1}, Lcom/miui/player/provider/MusicSearch$CursorWithExtras;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v3, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-object v3

    .line 238
    :cond_0
    :try_start_0
    invoke-static {p1}, Lmiui/provider/MusicSearchProvider;->parseTypeFromUri(Landroid/net/Uri;)I

    move-result v2

    .line 239
    .local v2, type:I
    invoke-static {p1}, Lmiui/provider/MusicSearchProvider;->parseLimitFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 241
    .local v1, limit:I
    invoke-static {p0, v2, p3, p4, v1}, Lcom/miui/player/provider/MusicSearch;->query(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 242
    .end local v1           #limit:I
    .end local v2           #type:I
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/miui/player/provider/MusicSearch;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static toLocalSearchKey([Ljava/lang/String;)Lcom/miui/player/provider/MusicSearch$SearchKey;
    .locals 7
    .parameter "args"

    .prologue
    .line 406
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .local v3, selectionArgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v2, selection:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lmiui/provider/MusicSearchProvider;->SEARCH_COLS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 410
    aget-object v1, p0, v0

    .line 411
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 413
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    sget-object v5, Lmiui/provider/MusicSearchProvider;->SEARCH_COLS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v5, " like ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 426
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 427
    new-instance v5, Lcom/miui/player/provider/MusicSearch$SearchKey;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/miui/player/provider/MusicSearch$SearchKey;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v5
.end method

.method private static toOnlineSearchKey([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "selectionArgs"

    .prologue
    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 382
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v0           #arg:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
