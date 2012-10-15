.class public abstract Lcom/miui/gallery/data/LocalMediaItem;
.super Lcom/miui/gallery/data/MediaItem;
.source "LocalMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;
    }
.end annotation


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/String;

.field public dateAddedInSec:J

.field public dateModifiedInSec:J

.field public dateTakenInMs:J

.field public displayName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public id:I

.field public latitude:D

.field public longitude:D

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/Path;J)V
    .locals 2
    .parameter "path"
    .parameter "version"

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 48
    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    .line 49
    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/LocalMediaItem;->delete(Landroid/app/Activity;)V

    .line 166
    return-void
.end method

.method public delete(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 159
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 160
    new-instance v0, Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;

    invoke-direct {v0, p0}, Lcom/miui/gallery/data/LocalMediaItem$DeleteLocalMediaItem;-><init>(Lcom/miui/gallery/data/LocalMediaItem;)V

    invoke-static {p1, p0, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 161
    return-void
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected abstract getBaseUri()Landroid/net/Uri;
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getContentUriForGallery()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForGallery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/data/LocalMediaItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateForTimeClusteringInMs()J
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 65
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    .line 67
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDateModifiedInMs()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const v7, 0x21515

    const/4 v8, 0x1

    .line 115
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v2

    .line 116
    .local v2, details:Lcom/miui/gallery/data/MediaDetails;
    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/miui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 117
    iget-object v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, context:Landroid/content/Context;
    const-string v1, ""

    .line 120
    .local v1, dateString:Ljava/lang/String;
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    cmp-long v3, v3, v9

    if-ltz v3, :cond_2

    .line 121
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v0, v3, v4, v7}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 127
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    iget-wide v5, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    aput-wide v6, v4, v5

    iget-wide v5, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    aput-wide v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 130
    :cond_0
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_1

    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 131
    :cond_1
    return-object v2

    .line 123
    :cond_2
    iget-wide v3, p0, Lcom/miui/gallery/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v0, v3, v4, v7}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 97
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/miui/gallery/data/LocalMediaItem;->latitude:D

    aput-wide v1, p1, v0

    .line 98
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/miui/gallery/data/LocalMediaItem;->longitude:D

    aput-wide v1, p1, v0

    .line 99
    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNameForCompare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/miui/gallery/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalMediaItem;->mDataVersion:J

    .line 111
    :cond_0
    return-void
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
