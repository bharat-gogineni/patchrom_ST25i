.class public Lcom/miui/gallery/data/LocalMergeAlbum;
.super Lcom/miui/gallery/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static mForceReload:Z


# instance fields
.field private mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mSources:[Lcom/miui/gallery/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;[Lcom/miui/gallery/data/MediaSet;)V
    .locals 6
    .parameter "path"
    .parameter "sources"

    .prologue
    .line 52
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 48
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 53
    iput-object p2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .line 54
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 55
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/miui/gallery/data/LocalMergeAlbum;->mForceReload:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-boolean p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mForceReload:Z

    return p0
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 126
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 102
    .local v2, supported:I
    :goto_0
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    iput-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v4

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 104
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/miui/gallery/data/MediaSet;)V

    aput-object v5, v4, v0

    .line 105
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v2, v4

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #supported:I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 107
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #supported:I
    :cond_1
    iput v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 108
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 109
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [I

    invoke-virtual {v4, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private updateSupportedOperations()V
    .locals 4

    .prologue
    .line 114
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v3, v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 115
    .local v2, supported:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v1, v3

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 116
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/2addr v2, v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #supported:I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 118
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #supported:I
    :cond_1
    iput v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 119
    return-void
.end method


# virtual methods
.method public delete(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 255
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/MediaSet;->delete(Landroid/app/Activity;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getDate()J
    .locals 8

    .prologue
    .line 93
    const-wide/16 v3, 0x0

    .line 94
    .local v3, maxDate:J
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 95
    .local v5, media:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v3

    goto :goto_1

    .line 97
    .end local v5           #media:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    return-wide v3
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 144
    :cond_0
    const-string v0, "LocalMergeAlbum"

    const-string v1, "LocalMergeAlbum.getFilePath() returns empty"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, ""

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
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
    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-nez p2, :cond_1

    .line 203
    :cond_0
    return-object v6

    .line 163
    :cond_1
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v11, p1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 164
    .local v1, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 165
    .local v5, markPos:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    invoke-virtual {v10}, [I->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 166
    .local v9, subPos:[I
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v10, v10

    new-array v8, v10, [Lcom/miui/gallery/data/MediaItem;

    .line 168
    .local v8, slot:[Lcom/miui/gallery/data/MediaItem;
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v7, v10

    .line 171
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 172
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v10, v10, v2

    aget v11, v9, v2

    invoke-virtual {v10, v11}, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v10

    aput-object v10, v8, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/gallery/util/MediaItemComparator;->getComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    .line 177
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/miui/gallery/data/MediaItem;>;"
    move v2, v5

    :goto_1
    add-int v10, p1, p2

    if-ge v2, v10, :cond_0

    .line 178
    const/4 v4, -0x1

    .line 179
    .local v4, k:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v7, :cond_5

    .line 180
    aget-object v10, v8, v3

    if-eqz v10, :cond_4

    .line 181
    const/4 v10, -0x1

    if-eq v4, v10, :cond_3

    aget-object v10, v8, v3

    aget-object v11, v8, v4

    invoke-interface {v0, v10, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_4

    .line 182
    :cond_3
    move v4, v3

    .line 179
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 188
    :cond_5
    const/4 v10, -0x1

    if-eq v4, v10, :cond_0

    .line 191
    aget v10, v9, v4

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v4

    .line 192
    if-lt v2, p1, :cond_6

    .line 193
    aget-object v10, v8, v4

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_6
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mFetcher:[Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;

    aget-object v10, v10, v4

    aget v11, v9, v4

    invoke-virtual {v10, v11}, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v10

    aput-object v10, v8, v4

    .line 198
    add-int/lit8 v10, v2, 0x1

    rem-int/lit8 v10, v10, 0x40

    if-nez v10, :cond_7

    .line 199
    iget-object v10, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v11, v2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getSortName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getSortName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->updateSupportedOperations()V

    .line 238
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->isHiddenAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 249
    :goto_1
    iget v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0

    .line 241
    :cond_0
    iget v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    goto :goto_0

    .line 247
    :cond_1
    iget v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSupportedOperation:I

    goto :goto_1
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, count:I
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 210
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v4           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return v1
.end method

.method public hasInvalidSource()Z
    .locals 5

    .prologue
    .line 60
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 61
    const/4 v0, 0x1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, hasInvalidSource:Z
    const/4 v1, 0x0

    .local v1, index:I
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v3, v4

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 65
    iget-object v4, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    aget-object v2, v4, v1

    check-cast v2, Lcom/miui/gallery/data/LocalAlbum;

    .line 66
    .local v2, localAlbum:Lcom/miui/gallery/data/LocalAlbum;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 67
    :cond_2
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 64
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 232
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 218
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_1
    if-eqz v0, :cond_2

    .line 222
    invoke-static {}, Lcom/miui/gallery/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    .line 223
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->updateData()V

    .line 224
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->invalidateCache()V

    .line 226
    :cond_2
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v3
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 262
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/MediaSet;->rotate(I)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setForceReload()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/gallery/data/LocalMergeAlbum;->mForceReload:Z

    .line 270
    return-void
.end method

.method public setMediaSource([Lcom/miui/gallery/data/MediaSet;)V
    .locals 7
    .parameter "sources"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 79
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "LocalMergeAlbum"

    const-string v6, "set.removeContentListener(this);"

    invoke-static {v5, v6}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v4           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/data/LocalMergeAlbum;->mSources:[Lcom/miui/gallery/data/MediaSet;

    .line 87
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->reload()J

    .line 88
    return-void
.end method
