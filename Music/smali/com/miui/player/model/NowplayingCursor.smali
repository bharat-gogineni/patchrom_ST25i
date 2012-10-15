.class public Lcom/miui/player/model/NowplayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowplayingCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCols:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCursorIdxs:[J

.field private final mLocalLength:I

.field private mMergeCursor:Landroid/database/Cursor;

.field private mNowplaying:[J

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/miui/player/model/NowplayingCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/model/NowplayingCursor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "cols"
    .parameter "localLength"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 31
    array-length v0, p2

    if-le p3, v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localLength > cols.length) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/miui/player/model/NowplayingCursor;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    .line 37
    if-gez p3, :cond_1

    array-length p3, p2

    .end local p3
    :cond_1
    iput p3, p0, Lcom/miui/player/model/NowplayingCursor;->mLocalLength:I

    .line 38
    invoke-direct {p0}, Lcom/miui/player/model/NowplayingCursor;->makeNowPlayingCursor()V

    .line 39
    return-void
.end method

.method public static createLoader(Landroid/content/Context;[Ljava/lang/String;I)Landroid/content/CursorLoader;
    .locals 1
    .parameter "context"
    .parameter "columns"
    .parameter "len"

    .prologue
    .line 333
    new-instance v0, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    return-object v0
.end method

.method private createLocalNowplaying()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    invoke-static {v1}, Lcom/miui/player/util/SqlUtils;->concatAsSet([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, where:Ljava/lang/String;
    iget v0, p0, Lcom/miui/player/model/NowplayingCursor;->mLocalLength:I

    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    iget v0, p0, Lcom/miui/player/model/NowplayingCursor;->mLocalLength:I

    new-array v2, v0, [Ljava/lang/String;

    .line 69
    .local v2, localCols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/player/model/NowplayingCursor;->mLocalLength:I

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, localCursor:Landroid/database/Cursor;
    return-object v6

    .line 71
    .end local v2           #localCols:[Ljava/lang/String;
    .end local v6           #localCursor:Landroid/database/Cursor;
    :cond_0
    iget-object v2, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    .restart local v2       #localCols:[Ljava/lang/String;
    goto :goto_0
.end method

.method private createOnlineNowplaying()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private makeNowPlayingCursor()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 82
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 83
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_0
    iput-object v12, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    .line 87
    iput-object v12, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    .line 89
    :try_start_0
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v9

    iput-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    if-nez v9, :cond_1

    .line 94
    new-array v9, v11, [J

    iput-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    .line 97
    :cond_1
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    array-length v9, v9

    iput v9, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    .line 98
    iget v9, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    if-nez v9, :cond_3

    .line 151
    :cond_2
    :goto_1
    return-void

    .line 102
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/model/NowplayingCursor;->createLocalNowplaying()Landroid/database/Cursor;

    move-result-object v3

    .line 103
    .local v3, localCursor:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/miui/player/model/NowplayingCursor;->createOnlineNowplaying()Landroid/database/Cursor;

    move-result-object v4

    .line 105
    .local v4, onlineCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    .line 106
    iput-object v3, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    .line 119
    :goto_2
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 120
    .local v6, size:I
    new-array v9, v6, [J

    iput-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    .line 121
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, colidx:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v6, :cond_7

    .line 124
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    iget-object v10, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 125
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 107
    .end local v0           #colidx:I
    .end local v2           #i:I
    .end local v6           #size:I
    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 108
    iput-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 109
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 111
    new-instance v9, Landroid/database/MergeCursor;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/database/Cursor;

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-direct {v9, v10}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 115
    :cond_6
    iput v11, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    goto :goto_1

    .line 127
    .restart local v0       #colidx:I
    .restart local v2       #i:I
    .restart local v6       #size:I
    :cond_7
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    const/4 v9, -0x1

    iput v9, p0, Lcom/miui/player/model/NowplayingCursor;->mCurPos:I

    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, removed:I
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    array-length v9, v9

    add-int/lit8 v2, v9, -0x1

    :goto_4
    if-ltz v2, :cond_9

    .line 136
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    aget-wide v7, v9, v2

    .line 137
    .local v7, trackid:J
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    invoke-static {v9, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 138
    .local v1, crsridx:I
    if-gez v1, :cond_8

    .line 139
    invoke-static {v7, v8}, Lcom/miui/player/service/ServiceHelper;->removeQueueItem(J)I

    move-result v9

    add-int/2addr v5, v9

    .line 135
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 142
    .end local v1           #crsridx:I
    .end local v7           #trackid:J
    :cond_9
    if-lez v5, :cond_2

    .line 143
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v9

    iput-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    .line 144
    iget-object v9, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    array-length v9, v9

    iput v9, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    .line 145
    iget v9, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    if-nez v9, :cond_2

    .line 146
    iput-object v12, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    goto/16 :goto_1

    .line 90
    .end local v0           #colidx:I
    .end local v2           #i:I
    .end local v3           #localCursor:Landroid/database/Cursor;
    .end local v4           #onlineCursor:Landroid/database/Cursor;
    .end local v5           #removed:I
    .end local v6           #size:I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iput-object v3, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v1, Lcom/miui/player/model/NowplayingCursor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iput-object v3, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    throw v1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 298
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 313
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/miui/player/model/NowplayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 269
    :goto_0
    return-wide v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 235
    invoke-static {p1, p2}, Lcom/miui/player/service/ServiceHelper;->moveQueueItem(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    .line 237
    const/4 v0, -0x1

    iget v1, p0, Lcom/miui/player/model/NowplayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/model/NowplayingCursor;->onMove(II)Z

    .line 239
    :cond_0
    return-void
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    .line 160
    if-ne p1, p2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    if-nez v4, :cond_3

    .line 164
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    :cond_3
    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mNowplaying:[J

    aget-wide v1, v4, p2

    .line 173
    .local v1, newid:J
    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mCursorIdxs:[J

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 174
    .local v0, crsridx:I
    iget-object v4, p0, Lcom/miui/player/model/NowplayingCursor;->mMergeCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 175
    iput p2, p0, Lcom/miui/player/model/NowplayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/miui/player/model/NowplayingCursor;->makeNowPlayingCursor()V

    .line 303
    const/4 v0, 0x1

    return v0
.end method
