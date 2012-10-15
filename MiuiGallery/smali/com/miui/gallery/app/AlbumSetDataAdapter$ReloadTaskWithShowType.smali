.class public Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;
.super Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
.source "AlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReloadTaskWithShowType"
.end annotation


# instance fields
.field private mSessionShowTypeVersion:J

.field private mShowType:I

.field private mShowTypeVersion:J

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V
    .locals 2
    .parameter
    .parameter "showType"

    .prologue
    const-wide/16 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    .line 100
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)V

    .line 95
    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mSessionShowTypeVersion:J

    .line 96
    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowTypeVersion:J

    .line 101
    iput p2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowType:I

    .line 102
    return-void
.end method


# virtual methods
.method protected canContinueGetUpdateInfo()Z
    .locals 4

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mSessionShowTypeVersion:J

    iget-wide v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowTypeVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized changeType(I)V
    .locals 1
    .parameter "showType"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowType:I

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->nextShowTypeVersionNumber()J

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mDirty:Z

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createZeroSizeCallable(I)Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;
    .locals 4
    .parameter "totalMediaObjectCount"

    .prologue
    .line 125
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallableWithShowType;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget-wide v2, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mSessionShowTypeVersion:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallableWithShowType;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;IJ)V

    return-object v0
.end method

.method protected getTotalMediaObjectCount()I
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    .line 167
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    return v1
.end method

.method public declared-synchronized nextShowTypeVersionNumber()J
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowTypeVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowTypeVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepareResultDBGroups()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/DBGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v2

    .line 133
    .local v2, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    iget v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 134
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v7

    .line 138
    .local v7, threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    :goto_0
    iget-wide v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowTypeVersion:J

    iput-wide v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mSessionShowTypeVersion:J

    .line 141
    invoke-virtual {v7}, Lcom/miui/gallery/data/AlbumCacheBase;->reloadCache()Z

    .line 142
    invoke-virtual {v2}, Lcom/miui/gallery/data/AlbumCacheBase;->reloadCache()Z

    .line 144
    invoke-virtual {v7}, Lcom/miui/gallery/data/AlbumCacheBase;->getDataVersion()J

    move-result-wide v0

    .line 145
    .local v0, albumCacheVersion:J
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J
    invoke-static {v8}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-eqz v8, :cond_1

    .line 147
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    const-wide/16 v9, -0x1

    iput-wide v9, v8, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mSourceVersion:J

    .line 148
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J
    invoke-static {v8, v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$102(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 149
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v3, v8, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentStart:I

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    iget v8, v8, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mContentEnd:I

    if-ge v3, v8, :cond_1

    .line 150
    iget-object v8, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-virtual {v8, v3}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->clearSlot(I)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v0           #albumCacheVersion:J
    .end local v3           #i:I
    .end local v7           #threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    :cond_0
    move-object v7, v2

    .restart local v7       #threadAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    goto :goto_0

    .line 155
    .restart local v0       #albumCacheVersion:J
    :cond_1
    invoke-virtual {v7}, Lcom/miui/gallery/data/AlbumCacheBase;->cloneResultAlbums()Ljava/util/ArrayList;

    move-result-object v5

    .line 157
    .local v5, resultAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBAlbum;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v6, resultGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/DBGroup;>;"
    const/4 v4, 0x0

    .local v4, index:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 159
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 161
    :cond_2
    return-object v6
.end method

.method protected prepareUpdateInfo(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;JII)V
    .locals 2
    .parameter "info"
    .parameter "version"
    .parameter "albumCount"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 118
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->prepareUpdateInfo(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;JII)V

    .line 119
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mSessionShowTypeVersion:J

    iput-wide v0, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->showTypeVersion:J

    .line 120
    iget v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->mShowType:I

    iput v0, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->showType:I

    .line 121
    return-void
.end method
