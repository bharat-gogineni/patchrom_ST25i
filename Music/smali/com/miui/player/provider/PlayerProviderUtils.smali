.class public Lcom/miui/player/provider/PlayerProviderUtils;
.super Ljava/lang/Object;
.source "PlayerProviderUtils.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/miui/player/provider/PlayerProviderUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerProviderUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNowplayingList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 370
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public static codeEqualizerConfig([I)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 620
    if-nez p0, :cond_0

    .line 621
    const/4 v2, 0x0

    .line 629
    :goto_0
    return-object v2

    .line 624
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 625
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 626
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 629
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static createEqualizerConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 699
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 700
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 701
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v4, "_data"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 705
    .local v0, id:I
    if-ltz v0, :cond_1

    .line 706
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 707
    invoke-virtual {v1, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 713
    .end local v0           #id:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v2

    .line 709
    .restart local v0       #id:I
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v4, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static createMemberInfoById(Landroid/content/Context;[JI)[Landroid/content/ContentValues;
    .locals 21
    .parameter "context"
    .parameter "ids"
    .parameter "orderBase"

    .prologue
    .line 94
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 95
    :cond_0
    const/4 v14, 0x0

    .line 158
    :cond_1
    :goto_0
    return-object v14

    .line 98
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v10, localAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v12, onlineAudioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[J
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v8, :cond_4

    aget-wide v19, v3, v5

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 101
    .local v6, id:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v19

    if-nez v19, :cond_3

    .line 102
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    .end local v6           #id:Ljava/lang/Long;
    :cond_4
    const/4 v9, 0x0

    .line 109
    .local v9, local:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 111
    .local v11, online:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 112
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 115
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 116
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v11

    .line 119
    :cond_6
    const/16 v17, 0x0

    .line 120
    .local v17, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_8

    if-nez v11, :cond_8

    .line 121
    move-object/from16 v17, v9

    .line 126
    :cond_7
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v14, v0, [Landroid/content/ContentValues;

    .line 127
    .local v14, ret:[Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 129
    .local v15, row:I
    if-eqz v17, :cond_b

    .line 130
    move-object/from16 v3, p1

    array-length v8, v3

    const/4 v5, 0x0

    move/from16 v16, v15

    .end local v15           #row:I
    .local v16, row:I
    move/from16 v13, p2

    .end local p2
    .local v13, orderBase:I
    :goto_4
    if-ge v5, v8, :cond_9

    aget-wide v6, v3, v5

    .line 131
    .local v6, id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 132
    .local v4, cv:Landroid/content/ContentValues;
    if-eqz v4, :cond_f

    .line 133
    const-string v19, "play_order"

    add-int/lit8 p2, v13, 0x1

    .end local v13           #orderBase:I
    .restart local p2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    add-int/lit8 v15, v16, 0x1

    .end local v16           #row:I
    .restart local v15       #row:I
    aput-object v4, v14, v16

    .line 130
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    goto :goto_4

    .line 122
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v6           #id:J
    .end local v13           #orderBase:I
    .end local v14           #ret:[Landroid/content/ContentValues;
    .end local v16           #row:I
    .restart local p2
    :cond_8
    if-nez v9, :cond_7

    if-eqz v11, :cond_7

    .line 123
    move-object/from16 v17, v11

    goto :goto_3

    .end local p2
    .restart local v13       #orderBase:I
    .restart local v14       #ret:[Landroid/content/ContentValues;
    .restart local v16       #row:I
    :cond_9
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .line 151
    .end local v13           #orderBase:I
    .restart local p2
    :cond_a
    :goto_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 153
    new-array v0, v15, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 154
    .local v18, tempValues:[Landroid/content/ContentValues;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v14, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    move-object/from16 v14, v18

    goto/16 :goto_0

    .line 137
    .end local v18           #tempValues:[Landroid/content/ContentValues;
    :cond_b
    if-eqz v9, :cond_a

    if-eqz v11, :cond_a

    .line 138
    move-object/from16 v3, p1

    array-length v8, v3

    const/4 v5, 0x0

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    :goto_7
    if-ge v5, v8, :cond_e

    aget-wide v6, v3, v5

    .line 139
    .restart local v6       #id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 140
    .restart local v4       #cv:Landroid/content/ContentValues;
    if-nez v4, :cond_c

    .line 141
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cv:Landroid/content/ContentValues;
    check-cast v4, Landroid/content/ContentValues;

    .line 144
    .restart local v4       #cv:Landroid/content/ContentValues;
    :cond_c
    if-eqz v4, :cond_d

    .line 145
    const-string v19, "play_order"

    add-int/lit8 p2, v13, 0x1

    .end local v13           #orderBase:I
    .restart local p2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    add-int/lit8 v15, v16, 0x1

    .end local v16           #row:I
    .restart local v15       #row:I
    aput-object v4, v14, v16

    .line 138
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v15

    .end local v15           #row:I
    .restart local v16       #row:I
    move/from16 v13, p2

    .end local p2
    .restart local v13       #orderBase:I
    goto :goto_7

    :cond_d
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto :goto_8

    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v6           #id:J
    .end local v15           #row:I
    .end local p2
    .restart local v13       #orderBase:I
    .restart local v16       #row:I
    :cond_e
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto :goto_6

    .end local v15           #row:I
    .end local p2
    .restart local v4       #cv:Landroid/content/ContentValues;
    .restart local v6       #id:J
    .restart local v13       #orderBase:I
    .restart local v16       #row:I
    :cond_f
    move/from16 v15, v16

    .end local v16           #row:I
    .restart local v15       #row:I
    move/from16 p2, v13

    .end local v13           #orderBase:I
    .restart local p2
    goto/16 :goto_5
.end method

.method public static createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "playOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, audioList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 301
    const/4 v7, 0x0

    .line 328
    :cond_0
    return-object v7

    .line 304
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinemusic2/Audio;

    .line 306
    .local v2, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    if-eqz v2, :cond_2

    .line 307
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v3, cv:Landroid/content/ContentValues;
    const-string v8, "_data"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v8, "online_id"

    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getAlbumName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, album:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/player/provider/PlayerProviderUtils;->noNullValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, artist:Ljava/lang/String;
    const-string v8, "title"

    invoke-virtual {v3, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v8, "album"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v8, "artist"

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v8, "provider_id"

    invoke-virtual {v3, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v8, "duration"

    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinemusic2/Audio;->getDurationInSec()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string v8, "play_order"

    add-int/lit8 v6, p3, 0x1

    .end local p3
    .local v6, playOrder:I
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p3, v6

    .end local v6           #playOrder:I
    .restart local p3
    goto :goto_0
.end method

.method private static createMemberInfoFromLocalLib(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "album"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "artist"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "duration"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 244
    .local v4, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    const/16 v18, 0x0

    .line 286
    :goto_0
    return-object v18

    .line 248
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, idSet:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 250
    .local v20, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->wrapWithBlacklist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    .local v10, c:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v18, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-nez v10, :cond_2

    .line 255
    const/16 v18, 0x0

    goto :goto_0

    .line 259
    :cond_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_3

    .line 260
    const/16 v18, 0x0

    .line 283
    .end local v18           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    .restart local v18       #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :cond_3
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 264
    .local v14, idIdx:I
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 265
    .local v12, dataIdx:I
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 266
    .local v19, titleIdx:I
    const-string v2, "album"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 267
    .local v8, albumIdx:I
    const-string v2, "artist"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 268
    .local v9, artistIdx:I
    const-string v2, "duration"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 270
    .local v13, durationIdx:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 271
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v11, cv:Landroid/content/ContentValues;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 273
    .local v16, key:J
    const-string v2, "audio_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v2, "_data"

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "title"

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "album"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "artist"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "duration"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 283
    .end local v8           #albumIdx:I
    .end local v9           #artistIdx:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v12           #dataIdx:I
    .end local v13           #durationIdx:I
    .end local v14           #idIdx:I
    .end local v16           #key:J
    .end local v19           #titleIdx:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #albumIdx:I
    .restart local v9       #artistIdx:I
    .restart local v12       #dataIdx:I
    .restart local v13       #durationIdx:I
    .restart local v14       #idIdx:I
    .restart local v19       #titleIdx:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "online_id"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v3, v1

    .line 180
    .local v3, MEMBER_COLS:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    const/16 v19, 0x0

    .line 226
    :goto_0
    return-object v19

    .line 184
    :cond_1
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v19, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-static/range {p1 .. p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v14

    .line 187
    .local v14, idSet:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 192
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 193
    const/16 v19, 0x0

    goto :goto_0

    .line 196
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_3

    .line 197
    const/16 v19, 0x0

    .line 223
    .end local v19           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 200
    .restart local v19       #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    :cond_3
    :try_start_1
    const-string v1, "audio_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 201
    .local v13, idIdx:I
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 202
    .local v11, dataIdx:I
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 203
    .local v20, titleIdx:I
    const-string v1, "album"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, albumIdx:I
    const-string v1, "artist"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 205
    .local v8, artistIdx:I
    const-string v1, "duration"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 206
    .local v12, durationIdx:I
    const-string v1, "online_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 208
    .local v18, providerIdx:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 209
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v10, cv:Landroid/content/ContentValues;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 211
    .local v15, key:J
    const-string v1, "_data"

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "title"

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "album"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "artist"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "duration"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 218
    .local v17, provider:Ljava/lang/String;
    const-string v1, "online_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 223
    .end local v7           #albumIdx:I
    .end local v8           #artistIdx:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #dataIdx:I
    .end local v12           #durationIdx:I
    .end local v13           #idIdx:I
    .end local v15           #key:J
    .end local v17           #provider:Ljava/lang/String;
    .end local v18           #providerIdx:I
    .end local v20           #titleIdx:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v7       #albumIdx:I
    .restart local v8       #artistIdx:I
    .restart local v11       #dataIdx:I
    .restart local v12       #durationIdx:I
    .restart local v13       #idIdx:I
    .restart local v18       #providerIdx:I
    .restart local v20       #titleIdx:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static decodeEqualizerConfig(Ljava/lang/String;)[I
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 602
    if-nez p0, :cond_1

    move-object v2, v3

    .line 616
    :cond_0
    :goto_0
    return-object v2

    .line 607
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, arr:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v2, v4, [I

    .line 609
    .local v2, ret:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 610
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #ret:[I
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 616
    goto :goto_0
.end method

.method public static getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 11
    .parameter "context"
    .parameter "tr"
    .parameter "ar"
    .parameter "audioId"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 564
    cmp-long v0, p3, v8

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    .end local p3
    :goto_0
    return-wide p3

    .line 568
    .restart local p3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p3, v8

    .line 569
    goto :goto_0

    .line 571
    :cond_1
    const-wide/16 v8, 0x0

    .line 572
    .local v8, ret:J
    const-string v0, "mp3"

    invoke-static {p1, p2, v0}, Lcom/miui/player/meta/MetaManager;->getMetaFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 581
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 582
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 586
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    move-wide p3, v8

    .line 590
    goto :goto_0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static getEqualizerConfigData(Landroid/content/Context;IZ)[I
    .locals 9
    .parameter "context"
    .parameter "id"
    .parameter "allowNull"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 646
    const/4 v7, 0x0

    .line 647
    .local v7, levels:[I
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 652
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/provider/PlayerProviderUtils;->decodeEqualizerConfig(Ljava/lang/String;)[I

    move-result-object v7

    .line 655
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_1
    if-eqz v7, :cond_2

    array-length v0, v7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 659
    const/4 v7, 0x0

    .line 663
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    if-nez v7, :cond_3

    if-nez p2, :cond_3

    .line 664
    invoke-static {}, Lcom/miui/player/provider/PlayerProviderUtils;->getEuqalizerDefaultData()[I

    move-result-object v7

    .line 667
    :cond_3
    return-object v7
.end method

.method public static getEqualizerIdByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "defaultName"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 671
    const/4 v7, -0x1

    .line 672
    .local v7, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 673
    .local v0, res:Landroid/content/ContentResolver;
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    .line 674
    .local v2, projs:[Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 679
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 683
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_1
    return v7
.end method

.method public static getEuqalizerDefaultData()[I
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 633
    new-array v1, v3, [I

    .line 634
    .local v1, levels:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 635
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return-object v1
.end method

.method public static getOnlineId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x1

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {p0, v0, p3}, Lcom/miui/player/provider/PlayerProviderUtils;->getOnlineIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, providerIds:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v3, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method public static getOnlineIds(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter
    .parameter "playlistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, audioIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_2

    :cond_0
    move-object v9, v4

    .line 76
    :cond_1
    :goto_0
    return-object v9

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/miui/player/util/SqlUtils;->concatAsSet(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, idSet:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, WHERE:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "online_id"

    aput-object v0, v2, v12

    .line 54
    .local v2, ONLINE_ID_COL:[Ljava/lang/String;
    new-array v9, v12, [Ljava/lang/String;

    .line 56
    .local v9, ret:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 58
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    :goto_1
    if-eqz v6, :cond_1

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, i:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 63
    .end local v7           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 73
    .restart local v7       #i:I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static guessAudioIdColumnIndex(Landroid/database/Cursor;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 735
    const/4 v1, -0x1

    .line 738
    .local v1, index:I
    :try_start_0
    const-string v2, "audio_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 744
    :goto_0
    return v1

    .line 739
    :catch_0
    move-exception v0

    .line 741
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static idForEqualizer(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 724
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 725
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 729
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_1
    return v7
.end method

.method private static noNullValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 332
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "minOrder"

    .prologue
    .line 550
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 554
    .local v2, AUDIO_COLUMN:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_order >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, WHERE:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "play_order"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 559
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static queryNormalEqualizer(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "_id != 0"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeMembersFromDB(Landroid/content/Context;J[J)I
    .locals 5
    .parameter "context"
    .parameter "playlistId"
    .parameter "audioIds"

    .prologue
    .line 336
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    if-nez p3, :cond_1

    .line 337
    :cond_0
    const/4 v3, -0x1

    .line 342
    :goto_0
    return v3

    .line 339
    :cond_1
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p3}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, removeSet:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static removeOnlineMembersFromDB(Landroid/content/Context;JLjava/util/Collection;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "playlistId"
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p3, onlineIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 347
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-ltz v5, :cond_0

    invoke-static {p3}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    :cond_0
    const/4 v4, -0x1

    .line 364
    :cond_1
    :goto_0
    return v4

    .line 351
    :cond_2
    const-string v5, "online_id"

    const-string v6, " OR "

    invoke-static {v5, p3, v6}, Lcom/miui/player/util/SqlUtils;->concatStringFilter(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lcom/miui/player/util/SqlUtils$SQLArgument;

    move-result-object v1

    .line 352
    .local v1, argument:Lcom/miui/player/util/SqlUtils$SQLArgument;
    if-eqz v1, :cond_1

    .line 356
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 357
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "provider_id=?"

    .line 358
    .local v3, where:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/player/util/SqlUtils$SQLArgument;->mSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v5, v1, Lcom/miui/player/util/SqlUtils$SQLArgument;->mArgs:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 361
    .local v0, args:[Ljava/lang/String;
    aput-object p4, v0, v4

    .line 362
    iget-object v5, v1, Lcom/miui/player/util/SqlUtils$SQLArgument;->mArgs:[Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/miui/player/util/SqlUtils$SQLArgument;->mArgs:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v5, v4, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static updateEqualizerConfig(Landroid/content/Context;I[I)I
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 690
    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 691
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 692
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-static {p2}, Lcom/miui/player/provider/PlayerProviderUtils;->codeEqualizerConfig([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "provider"
    .parameter "append"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Audio;",
            ">;",
            "Ljava/lang/String;",
            "Z)[J"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, audioList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    const/4 v0, 0x0

    .line 430
    .local v0, base:I
    invoke-static {p1}, Lcom/xiaomi/common/util/CollectionHelper;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 431
    const/4 v5, 0x0

    .line 463
    :cond_0
    :goto_0
    return-object v5

    .line 434
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 435
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 436
    .local v6, uri:Landroid/net/Uri;
    if-nez p3, :cond_2

    .line 437
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 442
    :goto_1
    const/4 v5, 0x0

    .line 443
    .local v5, ret:[J
    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoByProviderId(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 444
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    .line 445
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [Landroid/content/ContentValues;

    .line 446
    .local v7, valueArr:[Landroid/content/ContentValues;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 447
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 449
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 450
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v5, v9, [J

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, i:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_3

    .line 455
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    aput-wide v9, v5, v3

    .line 454
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 439
    .end local v1           #c:Landroid/database/Cursor;
    .end local v3           #i:I
    .end local v5           #ret:[J
    .end local v7           #valueArr:[Landroid/content/ContentValues;
    .end local v8           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-static {p0, v6}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    goto :goto_1

    .line 458
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #i:I
    .restart local v5       #ret:[J
    .restart local v7       #valueArr:[Landroid/content/ContentValues;
    .restart local v8       #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v3           #i:I
    :catchall_0
    move-exception v9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method public static updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Z)[J
    .locals 19
    .parameter "context"
    .parameter
    .parameter "append"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lmiui/provider/MusicSearchProvider$MusicMeta;",
            ">;Z)[J"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, data:Ljava/util/Collection;,"Ljava/util/Collection<Lmiui/provider/MusicSearchProvider$MusicMeta;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic2/Audio;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/provider/MusicSearchProvider$MusicMeta;

    .line 377
    .local v10, meta:Lmiui/provider/MusicSearchProvider$MusicMeta;
    invoke-virtual {v10}, Lmiui/provider/MusicSearchProvider$MusicMeta;->isOnline()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 378
    invoke-static {v10}, Lcom/miui/player/network/OnlineMusicProxy;->newAudio(Lmiui/provider/MusicSearchProvider$MusicMeta;)Lcom/miui/player/plugin/onlinemusic2/Audio;

    move-result-object v2

    .line 379
    .local v2, audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    .end local v2           #audio:Lcom/miui/player/plugin/onlinemusic2/Audio;
    .end local v10           #meta:Lmiui/provider/MusicSearchProvider$MusicMeta;
    :cond_1
    const/4 v12, 0x0

    .line 390
    .local v12, onlineIds:[J
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 391
    invoke-static/range {p0 .. p0}, Lcom/miui/player/network/OnlineMusicProxy;->getProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v7, v14, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->updateNowplayingList(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Z)[J

    move-result-object v12

    .line 393
    if-eqz v12, :cond_3

    array-length v11, v12

    .line 394
    .local v11, onlineCount:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v14

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v14, v15

    add-int v13, v14, v11

    .line 395
    .local v13, total:I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v14

    if-le v13, v14, :cond_5

    .line 396
    sget-object v14, Lcom/miui/player/provider/PlayerProviderUtils;->TAG:Ljava/lang/String;

    const-string v15, "updateNowplayingList failed: item size=%d, online_id size=%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v6, 0x0

    .line 420
    :cond_2
    return-object v6

    .line 393
    .end local v11           #onlineCount:I
    .end local v13           #total:I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 402
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 403
    .restart local v13       #total:I
    const/4 v11, 0x0

    .line 407
    .restart local v11       #onlineCount:I
    :cond_5
    new-array v6, v13, [J

    .line 408
    .local v6, ids:[J
    const/4 v3, 0x0

    .line 409
    .local v3, i:I
    const/4 v8, 0x0

    .line 410
    .local v8, j:I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/provider/MusicSearchProvider$MusicMeta;

    .line 411
    .restart local v10       #meta:Lmiui/provider/MusicSearchProvider$MusicMeta;
    invoke-virtual {v10}, Lmiui/provider/MusicSearchProvider$MusicMeta;->isOnline()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 412
    if-ge v8, v11, :cond_6

    if-eqz v12, :cond_6

    .line 413
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #j:I
    .local v9, j:I
    aget-wide v14, v12, v8

    aput-wide v14, v6, v3

    move v8, v9

    .end local v9           #j:I
    .restart local v8       #j:I
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 416
    :cond_7
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    iget-wide v14, v10, Lmiui/provider/MusicSearchProvider$MusicMeta;->mLocalId:J

    aput-wide v14, v6, v3

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_2
.end method

.method public static updateNowplayingList(Landroid/content/Context;[JZ)[J
    .locals 28
    .parameter "context"
    .parameter "ids"
    .parameter "append"

    .prologue
    .line 471
    const/4 v7, 0x0

    .line 473
    .local v7, base:I
    if-nez p2, :cond_0

    .line 474
    invoke-static/range {p0 .. p0}, Lcom/miui/player/provider/PlayerProviderUtils;->clearNowplayingList(Landroid/content/Context;)V

    .line 477
    :cond_0
    if-nez p1, :cond_2

    .line 478
    const/16 v21, 0x0

    .line 545
    :cond_1
    :goto_0
    return-object v21

    .line 481
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 482
    .local v20, resolver:Landroid/content/ContentResolver;
    sget-object v22, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .line 483
    .local v22, uri:Landroid/net/Uri;
    if-eqz p2, :cond_3

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/miui/player/util/SqlUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 487
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 488
    .local v21, ret:[J
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v21

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v15, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v16, indexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    .line 493
    aget-wide v25, v21, v10

    invoke-static/range {v25 .. v26}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 494
    aget-wide v25, v21, v10

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 499
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-eqz v25, :cond_1

    .line 504
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/service/HistoryManager;->moveHistoryToNowplayingOnline(Landroid/content/Context;Ljava/util/List;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v21, p1

    .line 505
    goto :goto_0

    .line 508
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/miui/player/provider/PlayerProviderUtils;->createMemberInfoFromPlaylist(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v24

    .line 509
    .local v24, valueMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/content/ContentValues;>;"
    if-eqz v24, :cond_1

    .line 510
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v23, v0

    .line 511
    .local v23, valueArr:[Landroid/content/ContentValues;
    move/from16 v18, v7

    .line 513
    .local v18, playerOrder:I
    const/4 v10, 0x0

    .line 515
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 516
    .local v13, id:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 517
    .local v9, cv:Landroid/content/ContentValues;
    if-eqz v9, :cond_7

    .line 518
    const-string v25, "play_order"

    add-int/lit8 v19, v18, 0x1

    .end local v18           #playerOrder:I
    .local v19, playerOrder:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aput-object v9, v23, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    move/from16 v18, v19

    .end local v19           #playerOrder:I
    .restart local v18       #playerOrder:I
    goto :goto_2

    .line 523
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v13           #id:J
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 524
    const/4 v5, 0x0

    .line 525
    .local v5, assignedIndexCount:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 527
    .local v17, indexSize:I
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/miui/player/provider/PlayerProviderUtils;->queryAudioIdForNowPlaying(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v8

    .line 528
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_a

    .line 530
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    .line 531
    .end local v5           #assignedIndexCount:I
    .local v6, assignedIndexCount:I
    :goto_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v25

    if-nez v25, :cond_9

    move/from16 v0, v17

    if-ge v6, v0, :cond_9

    .line 533
    add-int/lit8 v5, v6, 0x1

    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    aput-wide v26, v21, v25

    .line 532
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v5

    .end local v5           #assignedIndexCount:I
    .restart local v6       #assignedIndexCount:I
    goto :goto_3

    .line 536
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v5, v6

    .line 540
    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    :cond_a
    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 541
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const-wide/16 v26, 0x0

    aput-wide v26, v21, v25

    .line 540
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 536
    :catchall_0
    move-exception v25

    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v25

    .end local v5           #assignedIndexCount:I
    .restart local v6       #assignedIndexCount:I
    :catchall_1
    move-exception v25

    move v5, v6

    .end local v6           #assignedIndexCount:I
    .restart local v5       #assignedIndexCount:I
    goto :goto_5
.end method
