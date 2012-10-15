.class public Lcom/miui/gallery/data/ComboAlbumSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/miui/gallery/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;[Lcom/miui/gallery/data/MediaSet;)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "mediaSets"

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/gallery/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 35
    iput-object p3, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    .line 36
    iget-object v0, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 37
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getAllAlbums()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    .local v1, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 84
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getAllAlbums()Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    .local v0, allAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    if-eqz v0, :cond_0

    .line 89
    .end local v0           #allAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    .end local v4           #set:Lcom/miui/gallery/data/MediaSet;
    :goto_1
    return-object v0

    .line 83
    .restart local v0       #allAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    .restart local v4       #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0           #allAlbums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    .end local v4           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 6
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 46
    .local v3, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    .line 47
    .local v4, size:I
    if-ge p1, v4, :cond_0

    .line 48
    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;

    move-result-object v5

    .line 52
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    .end local v4           #size:I
    :goto_1
    return-object v5

    .line 50
    .restart local v3       #set:Lcom/miui/gallery/data/MediaSet;
    .restart local v4       #size:I
    :cond_0
    sub-int/2addr p1, v4

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v3           #set:Lcom/miui/gallery/data/MediaSet;
    .end local v4           #size:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSubMediaSetCount()I
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, count:I
    iget-object v0, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    .local v0, arr$:[Lcom/miui/gallery/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 59
    .local v4, set:Lcom/miui/gallery/data/MediaSet;
    invoke-virtual {v4}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v4           #set:Lcom/miui/gallery/data/MediaSet;
    :cond_0
    return v1
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/gallery/data/ComboAlbumSet;->notifyContentChanged()V

    .line 94
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 73
    iget-object v5, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v3

    .line 74
    .local v3, version:J
    iget-wide v5, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v0, 0x1

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v3           #version:J
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mDataVersion:J

    .line 77
    :cond_2
    iget-wide v5, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mDataVersion:J

    return-wide v5
.end method

.method public requestSync(Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/data/MediaSet$SyncListener;",
            ")",
            "Lcom/miui/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/gallery/data/ComboAlbumSet;->mSets:[Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcom/miui/gallery/data/MediaSet;Lcom/miui/gallery/data/MediaSet$SyncListener;)Lcom/miui/gallery/util/Future;

    move-result-object v0

    return-object v0
.end method
