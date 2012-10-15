.class public Lcom/miui/gallery/data/LocalAlbum;
.super Lcom/miui/gallery/data/MediaSetFromDB;
.source "LocalAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;
    }
.end annotation


# instance fields
.field private mBucketDate:J

.field private mBucketId:I

.field private mDisplayName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private final mIsImage:Z

.field private mItemPath:Lcom/miui/gallery/data/Path;

.field private mSortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;IZ)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 80
    invoke-static {p3}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/miui/gallery/data/LocalAlbum;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZLcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZLcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "isImage"
    .parameter "bucketEntry"

    .prologue
    .line 72
    new-instance v0, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;

    invoke-direct {v0, p3}, Lcom/miui/gallery/data/LocalAlbumSqlSentenceGetter;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/MediaSetFromDB;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/SqlSentenceGetter;)V

    .line 73
    iput-boolean p3, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    .line 76
    invoke-virtual {p0, p4}, Lcom/miui/gallery/data/LocalAlbum;->updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 77
    return-void
.end method

.method public static getMediaItemById(Lcom/miui/gallery/app/GalleryApp;ZZLjava/util/ArrayList;)[Lcom/miui/gallery/data/MediaItem;
    .locals 19
    .parameter "application"
    .parameter "isInternalMedia"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/app/GalleryApp;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/miui/gallery/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Lcom/miui/gallery/data/MediaItem;

    move-object/from16 v18, v0

    .line 195
    .local v18, result:[Lcom/miui/gallery/data/MediaItem;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    :goto_0
    return-object v18

    .line 196
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 197
    .local v14, idLow:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 202
    .local v13, idHigh:I
    if-eqz p2, :cond_1

    .line 203
    sget-object v3, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 204
    .local v3, projection:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalImage;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v16

    .line 210
    .local v16, itemPath:Lcom/miui/gallery/data/Path;
    :goto_1
    if-eqz p2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v2

    .line 212
    .local v2, baseUri:Landroid/net/Uri;
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v10

    .line 214
    .local v10, dataManager:Lcom/miui/gallery/data/DataManager;
    const-string v4, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 217
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_3

    .line 218
    const-string v6, "LocalAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query fail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #baseUri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/miui/gallery/data/DataManager;
    .end local v16           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_1
    sget-object v3, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 207
    .restart local v3       #projection:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalVideo;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v16

    .restart local v16       #itemPath:Lcom/miui/gallery/data/Path;
    goto :goto_1

    .line 210
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 222
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #baseUri:Landroid/net/Uri;
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/miui/gallery/data/DataManager;
    :cond_3
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 223
    .local v17, n:I
    const/4 v11, 0x0

    .line 225
    .local v11, i:I
    :cond_4
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 226
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 229
    .local v12, id:I
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v12, :cond_4

    .line 233
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ge v6, v12, :cond_6

    .line 234
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_5

    .line 247
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 239
    :cond_6
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 240
    .local v4, childPath:Lcom/miui/gallery/data/Path;
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v9

    move-object v6, v10

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;

    move-result-object v15

    .line 242
    .local v15, item:Lcom/miui/gallery/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    add-int/lit8 v11, v11, 0x1

    .line 244
    goto :goto_3

    .line 247
    .end local v4           #childPath:Lcom/miui/gallery/data/Path;
    .end local v12           #id:I
    .end local v15           #item:Lcom/miui/gallery/data/MediaItem;
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private static loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"
    .parameter "isInternalMedia"

    .prologue
    .line 177
    invoke-virtual {p2, p0}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/LocalMediaItem;

    .line 178
    .local v0, item:Lcom/miui/gallery/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 179
    if-eqz p4, :cond_0

    .line 180
    new-instance v0, Lcom/miui/gallery/data/LocalImage;

    .end local v0           #item:Lcom/miui/gallery/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1, p5}, Lcom/miui/gallery/data/LocalImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V

    .line 187
    .restart local v0       #item:Lcom/miui/gallery/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/LocalVideo;

    .end local v0           #item:Lcom/miui/gallery/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1, p5}, Lcom/miui/gallery/data/LocalVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V

    .restart local v0       #item:Lcom/miui/gallery/data/LocalMediaItem;
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v0

    const-string v1, "must call delete() only for valid album"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 295
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getMediaItemAll()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;

    invoke-direct {v2, p0}, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;-><init>(Lcom/miui/gallery/data/LocalAlbum;)V

    invoke-static {p1, v0, v1, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 296
    return-void
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method protected getOrderClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    invoke-static {v0, v1}, Lcom/miui/gallery/util/MediaItemComparator;->getOrderClause(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, result:I
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->canDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    or-int/lit8 v0, v0, 0x1

    .line 277
    :cond_0
    return v0
.end method

.method protected getWhereArgsAll()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getWhereArgsToShow()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected internalReloadSource()V
    .locals 4

    .prologue
    .line 113
    const-string v1, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalAlbum.reload(): update bucket source for invalid album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-static {v1}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 116
    .local v0, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocalAlbum;->updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    .line 117
    return-void
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadMediaItems(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "cursor"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 99
    .local v6, id:I
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1, v6}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v0

    .line 100
    .local v0, childPath:Lcom/miui/gallery/data/Path;
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    iget-boolean v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    invoke-static {p3}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/data/LocalAlbum;->loadOrUpdateItem(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/app/GalleryApp;ZZ)Lcom/miui/gallery/data/MediaItem;

    move-result-object v7

    .line 102
    .local v7, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    .end local v0           #childPath:Lcom/miui/gallery/data/Path;
    .end local v6           #id:I
    .end local v7           #item:Lcom/miui/gallery/data/MediaItem;
    :catchall_0
    move-exception v1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 108
    return-object p1
.end method

.method public setBucketDate(J)V
    .locals 0
    .parameter "bucketDate"

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 162
    return-void
.end method

.method public updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V
    .locals 5
    .parameter "bucketEntry"

    .prologue
    const/4 v4, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    .line 122
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    .line 123
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    .line 124
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 125
    const-string v1, ""

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->updateDataVersion()V

    .line 158
    return-void

    .line 127
    :cond_0
    iget v1, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iput v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    .line 128
    iget-object v1, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mSortName:Ljava/lang/String;

    .line 131
    iget-wide v1, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketDate:J

    .line 132
    iget-object v1, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create an invalid album: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mBucketId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 140
    iput-object v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 141
    iput-object v4, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Ljava/lang/String;)Z

    move-result v0

    .line 145
    .local v0, isInternalMedia:Z
    iget-boolean v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mIsImage:Z

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 147
    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    .line 153
    :goto_1
    new-instance v1, Lcom/miui/gallery/data/ChangeNotifier;

    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 150
    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/data/LocalAlbum;->mItemPath:Lcom/miui/gallery/data/Path;

    goto :goto_1
.end method
