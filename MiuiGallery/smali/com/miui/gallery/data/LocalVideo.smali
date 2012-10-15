.class public Lcom/miui/gallery/data/LocalVideo;
.super Lcom/miui/gallery/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final ITEM_PATH:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public durationInSec:I

.field public final mIsInternalMedia:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"
    .parameter "isInternalMedia"

    .prologue
    .line 84
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 85
    iput-boolean p4, p0, Lcom/miui/gallery/data/LocalVideo;->mIsInternalMedia:Z

    .line 86
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZI)V
    .locals 5
    .parameter "path"
    .parameter "context"
    .parameter "isInternalMedia"
    .parameter "id"

    .prologue
    .line 90
    invoke-static {}, Lcom/miui/gallery/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 91
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    .local v1, resolver:Landroid/content/ContentResolver;
    iput-boolean p3, p0, Lcom/miui/gallery/data/LocalVideo;->mIsInternalMedia:Z

    .line 94
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id"

    invoke-static {v1, v2, v3, v4, p4}, Lcom/miui/gallery/util/GalleryDBHelper;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 97
    const-string v2, "LocalVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalVideo - cannot get cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lcom/miui/gallery/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 108
    :cond_1
    :try_start_1
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find data for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getBaseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "file path should not be empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public static getBaseUri(Z)Landroid/net/Uri;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 201
    if-eqz p0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getExternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getInternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getItemPath(Z)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/data/LocalVideo;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    goto :goto_0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalVideo;->id:I

    .line 129
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    .line 130
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 131
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->latitude:D

    .line 132
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->longitude:D

    .line 133
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->dateTakenInMs:J

    .line 134
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->dateModifiedInSec:J

    .line 135
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->dateAddedInSec:J

    .line 136
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 137
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/miui/gallery/data/LocalVideo;->durationInSec:I

    .line 138
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalVideo;->bucketId:I

    .line 139
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalVideo;->fileSize:J

    .line 140
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalVideo;->displayName:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/miui/gallery/data/LocalVideo;->mIsInternalMedia:Z

    invoke-static {v0}, Lcom/miui/gallery/data/LocalVideo;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 227
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    iget v1, p0, Lcom/miui/gallery/data/LocalVideo;->durationInSec:I

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->appendVideoDetails(Lcom/miui/gallery/data/MediaDetails;I)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x4

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 211
    const-string v0, "LocalVideo"

    const-string v1, "video does not support rotate()"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 145
    new-instance v0, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 146
    .local v0, uh:Lcom/miui/gallery/util/UpdateHelper;
    iget v1, p0, Lcom/miui/gallery/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalVideo;->id:I

    .line 147
    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->caption:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 149
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->latitude:D

    .line 150
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->longitude:D

    .line 151
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateTakenInMs:J

    .line 153
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateAddedInSec:J

    .line 155
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->dateModifiedInSec:J

    .line 157
    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 158
    iget v1, p0, Lcom/miui/gallery/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalVideo;->durationInSec:I

    .line 160
    iget v1, p0, Lcom/miui/gallery/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalVideo;->bucketId:I

    .line 161
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalVideo;->fileSize:J

    .line 162
    iget-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->displayName:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalVideo;->displayName:Ljava/lang/String;

    .line 163
    invoke-virtual {v0}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
