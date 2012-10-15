.class public Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;
.super Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.source "CloudAlbumSetDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/cloud/CloudAlbumSetView$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;
    }
.end annotation


# instance fields
.field protected mModelListener:Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V
    .locals 1
    .parameter "activity"
    .parameter "albumSet"
    .parameter "cacheSize"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;-><init>(Lcom/miui/gallery/app/GalleryActivity;Lcom/miui/gallery/data/MediaSet;I)V

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mTotalMediaObjectCount:I

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mSource:Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method


# virtual methods
.method protected createReloadTask()Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter$CloudReloadTask;-><init>(Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;)V

    return-object v0
.end method

.method protected sendOnSizeChanged(II)V
    .locals 1
    .parameter "size"
    .parameter "totalMediaObjectCount"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;->onSizeChanged(II)V

    .line 35
    return-void
.end method

.method protected sendOnSizeChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 39
    iget v0, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->size:I

    iget v1, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->totalMediaObjectCount:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->sendOnSizeChanged(II)V

    .line 40
    return-void
.end method

.method protected sendOnWindowContentChanged(Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;

    iget v1, p1, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$UpdateInfo;->index:I

    invoke-interface {v0, v1}, Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;->onWindowContentChanged(I)V

    .line 30
    return-void
.end method

.method public setModelListener(Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudAlbumSetDataAdapter;->mModelListener:Lcom/miui/gallery/cloud/CloudAlbumSetView$ModelListener;

    .line 25
    return-void
.end method
