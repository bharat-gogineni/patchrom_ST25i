.class public Lcom/miui/gallery/data/RecentAlbumCache;
.super Lcom/miui/gallery/data/AlbumCacheBase;
.source "RecentAlbumCache.java"


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V
    .locals 0
    .parameter "set"
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected canDisplay(Lcom/miui/gallery/data/DBAlbum;)Z
    .locals 1
    .parameter "dbAlbum"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/data/RecentAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->isShowHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getIsHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v0

    goto :goto_0
.end method

.method protected readSortBy()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/data/RecentAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0}, Lcom/miui/gallery/settings/PreferenceHelper;->getRecentAlbumsSortBy()I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/gallery/data/RecentAlbumCache;->mPreferenceHelper:Lcom/miui/gallery/settings/PreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/settings/PreferenceHelper;->setRecentAlbumsSortBy(I)V

    .line 37
    return-void
.end method
