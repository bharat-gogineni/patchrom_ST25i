.class public Lcom/miui/gallery/app/AlbumSetDataAdapter;
.super Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/ui/AlbumSetView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;,
        Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallableWithShowType;
    }
.end annotation


# instance fields
.field private mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

.field private mAlbumCacheVersion:J

.field private mAlbumSetShowType:I

.field protected mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

.field private mShowTypeVersion:J


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;II)V
    .locals 3
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"
    .parameter "albumSetShowType"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    .line 38
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    .line 47
    iput p4, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    .line 48
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAllAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v0

    .line 49
    .local v0, allAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;
    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getRecentAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getResultAlbumCount()I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mTotalMediaObjectCount:I

    .line 56
    return-void

    .line 52
    :cond_0
    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/AlbumSetDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCacheVersion:J

    return-wide p1
.end method

.method private getReloadTaskWithShowType()Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    check-cast v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;

    return-object v0
.end method


# virtual methods
.method protected canSendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    iget-wide v2, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->showTypeVersion:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeShowType(I)V
    .locals 2
    .parameter "albumSetShowType"

    .prologue
    .line 191
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getRecentAlbumCache()Lcom/miui/gallery/data/RecentAlbumCache;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    .line 194
    iput p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->getReloadTaskWithShowType()Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;->changeType(I)V

    .line 200
    :cond_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getAllAlbumCache()Lcom/miui/gallery/data/AllAlbumCache;

    move-result-object v0

    goto :goto_0
.end method

.method protected createReloadTask()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;

    iget v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumSetShowType:I

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTaskWithShowType;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;I)V

    return-object v0
.end method

.method public getAlbumCache()Lcom/miui/gallery/data/AlbumCacheBase;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    return-object v0
.end method

.method public getSortBy()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v0}, Lcom/miui/gallery/data/AlbumCacheBase;->getSortBy()I

    move-result v0

    return v0
.end method

.method protected sendOnSizeChanged(II)V
    .locals 3
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    iget-wide v1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/miui/gallery/ui/AlbumSetView$ModelListener;->onSizeChanged(IIJ)V

    .line 67
    return-void
.end method

.method protected sendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 71
    iget-wide v0, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->showTypeVersion:J

    iput-wide v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J

    .line 72
    iget v0, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    iget v1, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->totalMediaObjectCount:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->sendOnSizeChanged(II)V

    .line 73
    return-void
.end method

.method protected sendOnWindowContentChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    iget v1, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    iget v2, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->showType:I

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/ui/AlbumSetView$ModelListener;->onWindowContentChanged(II)V

    .line 61
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/ui/AlbumSetView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/ui/AlbumSetView$ModelListener;

    .line 188
    return-void
.end method

.method public setSortBy(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter;->mAlbumCache:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/AlbumCacheBase;->setSortBy(I)V

    .line 208
    return-void
.end method
