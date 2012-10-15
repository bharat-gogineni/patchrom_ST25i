.class public Lcom/miui/gallery/gadget/MediaSetSource;
.super Ljava/lang/Object;
.source "MediaSetSource.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;
.implements Lcom/miui/gallery/gadget/WidgetSource;


# instance fields
.field private mCache:[Lcom/miui/gallery/data/MediaItem;

.field private mCacheEnd:I

.field private mCacheStart:I

.field private mContentListener:Lcom/miui/gallery/data/ContentListener;

.field private mSource:Lcom/miui/gallery/data/MediaSet;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/miui/gallery/data/MediaItem;

    iput-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCache:[Lcom/miui/gallery/data/MediaItem;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSourceVersion:J

    .line 48
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    iput-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 50
    return-void
.end method

.method private ensureCacheRange(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 58
    iget v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheEnd:I

    if-ge p1, v3, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 62
    .local v1, token:J
    :try_start_0
    iput p1, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    .line 63
    iget-object v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    iget v4, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheEnd:I

    .line 65
    iget-object v3, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCache:[Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 55
    return-void
.end method

.method public declared-synchronized getContentUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "index"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 74
    iget v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCache:[Lcom/miui/gallery/data/MediaItem;

    iget v1, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getContentUriForExternal()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "index"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/gallery/gadget/MediaSetSource;->ensureCacheRange(I)V

    .line 81
    iget v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCache:[Lcom/miui/gallery/data/MediaItem;

    iget v1, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/gallery/gadget/WidgetUtils;->createWidgetBitmap(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasInvalidSource()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    instance-of v0, v0, Lcom/miui/gallery/data/LocalMergeAlbum;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    check-cast v0, Lcom/miui/gallery/data/LocalMergeAlbum;

    invoke-virtual {v0}, Lcom/miui/gallery/data/LocalMergeAlbum;->hasInvalidSource()Z

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 120
    :cond_0
    const-string v0, "MediaSetSource"

    const-string v1, "PhotoRVFactory.onDataSetChanged(): mSource is NOT LocalMergeAlbum"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;

    invoke-interface {v0}, Lcom/miui/gallery/data/ContentListener;->onContentDirty()V

    .line 114
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    .line 88
    .local v0, version:J
    iget-wide v2, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSourceVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 89
    iput-wide v0, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSourceVersion:J

    .line 90
    iput v4, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheStart:I

    .line 91
    iput v4, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCacheEnd:I

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mCache:[Lcom/miui/gallery/data/MediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;

    .line 99
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/gadget/MediaSetSource;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
