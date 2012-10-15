.class public Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;
.super Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FetchThumbnailTask"
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;

.field private mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field private mType:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/StorageExplorer/BaseMeta;ILcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;)V
    .locals 2
    .parameter "meta"
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;-><init>(Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 310
    iput p2, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    .line 311
    iput-object p3, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;

    .line 312
    return-void
.end method


# virtual methods
.method public load()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget v1, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public postResult()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;

    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    iget v3, p0, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    invoke-static {v2, v3}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager$ThumbnailReadyListener;->onThumbnailReady(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    return-void
.end method
