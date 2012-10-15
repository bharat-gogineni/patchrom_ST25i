.class Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/miui/gallery/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;)V
    .locals 0
    .parameter "baseSet"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    .line 279
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/miui/gallery/data/MediaItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, needLoading:Z
    const/4 v0, 0x0

    .line 288
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_5

    .line 290
    :cond_0
    const/4 v1, 0x1

    .line 298
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/gallery/data/LocalMergeAlbum;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 301
    iput p1, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 302
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/miui/gallery/data/LocalMergeAlbum;->access$002(Z)Z

    .line 305
    :cond_3
    iget v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_4

    iget v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_6

    .line 306
    :cond_4
    const/4 v2, 0x0

    .line 309
    :goto_1
    return-object v2

    .line 292
    :cond_5
    iget-object v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 293
    .restart local v0       #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 294
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_6
    iget v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 283
    return-void
.end method
