.class public abstract Lcom/miui/gallery/data/MediaSetFromDB;
.super Lcom/miui/gallery/data/MediaSet;
.source "MediaSetFromDB.java"


# static fields
.field protected static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field protected mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field protected mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected final mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/MediaSetFromDB;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/SqlSentenceGetter;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "sentenceGetter"

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/gallery/data/MediaSetFromDB;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mCachedCount:I

    .line 32
    iput-object p2, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 33
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mResolver:Landroid/content/ContentResolver;

    .line 34
    iput-object p3, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    .line 35
    return-void
.end method

.method private getMediaItemCountAll()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSetFromDB;->internalGetMediaItemCount(Z)I

    move-result v0

    return v0
.end method

.method private internalGetMediaItem(IIZ)Ljava/util/ArrayList;
    .locals 8
    .parameter "start"
    .parameter "count"
    .parameter "getAll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :goto_0
    return-object v7

    .line 64
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v2}, Lcom/miui/gallery/data/SqlSentenceGetter;->getProjection()[Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v3}, Lcom/miui/gallery/data/SqlSentenceGetter;->getWhereClauseAll()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getWhereArgsAll()[Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getOrderClause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 75
    const-string v0, "MediaSetFromDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v3}, Lcom/miui/gallery/data/SqlSentenceGetter;->getWhereClauseToShow()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getWhereArgsToShow()[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 79
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p0, v7, v6, v1}, Lcom/miui/gallery/data/MediaSetFromDB;->loadMediaItems(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0
.end method

.method private internalGetMediaItemCount(Z)I
    .locals 8
    .parameter "getAll"

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return v6

    .line 97
    :cond_0
    iget v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mCachedCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_6

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/data/MediaSetFromDB;->COUNT_PROJECTION:[Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v3}, Lcom/miui/gallery/data/SqlSentenceGetter;->getWhereClauseAll()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getWhereArgsAll()[Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 103
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 104
    const-string v0, "MediaSetFromDB"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v3}, Lcom/miui/gallery/data/SqlSentenceGetter;->getWhereClauseToShow()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getWhereArgsToShow()[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 108
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 109
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 110
    .local v6, count:I
    if-eqz p1, :cond_5

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    :cond_5
    :try_start_1
    iput v6, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 118
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_6
    iget v6, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mCachedCount:I

    goto :goto_0

    .line 115
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/MediaSetFromDB;->internalGetMediaItem(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaItemAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->getMediaItemCountAll()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/gallery/data/MediaSetFromDB;->internalGetMediaItem(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSetFromDB;->internalGetMediaItemCount(Z)I

    move-result v0

    return v0
.end method

.method protected abstract getOrderClause()Ljava/lang/String;
.end method

.method protected abstract getWhereArgsAll()[Ljava/lang/String;
.end method

.method protected abstract getWhereArgsToShow()[Ljava/lang/String;
.end method

.method protected abstract internalReloadSource()V
.end method

.method public abstract isValid()Z
.end method

.method protected abstract loadMediaItems(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/net/Uri;)Ljava/util/ArrayList;
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
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, shouldUpdateDataVersion:Z
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->internalReloadSource()V

    .line 134
    const/4 v0, 0x1

    .line 139
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/data/MediaSetFromDB;->updateDataVersion()V

    .line 142
    :cond_1
    iget-wide v1, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mDataVersion:J

    return-wide v1

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateDataVersion()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mCachedCount:I

    .line 126
    invoke-static {}, Lcom/miui/gallery/data/MediaSetFromDB;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/MediaSetFromDB;->mDataVersion:J

    .line 127
    return-void
.end method
