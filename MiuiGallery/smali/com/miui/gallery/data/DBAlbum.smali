.class public Lcom/miui/gallery/data/DBAlbum;
.super Ljava/lang/Object;
.source "DBAlbum.java"

# interfaces
.implements Lcom/miui/gallery/data/DBGroup;


# instance fields
.field private mBucketId:Ljava/lang/String;

.field private mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field private mCoverPath:Ljava/lang/String;

.field private mIsHidden:I

.field private mIsHiddenRecent:I

.field private mIsManuallyRecent:I

.field private mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private mPath:Ljava/lang/String;

.field private mRecentVisitTime:J

.field private mSDCardSortBy:I

.field private mSortBy:I

.field private mVisitCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x3

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x3

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 32
    iput v1, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 69
    invoke-static {p1, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 70
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 71
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 72
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 73
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 74
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 75
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 76
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 77
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 79
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 86
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "bucketPath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v3, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 32
    iput v4, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 45
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 48
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 49
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 50
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 51
    iput v2, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 52
    iput v3, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 53
    iput v4, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 54
    return-void
.end method

.method private validateCover()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DBAlbum;->setCover(Lcom/miui/gallery/StorageExplorer/BaseMeta;)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public clone(Lcom/miui/gallery/data/DBAlbum;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 57
    iget-object v0, p1, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    .line 59
    iget-wide v0, p1, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    iput-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 60
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 61
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 62
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 63
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 64
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 65
    iget v0, p1, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 66
    return-void
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/miui/gallery/data/DBAlbum;->validateCover()V

    .line 195
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    return-object v0
.end method

.method public getIsHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 158
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsHiddenRecent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 142
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsManuallyRecent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaSet()Lcom/miui/gallery/data/MediaSet;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getRecentVisitTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    return-wide v0
.end method

.method public getSDCardSortBy()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    return v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    return v0
.end method

.method public getVisitCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    return v0
.end method

.method public setCover(Lcom/miui/gallery/StorageExplorer/BaseMeta;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/data/DBAlbum;->mCoverPath:Ljava/lang/String;

    .line 200
    return-void

    .line 199
    :cond_0
    iget-object v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIsHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHidden:I

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsHiddenRecent(Z)V
    .locals 1
    .parameter "isHiddenRecent"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsHiddenRecent:I

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsManuallyRecent(Z)V
    .locals 1
    .parameter "isManuallyRecent"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/miui/gallery/data/DBAlbum;->mIsManuallyRecent:I

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMediaSet(Lcom/miui/gallery/data/MediaSet;)V
    .locals 0
    .parameter "mediaSet"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/gallery/data/DBAlbum;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 171
    return-void
.end method

.method public setRecentVisitTime(J)V
    .locals 0
    .parameter "recentVisitTime"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/miui/gallery/data/DBAlbum;->mRecentVisitTime:J

    .line 131
    return-void
.end method

.method public setSDCardSortBy(I)V
    .locals 0
    .parameter "SDCardSortBy"

    .prologue
    .line 186
    iput p1, p0, Lcom/miui/gallery/data/DBAlbum;->mSDCardSortBy:I

    .line 187
    return-void
.end method

.method public setSortBy(I)V
    .locals 0
    .parameter "sortBy"

    .prologue
    .line 178
    iput p1, p0, Lcom/miui/gallery/data/DBAlbum;->mSortBy:I

    .line 179
    return-void
.end method

.method public setVisitCount(I)V
    .locals 0
    .parameter "visitCount"

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/gallery/data/DBAlbum;->mVisitCount:I

    .line 139
    return-void
.end method

.method public toContentValue()Landroid/content/ContentValues;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v1, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/miui/gallery/util/GalleryDBHelper;->mAlbumColumns:Ljava/util/ArrayList;

    .line 91
    .local v0, albumColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/util/TableColumn;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getBucketPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getRecentVisitTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v5, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsHiddenRecent()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v5, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsManuallyRecent()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getSortBy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/util/TableColumn;

    iget-object v2, v2, Lcom/miui/gallery/util/TableColumn;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gallery/data/DBAlbum;->getSDCardSortBy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    return-object v1

    :cond_0
    move v2, v4

    .line 98
    goto :goto_0

    :cond_1
    move v2, v4

    .line 100
    goto :goto_1

    :cond_2
    move v3, v4

    .line 102
    goto :goto_2
.end method
