.class public Lcom/miui/gallery/cloud/CloudMediaSet;
.super Lcom/miui/gallery/data/MediaSetFromDB;
.source "CloudMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
    }
.end annotation


# instance fields
.field private mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "groupId"

    .prologue
    .line 83
    invoke-static {p3}, Lcom/miui/gallery/cloud/CloudMediaSet;->createBucketEntry(I)Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/cloud/CloudMediaSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)V
    .locals 1
    .parameter "path"
    .parameter "application"
    .parameter "bucketEntry"

    .prologue
    .line 78
    new-instance v0, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/CloudMediaSetSqlSentenceGetter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/data/MediaSetFromDB;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/SqlSentenceGetter;)V

    .line 79
    invoke-virtual {p0, p3}, Lcom/miui/gallery/cloud/CloudMediaSet;->updateBucketSource(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)V

    .line 80
    return-void
.end method

.method private static createBucketEntry(I)Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
    .locals 2
    .parameter "groupId"

    .prologue
    .line 182
    new-instance v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;-><init>()V

    .line 183
    .local v0, bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
    iput p0, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    .line 184
    iget v1, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryDBHelper;->getCloudGroupName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->displayName:Ljava/lang/String;

    .line 185
    iget-object v1, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->displayName:Ljava/lang/String;

    #setter for: Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->sortName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->access$002(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    return-object v0
.end method

.method private static isImageDBRecord(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 199
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method private static loadOrUpdateItem(Landroid/database/Cursor;)Lcom/miui/gallery/data/MediaItem;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, path:Lcom/miui/gallery/data/Path;
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudMediaSet;->isImageDBRecord(Landroid/database/Cursor;)Z

    move-result v1

    .line 205
    .local v1, isImage:Z
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 207
    .local v0, id:I
    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Lcom/miui/gallery/cloud/CloudImage;->getItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 213
    :goto_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloud/CloudMediaItem;

    .line 214
    .local v2, item:Lcom/miui/gallery/cloud/CloudMediaItem;
    if-nez v2, :cond_2

    .line 215
    if-eqz v1, :cond_1

    .line 216
    new-instance v2, Lcom/miui/gallery/cloud/CloudImage;

    .end local v2           #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/cloud/CloudImage;-><init>(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;)V

    .line 223
    .restart local v2       #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    :goto_1
    return-object v2

    .line 210
    .end local v2           #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    :cond_0
    invoke-static {}, Lcom/miui/gallery/cloud/CloudVideo;->getItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v3

    goto :goto_0

    .line 218
    .restart local v2       #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    :cond_1
    new-instance v2, Lcom/miui/gallery/cloud/CloudVideo;

    .end local v2           #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    invoke-direct {v2, v3, p0}, Lcom/miui/gallery/cloud/CloudVideo;-><init>(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;)V

    .restart local v2       #item:Lcom/miui/gallery/cloud/CloudMediaItem;
    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v2, p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget-object v0, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaSet;->getMicroThumbnailPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMicroThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget v0, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "dateModified DESC ,_id DESC"

    return-object v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    #getter for: Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->sortName:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->access$000(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method protected getWhereArgsAll()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget v1, v1, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "custom"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getWhereArgsToShow()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, index:I
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaSet;->getWhereArgsAll()[Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, whereArgsAll:[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 93
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 94
    aget-object v4, v3, v0

    aput-object v4, v2, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 99
    return-object v2
.end method

.method protected internalReloadSource()V
    .locals 4

    .prologue
    .line 129
    const-string v1, "CloudMediaSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload(): update bucket source for invalid album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget v3, v3, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget v1, v1, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudMediaSet;->createBucketEntry(I)Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    move-result-object v0

    .line 132
    .local v0, bucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudMediaSet;->updateBucketSource(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)V

    .line 133
    return-void
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget v0, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    iget-object v0, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->displayName:Ljava/lang/String;

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
    .locals 2
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
    .line 113
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-static {p2}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {p2}, Lcom/miui/gallery/cloud/CloudMediaSet;->loadOrUpdateItem(Landroid/database/Cursor;)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 118
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0           #item:Lcom/miui/gallery/data/MediaItem;
    :catchall_0
    move-exception v1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 124
    return-object p1
.end method

.method public updateBucketSource(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)V
    .locals 3
    .parameter "bucketEntry"

    .prologue
    .line 136
    const-string v1, "CloudMediaSet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBucketSource: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    invoke-virtual {v0}, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->reset()V

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaSet;->updateDataVersion()V

    .line 148
    return-void

    .line 136
    :cond_0
    iget v0, p1, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBucketEntry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    .line 143
    sget-object v0, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBaseUri:Landroid/net/Uri;

    .line 145
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet;->mNotifier:Lcom/miui/gallery/data/ChangeNotifier;

    goto :goto_1
.end method
