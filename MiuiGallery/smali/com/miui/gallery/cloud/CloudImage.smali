.class public Lcom/miui/gallery/cloud/CloudImage;
.super Lcom/miui/gallery/cloud/CloudMediaItem;
.source "CloudImage.java"


# static fields
.field static final CLOUD_IMAGE_URI:Landroid/net/Uri;

.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "/com.miui.gallery.cloud.provider/image/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 35
    const-string v0, "content://com.miui.gallery.cloud.provider/image/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudImage;->CLOUD_IMAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "cursor"

    .prologue
    .line 39
    invoke-static {}, Lcom/miui/gallery/cloud/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/gallery/cloud/CloudMediaItem;-><init>(Lcom/miui/gallery/data/Path;JLandroid/database/Cursor;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 43
    invoke-static {}, Lcom/miui/gallery/cloud/CloudImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/miui/gallery/cloud/CloudMediaItem;-><init>(Lcom/miui/gallery/data/Path;JI)V

    .line 44
    return-void
.end method

.method private getFocalLength()Ljava/lang/Double;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 116
    const-string v8, "focalLength"

    invoke-virtual {p0, v8}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, value:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object v7

    .line 123
    :cond_1
    :try_start_0
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, index:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 125
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 126
    .local v0, denom:D
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_0

    .line 127
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 128
    .local v4, num:D
    div-double v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 129
    .end local v0           #denom:D
    .end local v3           #index:I
    .end local v4           #num:D
    :catch_0
    move-exception v2

    .line 130
    .local v2, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/miui/gallery/cloud/CloudImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-object v0
.end method

.method private setExifDataInteger(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/Integer;I)V
    .locals 1
    .parameter "details"
    .parameter "value"
    .parameter "key"

    .prologue
    .line 135
    if-eqz p2, :cond_0

    .line 136
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 138
    :cond_0
    return-void
.end method

.method private setExifFocalLength(Lcom/miui/gallery/data/MediaDetails;)V
    .locals 3
    .parameter "details"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/miui/gallery/cloud/CloudImage;->getFocalLength()Ljava/lang/Double;

    move-result-object v0

    .line 142
    .local v0, value:Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/miui/gallery/data/MediaDetails;->setFocalLength(Lcom/miui/gallery/data/MediaDetails;D)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudImage;->delete(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method protected getBaseUriForContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/miui/gallery/cloud/CloudImage;->CLOUD_IMAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 154
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudImage;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 155
    .local v1, exifInfo:Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 161
    const-string v2, "flash"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x66

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/cloud/CloudImage;->setExifDataInteger(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/Integer;I)V

    .line 162
    const-string v2, "imageWidth"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/cloud/CloudImage;->setExifDataInteger(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/Integer;I)V

    .line 163
    const-string v2, "imageLength"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/cloud/CloudImage;->setExifDataInteger(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/Integer;I)V

    .line 164
    const-string v2, "make"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 165
    const-string v2, "model"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 166
    const-string v2, "FNumber"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x69

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 167
    const-string v2, "ISOSpeedRatings"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 168
    const-string v2, "whiteBalance"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x68

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gallery/cloud/CloudImage;->setExifDataInteger(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/Integer;I)V

    .line 169
    const-string v2, "exposureTime"

    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudImage;->getJsonExifString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/data/MediaDetails;->setExifData(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;I)V

    .line 170
    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/CloudImage;->setExifFocalLength(Lcom/miui/gallery/data/MediaDetails;)V

    goto :goto_0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x2

    return v0
.end method

.method public getSupportedOperations()I
    .locals 7

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageSupportedOperations(Ljava/lang/String;Ljava/lang/String;DD)I

    move-result v6

    .line 69
    .local v6, result:I
    and-int/lit16 v6, v6, -0x22b

    .line 71
    return v6
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 52
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
    .line 57
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
    .line 62
    new-instance v0, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 6
    .parameter "degrees"

    .prologue
    .line 81
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 83
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getRotation()I

    move-result v3

    add-int/2addr v3, p1

    rem-int/lit16 v2, v3, 0x168

    .line 84
    .local v2, rotation:I
    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x168

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 87
    .local v1, isJpeg:Z
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/miui/gallery/util/GalleryUtils;->updateOrientation(ILjava/lang/String;Z)V

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudImage;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "orientation"

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->degreesToExifOrientation(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    if-eqz v1, :cond_1

    .line 100
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudImage;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/data/DBCloud;->setSize(J)V

    .line 102
    :cond_1
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
