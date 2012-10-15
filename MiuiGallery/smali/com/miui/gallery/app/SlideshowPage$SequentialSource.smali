.class Lcom/miui/gallery/app/SlideshowPage$SequentialSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/miui/gallery/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialSource"
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStart:I

.field private mDataVersion:J

.field private final mMediaSet:Lcom/miui/gallery/data/MediaSet;

.field private final mRepeat:Z


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/MediaSet;Z)V
    .locals 2
    .parameter "mediaSet"
    .parameter "repeat"

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 301
    iput-object p1, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    .line 302
    iput-boolean p2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mRepeat:Z

    .line 303
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/MediaSet;->addContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 337
    return-void
.end method

.method public findItemIndex(Lcom/miui/gallery/data/Path;I)I
    .locals 1
    .parameter "path"
    .parameter "hint"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/data/MediaSet;->getIndexOfItem(Lcom/miui/gallery/data/Path;I)I

    move-result v0

    return v0
.end method

.method public getMediaItem(I)Lcom/miui/gallery/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 310
    iget v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    iget-object v4, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    .line 312
    .local v1, dataEnd:I
    iget-boolean v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mRepeat:Z

    if-eqz v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 314
    .local v0, count:I
    if-nez v0, :cond_1

    .line 323
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-object v2

    .line 315
    .restart local v0       #count:I
    :cond_1
    rem-int/2addr p1, v0

    .line 317
    .end local v0           #count:I
    :cond_2
    iget v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v3, :cond_3

    if-lt p1, v1, :cond_4

    .line 318
    :cond_3
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    const/16 v4, 0x20

    invoke-virtual {v3, p1, v4}, Lcom/miui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 319
    iput p1, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 320
    iget-object v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v1, p1, v3

    .line 323
    :cond_4
    iget v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    iget v3, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataStart:I

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    goto :goto_0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 327
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->reload()J

    move-result-wide v0

    .line 328
    .local v0, version:J
    iget-wide v2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 329
    iput-wide v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 330
    iget-object v2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 332
    :cond_0
    iget-wide v2, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mDataVersion:J

    return-wide v2
.end method

.method public removeContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/miui/gallery/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/MediaSet;->removeContentListener(Lcom/miui/gallery/data/ContentListener;)V

    .line 341
    return-void
.end method
