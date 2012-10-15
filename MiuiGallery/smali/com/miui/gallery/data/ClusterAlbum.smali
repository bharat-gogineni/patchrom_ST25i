.class public Lcom/miui/gallery/data/ClusterAlbum;
.super Lcom/miui/gallery/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# instance fields
.field private mClusterAlbumSet:Lcom/miui/gallery/data/MediaSet;

.field private mCover:Lcom/miui/gallery/data/MediaItem;

.field private mDataManager:Lcom/miui/gallery/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "clusterAlbumSet"

    .prologue
    .line 31
    invoke-static {}, Lcom/miui/gallery/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 33
    iput-object p3, p0, Lcom/miui/gallery/data/ClusterAlbum;->mClusterAlbumSet:Lcom/miui/gallery/data/MediaSet;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mClusterAlbumSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 35
    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/miui/gallery/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "start"
    .parameter "count"
    .parameter "dataManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;II",
            "Lcom/miui/gallery/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :cond_0
    return-object v4

    .line 79
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 80
    .local v2, end:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    .local v5, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/miui/gallery/data/MediaItem;

    .line 82
    .local v0, buf:[Lcom/miui/gallery/data/MediaItem;
    new-instance v1, Lcom/miui/gallery/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/miui/gallery/data/ClusterAlbum$1;-><init>([Lcom/miui/gallery/data/MediaItem;)V

    .line 87
    .local v1, consumer:Lcom/miui/gallery/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/miui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 90
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/miui/gallery/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/ClusterAlbum$2;-><init>(Lcom/miui/gallery/data/ClusterAlbum;)V

    .line 132
    .local v0, consumer:Lcom/miui/gallery/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataManager:Lcom/miui/gallery/data/DataManager;

    iget-object v2, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 133
    return-void
.end method

.method protected enumerateMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataManager:Lcom/miui/gallery/data/DataManager;

    iget-object v1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

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
    .line 70
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/miui/gallery/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/miui/gallery/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/data/ClusterAlbum;->notifyContentChanged()V

    .line 116
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mClusterAlbumSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/miui/gallery/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataVersion:J

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/miui/gallery/data/MediaItem;)V
    .locals 0
    .parameter "cover"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mCover:Lcom/miui/gallery/data/MediaItem;

    .line 39
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method
