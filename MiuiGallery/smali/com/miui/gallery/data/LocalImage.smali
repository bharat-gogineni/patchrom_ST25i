.class public Lcom/miui/gallery/data/LocalImage;
.super Lcom/miui/gallery/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;,
        Lcom/miui/gallery/data/LocalImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final ITEM_PATH:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

.field private static final ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public height:I

.field public final mIsInternalMedia:Z

.field public rotation:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

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

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

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

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    .line 72
    const/16 v0, 0xf

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

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"
    .parameter "isInternalMedia"

    .prologue
    .line 97
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 98
    iput-boolean p4, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    .line 99
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZI)V
    .locals 5
    .parameter "path"
    .parameter "application"
    .parameter "isInternalMedia"
    .parameter "id"

    .prologue
    .line 103
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/gallery/data/LocalMediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 104
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, resolver:Landroid/content/ContentResolver;
    iput-boolean p3, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id"

    invoke-static {v1, v2, v3, v4, p4}, Lcom/miui/gallery/util/GalleryDBHelper;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 110
    const-string v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalImage - cannot get cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0, v0}, Lcom/miui/gallery/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    const-string v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find data for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
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

    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "file path should not be empty"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-static {p0}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public static getBaseUri(Z)Landroid/net/Uri;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 279
    if-eqz p0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getExternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getInternalItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method public static getItemPath(Z)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "isInternalMedia"

    .prologue
    .line 132
    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_INTERNAL:Lcom/miui/gallery/data/Path;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/data/LocalImage;->ITEM_PATH_EXTERNAL:Lcom/miui/gallery/data/Path;

    goto :goto_0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    .line 150
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 152
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    .line 153
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    .line 154
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    .line 155
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    .line 156
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    .line 157
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 158
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    .line 159
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    .line 160
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 161
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    .line 162
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    .line 163
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    .line 164
    return-void
.end method


# virtual methods
.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/miui/gallery/data/LocalImage;->mIsInternalMedia:Z

    invoke-static {v0}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/miui/gallery/data/LocalMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 295
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    invoke-static {v0, p0}, Lcom/miui/gallery/util/GalleryDBHelper;->appendImageDetails(Lcom/miui/gallery/data/MediaDetails;Lcom/miui/gallery/data/MediaItem;)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 6

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    iget-wide v4, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    return v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

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
    .line 192
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/gallery/data/LocalImage$LocalImageRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V

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
    .line 235
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 259
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 261
    iget v2, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    .line 262
    .local v1, rotation:I
    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x168

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 265
    .local v0, isJpeg:Z
    iget-object v2, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/util/GalleryUtils;->updateOrientation(ILjava/lang/String;Z)V

    .line 267
    if-eqz v0, :cond_1

    .line 269
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 271
    :cond_1
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 168
    new-instance v0, Lcom/miui/gallery/util/UpdateHelper;

    invoke-direct {v0}, Lcom/miui/gallery/util/UpdateHelper;-><init>()V

    .line 169
    .local v0, uh:Lcom/miui/gallery/util/UpdateHelper;
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->id:I

    .line 170
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 172
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->latitude:D

    .line 173
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->longitude:D

    .line 174
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    .line 176
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateAddedInSec:J

    .line 178
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->dateModifiedInSec:J

    .line 180
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    .line 181
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->rotation:I

    .line 182
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->bucketId:I

    .line 183
    iget-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/gallery/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gallery/data/LocalImage;->fileSize:J

    .line 184
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->width:I

    .line 185
    iget v1, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/miui/gallery/data/LocalImage;->height:I

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-static {p1, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/gallery/data/LocalImage;->displayName:Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Lcom/miui/gallery/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
