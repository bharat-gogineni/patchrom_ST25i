.class public final Lcom/miui/player/provider/PlayerDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlayerDBHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/miui/player/provider/PlayerDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 49
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 50
    iput-object p1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    .line 51
    iput-boolean p3, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    .line 52
    return-void
.end method

.method private static createNowplayinglist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v3, "name"

    const-string v4, "nowplaying"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "list_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 204
    .local v1, time:J
    const-string v3, "date_added"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v3, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v3, "playlists"

    const-string v4, "date_added"

    invoke-virtual {p0, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 210
    return-void
.end method

.method private static insertEqualizerConfig(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "context"
    .parameter "db"

    .prologue
    .line 241
    const-string v17, "INSERT INTO equalizer VALUES (?, ?, ?, ?)"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 244
    .local v11, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 245
    const/16 v17, 0x2

    const-string v18, "$$custom"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 246
    const/16 v17, 0x3

    const-string v18, "[0,0,0,0,0]"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 247
    const/16 v17, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 248
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 250
    const/4 v9, 0x1

    .line 251
    .local v9, id:I
    const/4 v12, 0x0

    .line 252
    .local v12, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 253
    .local v5, fis:Ljava/io/InputStreamReader;
    const/4 v14, 0x0

    .line 255
    .local v14, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "eq_config"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 256
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v5           #fis:Ljava/io/InputStreamReader;
    .local v6, fis:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 258
    .end local v14           #reader:Ljava/io/BufferedReader;
    .local v15, reader:Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 260
    .local v16, s:Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f0b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v13

    .line 261
    .local v13, names:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    move v10, v9

    .line 262
    .end local v9           #id:I
    .local v10, id:I
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 263
    const/16 v17, 0x23

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 264
    .local v3, comment:I
    if-ltz v3, :cond_1

    .line 265
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 268
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v17

    if-eqz v17, :cond_0

    .line 271
    const/16 v17, 0x1

    add-int/lit8 v9, v10, 0x1

    .end local v10           #id:I
    .restart local v9       #id:I
    int-to-long v0, v10

    move-wide/from16 v18, v0

    :try_start_4
    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 272
    const/16 v17, 0x2

    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    aget-object v18, v13, v8

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 273
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 274
    const/16 v17, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 275
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    move v10, v9

    .line 276
    .end local v9           #id:I
    .restart local v10       #id:I
    goto :goto_0

    .end local v3           #comment:I
    :cond_2
    move-object v14, v15

    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/InputStreamReader;
    move v9, v10

    .line 293
    .end local v8           #i:I
    .end local v10           #id:I
    .end local v13           #names:[Ljava/lang/String;
    .end local v16           #s:Ljava/lang/String;
    .restart local v9       #id:I
    :cond_3
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v4

    .line 278
    .local v4, e1:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    if-eqz v14, :cond_4

    .line 281
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 283
    :cond_4
    if-eqz v5, :cond_5

    .line 284
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 287
    :cond_5
    if-eqz v12, :cond_3

    .line 288
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v17

    goto :goto_1

    .line 277
    .end local v4           #e1:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/InputStreamReader;
    .restart local v6       #fis:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v5           #fis:Ljava/io/InputStreamReader;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v6       #fis:Ljava/io/InputStreamReader;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    .restart local v16       #s:Ljava/lang/String;
    :catch_3
    move-exception v4

    move-object v14, v15

    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v5           #fis:Ljava/io/InputStreamReader;
    .end local v9           #id:I
    .end local v14           #reader:Ljava/io/BufferedReader;
    .restart local v6       #fis:Ljava/io/InputStreamReader;
    .restart local v8       #i:I
    .restart local v10       #id:I
    .restart local v13       #names:[Ljava/lang/String;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v14, v15

    .end local v15           #reader:Ljava/io/BufferedReader;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/InputStreamReader;
    .restart local v5       #fis:Ljava/io/InputStreamReader;
    move v9, v10

    .end local v10           #id:I
    .restart local v9       #id:I
    goto :goto_2
.end method

.method private static recreateViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 213
    const-string v0, "DROP VIEW IF EXISTS nowplaying_audio_view"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v0, "DROP TRIGGER IF EXISTS nowplayinglist_delete"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v0, "CREATE VIEW IF NOT EXISTS nowplaying_audio_view AS SELECT audio_id AS _id , audio_id , title , album , artist , _data , date_added , duration , online_id , provider_id , play_order FROM playlists_audio_map WHERE playlist_id = 0 ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "CREATE TRIGGER IF NOT EXISTS nowplayinglist_delete INSTEAD OF DELETE ON nowplaying_audio_view BEGIN  DELETE FROM playlists_audio_map WHERE audio_id = old._id;  END "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/16 v3, 0x8

    .line 83
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database update: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eq p4, v3, :cond_0

    .line 87
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 90
    :cond_0
    if-le p3, p4, :cond_1

    .line 91
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 96
    :cond_1
    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 98
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading media database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "DROP TABLE IF EXISTS playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "DROP TABLE IF EXISTS playlists_audio_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE TABLE IF NOT EXISTS playlists ( _id  INTEGER PRIMARY KEY,name TEXT, folder_path TEXT, date_added INTEGER, list_type INTEGER, date_modified INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE TABLE IF NOT EXISTS playlists_audio_map (_id INTEGER PRIMARY KEY, audio_id INTEGER NOT NULL, playlist_id INTEGER NOT NULL, play_order INTEGER NOT NULL, date_added INTEGER, _data TEXT NOT NULL, title TEXT NOT NULL, online_id TEXT, provider_id TEXT, album TEXT, artist TEXT, duration INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlist_cleanup DELETE ON playlists BEGIN  DELETE FROM playlists_audio_map WHERE playlist_id = old._id;  END "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lcom/miui/player/provider/PlayerDBHelper;->createNowplayinglist(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    const-string v0, "DROP TABLE IF EXISTS equalizer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE TABLE IF NOT EXISTS equalizer (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, _data TEXT NOT NULL, data_added INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerDBHelper;->insertEqualizerConfig(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    :cond_2
    const/4 v0, 0x3

    if-ge p3, v0, :cond_3

    .line 149
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "update db from 2 to 3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "DROP TABLE IF EXISTS statistics"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string v0, "CREATE TABLE IF NOT EXISTS statistics (_id INTEGER PRIMARY KEY, audio_id INTEGER, _data TEXT, played_count INTEGER, data_added INTEGER NOT NULL, data_last_modified INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    :cond_3
    const/4 v0, 0x4

    if-ge p3, v0, :cond_4

    .line 161
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "update db from 3 to 4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "DELETE FROM playlists_audio_map WHERE audio_id>=536870911"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    :cond_4
    const/4 v0, 0x6

    if-ge p3, v0, :cond_5

    .line 167
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "update db from 4 to 6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "DROP TABLE IF EXISTS online_audio_detail"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE TABLE IF NOT EXISTS online_audio_detail (_id INTEGER PRIMARY KEY, time_last_modified INTEGER NOT NULL,online_id TEXT NOT NULL, album_id TEXT, artist_id TEXT, album_url TEXT, lyric_url TEXT ); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    :cond_5
    if-ge p3, v3, :cond_6

    .line 180
    sget-object v0, Lcom/miui/player/provider/PlayerDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "update db from 6 to 8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "DROP TABLE IF EXISTS online_downloading"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "CREATE TABLE IF NOT EXISTS online_downloading (_id INTEGER PRIMARY KEY, download_id INTEGER NOT NULL, online_id TEXT NOT NULL, bitrate INTEGER, link TEXT, description TEXT, time_last_modified INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    :cond_6
    invoke-static {p1}, Lcom/miui/player/provider/PlayerDBHelper;->recreateViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/player/provider/PlayerDBHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    invoke-static {v0, p1, v1, p2, p3}, Lcom/miui/player/provider/PlayerDBHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 69
    return-void
.end method
