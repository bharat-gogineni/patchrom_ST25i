.class public Lcom/miui/gallery/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/DownloadCache$TaskProxy;,
        Lcom/miui/gallery/data/DownloadCache$DownloadTask;,
        Lcom/miui/gallery/data/DownloadCache$Entry;,
        Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mAssociateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/miui/gallery/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapacity:J

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/miui/gallery/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 52
    sget-object v0, Lcom/miui/gallery/data/DownloadEntry;->SCHEMA:Lcom/miui/gallery/common/EntrySchema;

    invoke-virtual {v0}, Lcom/miui/gallery/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 55
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "hash_code"

    aput-object v2, v1, v4

    const-string v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    .line 62
    const-string v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/gallery/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Ljava/io/File;J)V
    .locals 2
    .parameter "application"
    .parameter "root"
    .parameter "capacity"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/miui/gallery/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/gallery/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/data/DownloadCache;->mInitialized:Z

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    .line 89
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    .line 90
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 91
    iput-wide p3, p0, Lcom/miui/gallery/data/DownloadCache;->mCapacity:J

    .line 92
    new-instance v0, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;-><init>(Lcom/miui/gallery/data/DownloadCache;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/gallery/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/DownloadCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/data/DownloadCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/data/DownloadCache;)Lcom/miui/gallery/common/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/data/DownloadCache;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/miui/gallery/data/DownloadCache$Entry;
    .locals 19
    .parameter "stringUrl"

    .prologue
    .line 97
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v15

    .line 98
    .local v15, hash:J
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    aput-object p1, v7, v3

    .line 99
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcom/miui/gallery/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 102
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    new-instance v14, Ljava/io/File;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v14, file:Ljava/io/File;
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 105
    .local v17, id:J
    const/4 v12, 0x0

    .line 106
    .local v12, entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/miui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/miui/gallery/data/DownloadCache$Entry;

    move-object v12, v0

    .line 108
    if-nez v12, :cond_0

    .line 109
    new-instance v13, Lcom/miui/gallery/data/DownloadCache$Entry;

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v13, v0, v1, v2, v14}, Lcom/miui/gallery/data/DownloadCache$Entry;-><init>(Lcom/miui/gallery/data/DownloadCache;JLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v12           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .local v13, entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v13}, Lcom/miui/gallery/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v13

    .line 112
    .end local v13           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .restart local v12       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v12           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .end local v14           #file:Ljava/io/File;
    .end local v17           #id:J
    :goto_0
    return-object v12

    .line 112
    .restart local v12       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .restart local v14       #file:Ljava/io/File;
    .restart local v17       #id:J
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    .end local v12           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .end local v14           #file:Ljava/io/File;
    .end local v17           #id:J
    :catchall_1
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v12, 0x0

    goto :goto_0

    .line 112
    .restart local v13       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .restart local v14       #file:Ljava/io/File;
    .restart local v17       #id:J
    :catchall_2
    move-exception v3

    move-object v12, v13

    .end local v13           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .restart local v12       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    goto :goto_1
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 17
    .parameter "maxDeleteFileCount"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/miui/gallery/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/miui/gallery/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/miui/gallery/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 196
    .local v10, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-lez p1, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/miui/gallery/data/DownloadCache;->mCapacity:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 198
    .local v11, id:J
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 199
    .local v16, url:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 200
    .local v14, size:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 202
    .local v13, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/miui/gallery/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 204
    .local v9, containsKey:Z
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 205
    if-nez v9, :cond_1

    .line 206
    add-int/lit8 p1, p1, -0x1

    .line 207
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    sub-long/2addr v1, v14

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    .line 208
    invoke-static {v13}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 216
    .end local v9           #containsKey:Z
    .end local v11           #id:J
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #size:J
    .end local v16           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    .end local v10           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 204
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #id:J
    .restart local v13       #path:Ljava/lang/String;
    .restart local v14       #size:J
    .restart local v16       #url:Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 216
    .end local v11           #id:J
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #size:J
    .end local v16           #url:Ljava/lang/String;
    :cond_2
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized initialize()V
    .locals 9

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gallery/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/gallery/data/DownloadCache;->mInitialized:Z

    .line 237
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/io/File;Z)Z

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/miui/gallery/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 254
    iget-wide v0, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/miui/gallery/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    goto :goto_0

    .line 252
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 7
    .parameter "url"
    .parameter "file"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 222
    .local v1, size:J
    iget-wide v4, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/miui/gallery/data/DownloadCache;->mTotalBytes:J

    .line 224
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, hashCode:Ljava/lang/String;
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, "hash_code"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, "content_url"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "_size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v4, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 221
    .end local v0           #hashCode:Ljava/lang/String;
    .end local v1           #size:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateLastAccess(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/miui/gallery/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 188
    return-void
.end method


# virtual methods
.method public download(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/miui/gallery/data/DownloadCache$Entry;
    .locals 8
    .parameter "jc"
    .parameter "url"

    .prologue
    .line 147
    iget-boolean v4, p0, Lcom/miui/gallery/data/DownloadCache;->mInitialized:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/data/DownloadCache;->initialize()V

    .line 149
    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, stringUrl:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache;->mEntryMap:Lcom/miui/gallery/common/LruCache;

    invoke-virtual {v4, v2}, Lcom/miui/gallery/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/DownloadCache$Entry;

    .line 154
    .local v0, entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    if-eqz v0, :cond_1

    .line 155
    iget-wide v6, v0, Lcom/miui/gallery/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/miui/gallery/data/DownloadCache;->updateLastAccess(J)V

    .line 156
    monitor-exit v5

    .line 180
    .end local v0           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :goto_0
    return-object v0

    .line 158
    .restart local v0       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    new-instance v1, Lcom/miui/gallery/data/DownloadCache$TaskProxy;

    invoke-direct {v1}, Lcom/miui/gallery/data/DownloadCache$TaskProxy;-><init>()V

    .line 162
    .local v1, proxy:Lcom/miui/gallery/data/DownloadCache$TaskProxy;
    iget-object v5, p0, Lcom/miui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 163
    :try_start_1
    invoke-direct {p0, v2}, Lcom/miui/gallery/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/miui/gallery/data/DownloadCache$Entry;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2

    .line 165
    iget-wide v6, v0, Lcom/miui/gallery/data/DownloadCache$Entry;->mId:J

    invoke-direct {p0, v6, v7}, Lcom/miui/gallery/data/DownloadCache;->updateLastAccess(J)V

    .line 166
    monitor-exit v5

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 158
    .end local v0           #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .end local v1           #proxy:Lcom/miui/gallery/data/DownloadCache$TaskProxy;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 171
    .restart local v0       #entry:Lcom/miui/gallery/data/DownloadCache$Entry;
    .restart local v1       #proxy:Lcom/miui/gallery/data/DownloadCache$TaskProxy;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/DownloadCache$DownloadTask;

    .line 172
    .local v3, task:Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    if-nez v3, :cond_3

    .line 173
    new-instance v3, Lcom/miui/gallery/data/DownloadCache$DownloadTask;

    .end local v3           #task:Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    invoke-direct {v3, p0, v2}, Lcom/miui/gallery/data/DownloadCache$DownloadTask;-><init>(Lcom/miui/gallery/data/DownloadCache;Ljava/lang/String;)V

    .line 174
    .restart local v3       #task:Lcom/miui/gallery/data/DownloadCache$DownloadTask;
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, Lcom/miui/gallery/data/DownloadCache;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryApp;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v4

    #setter for: Lcom/miui/gallery/data/DownloadCache$DownloadTask;->mFuture:Lcom/miui/gallery/util/Future;
    invoke-static {v3, v4}, Lcom/miui/gallery/data/DownloadCache$DownloadTask;->access$002(Lcom/miui/gallery/data/DownloadCache$DownloadTask;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;

    .line 177
    :cond_3
    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DownloadCache$DownloadTask;->addProxy(Lcom/miui/gallery/data/DownloadCache$TaskProxy;)V

    .line 178
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/DownloadCache$TaskProxy;->get(Lcom/miui/gallery/util/ThreadPool$JobContext;)Lcom/miui/gallery/data/DownloadCache$Entry;

    move-result-object v0

    goto :goto_0
.end method
