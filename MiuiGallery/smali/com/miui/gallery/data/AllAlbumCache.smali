.class public Lcom/miui/gallery/data/AllAlbumCache;
.super Lcom/miui/gallery/data/AlbumCacheBase;
.source "AllAlbumCache.java"


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V
    .locals 0
    .parameter "set"
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z
    .locals 2
    .parameter "dbAlbum"

    .prologue
    const/4 v0, 0x1

    .line 13
    iget-object v1, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v1}, Lcom/miui/gallery/settings/PreferenceHelper;->isShowHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initWithCameraMediaSet(Lcom/miui/gallery/data/MediaSet;)V
    .locals 1
    .parameter "cameraMediaSet"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/AllAlbumCache;->filterAlbum(Lcom/miui/gallery/data/MediaSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readSortBy()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->getAllAlbumsSortBy()I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/gallery/data/AllAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/settings/PreferenceHelper;->setAllAlbumsSortBy(I)V

    .line 27
    return-void
.end method

.method public declared-synchronized tryToAddCameraMediaSet(Lcom/miui/gallery/data/MediaSet;)V
    .locals 2
    .parameter "cameraMediaSet"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/AllAlbumCache;->getDBAlbumByFilePath(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    .line 37
    .local v0, dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/AllAlbumCache;->filterAlbum(Lcom/miui/gallery/data/MediaSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    .end local v0           #dbAlbum:Lcom/miui/gallery/data/DBAlbum;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
