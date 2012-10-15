.class public Lcom/miui/gallery/data/FilterSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "FilterSet.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcom/miui/gallery/data/MediaSet;

.field private final mDataManager:Lcom/miui/gallery/data/DataManager;

.field private final mMediaType:I

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "baseSet"
    .parameter "mediaType"

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mAlbums:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/miui/gallery/data/FilterSet;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 38
    iput-object p3, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    .line 39
    iput p4, p0, Lcom/miui/gallery/data/FilterSet;->mMediaType:I

    .line 40
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/data/FilterSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/gallery/data/FilterSet;->mMediaType:I

    return v0
.end method

.method private updateData()V
    .locals 10

    .prologue
    .line 85
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/filter/mediatype/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/miui/gallery/data/FilterSet;->mMediaType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, basePath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 89
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v8, v4}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v6

    .line 90
    .local v6, set:Lcom/miui/gallery/data/MediaSet;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, filteredPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-virtual {v8, v2}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    .line 92
    .local v3, filteredSet:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 93
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v8

    if-gtz v8, :cond_0

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 95
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v2           #filteredPath:Ljava/lang/String;
    .end local v3           #filteredSet:Lcom/miui/gallery/data/MediaSet;
    .end local v6           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v8}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 102
    .local v7, total:I
    new-array v1, v7, [Lcom/miui/gallery/data/Path;

    .line 104
    .local v1, buf:[Lcom/miui/gallery/data/Path;
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    new-instance v9, Lcom/miui/gallery/data/FilterSet$1;

    invoke-direct {v9, p0, v7, v1}, Lcom/miui/gallery/data/FilterSet$1;-><init>(Lcom/miui/gallery/data/FilterSet;I[Lcom/miui/gallery/data/Path;)V

    invoke-virtual {v8, v9}, Lcom/miui/gallery/data/MediaSet;->enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V

    .line 114
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 115
    aget-object v8, v1, v4

    if-eqz v8, :cond_3

    .line 116
    iget-object v8, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    :cond_4
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/miui/gallery/data/FilterSet$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/FilterSet$2;-><init>(Lcom/miui/gallery/data/FilterSet;)V

    .line 135
    .local v0, consumer:Lcom/miui/gallery/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/miui/gallery/data/FilterSet;->mDataManager:Lcom/miui/gallery/data/DataManager;

    iget-object v2, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 136
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
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
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/data/FilterSet;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/miui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/miui/gallery/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x5

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/miui/gallery/data/FilterSet;->notifyContentChanged()V

    .line 81
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSet;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/data/FilterSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/miui/gallery/data/FilterSet;->updateData()V

    .line 73
    invoke-static {}, Lcom/miui/gallery/data/FilterSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/FilterSet;->mDataVersion:J

    .line 75
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/FilterSet;->mDataVersion:J

    return-wide v0
.end method
