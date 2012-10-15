.class public abstract Lcom/miui/gallery/cloud/CloudMediaItem;
.super Lcom/miui/gallery/data/MediaItem;
.source "CloudMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mDBCloud:Lcom/miui/gallery/data/DBCloud;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/cloud/CloudMediaItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;JI)V
    .locals 5
    .parameter "path"
    .parameter "version"
    .parameter "id"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 54
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/gallery/cloud/CloudMediaItem;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id"

    invoke-static {v1, v2, v3, v4, p4}, Lcom/miui/gallery/util/GalleryDBHelper;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 59
    const-string v2, "CloudMediaItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CloudMediaItem - cannot get cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v2, Lcom/miui/gallery/data/DBCloud;

    const-string v3, "-1"

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/DBCloud;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    .line 73
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    new-instance v2, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v2, v0}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_1
    const-string v2, "CloudMediaItem"

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

    .line 71
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;JLandroid/database/Cursor;)V
    .locals 1
    .parameter "path"
    .parameter "version"
    .parameter "cursor"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 49
    new-instance v0, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v0, p4}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    .line 50
    return-void
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 16
    .parameter "rationalString"
    .parameter "ref"

    .prologue
    .line 292
    :try_start_0
    const-string v12, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, parts:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, pair:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v1, v12, v14

    .line 299
    .local v1, degrees:D
    const/4 v12, 0x1

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 300
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v4, v12, v14

    .line 303
    .local v4, minutes:D
    const/4 v12, 0x2

    aget-object v12, v7, v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 304
    const/4 v12, 0x0

    aget-object v12, v6, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    div-double v10, v12, v14

    .line 307
    .local v10, seconds:D
    const-wide/high16 v12, 0x404e

    div-double v12, v4, v12

    add-double/2addr v12, v1

    const-wide v14, 0x40ac200000000000L

    div-double v14, v10, v14

    add-double v8, v12, v14

    .line 308
    .local v8, result:D
    const-string v12, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    .line 309
    :cond_0
    neg-double v12, v8

    double-to-float v12, v12

    .line 317
    .end local v1           #degrees:D
    .end local v4           #minutes:D
    .end local v6           #pair:[Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    .end local v8           #result:D
    .end local v10           #seconds:D
    :goto_0
    return v12

    .line 311
    .restart local v1       #degrees:D
    .restart local v4       #minutes:D
    .restart local v6       #pair:[Ljava/lang/String;
    .restart local v7       #parts:[Ljava/lang/String;
    .restart local v8       #result:D
    .restart local v10       #seconds:D
    :cond_1
    double-to-float v12, v8

    goto :goto_0

    .line 312
    .end local v1           #degrees:D
    .end local v4           #minutes:D
    .end local v6           #pair:[Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    .end local v8           #result:D
    .end local v10           #seconds:D
    :catch_0
    move-exception v3

    .line 314
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_0

    .line 315
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 317
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getGpsFloatValue(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4
    .parameter "gpsRationalTag"
    .parameter "gpsRefTag"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v2}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    .line 125
    .local v1, exifInfo:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/cloud/CloudMediaItem;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-double v2, v2

    .line 132
    :goto_0
    return-wide v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudMediaItem;->delete(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method public delete(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 271
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 272
    new-instance v0, Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;-><init>(Lcom/miui/gallery/cloud/CloudMediaItem;)V

    .line 276
    .local v0, deleteCloud:Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    invoke-static {p1, p0, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/cloud/CloudMediaItem$DeleteCloudMediaItem;->delete()V

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected abstract getBaseUriForContentUri()Landroid/net/Uri;
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForGallery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getBaseUriForContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

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
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getDatetaken()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getDatetaken()J

    move-result-wide v0

    .line 80
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDateModifiedInMs()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 157
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 159
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 160
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 161
    .local v1, formater:Ljava/text/DateFormat;
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getDatetaken()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-ltz v3, :cond_2

    .line 162
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getDatetaken()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 167
    :goto_0
    const/4 v3, 0x2

    new-array v2, v3, [D

    .line 168
    .local v2, latLong:[D
    invoke-virtual {p0, v2}, Lcom/miui/gallery/cloud/CloudMediaItem;->getLatLong([D)V

    .line 169
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    aget-wide v5, v2, v6

    invoke-static {v3, v4, v5, v6}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v3}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-lez v3, :cond_1

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 174
    :cond_1
    return-object v0

    .line 164
    .end local v2           #latLong:[D
    :cond_2
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v4}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getMicroThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getThumbnailFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 227
    const-string v0, "imageLength"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getJsonExifInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getJsonExifInt(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudMediaItem;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "name"

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 206
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getJsonExifString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getExifInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 217
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getLatitude()D

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getLongitude()D

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 147
    return-void
.end method

.method protected getLatitude()D
    .locals 2

    .prologue
    .line 136
    const-string v0, "GPSLatitude"

    const-string v1, "GPSLatitudeRef"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/CloudMediaItem;->getGpsFloatValue(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getLongitude()D
    .locals 2

    .prologue
    .line 140
    const-string v0, "GPSLongitude"

    const-string v1, "GPSLongitudeRef"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/cloud/CloudMediaItem;->getGpsFloatValue(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMicroThumbnailFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameForCompare()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 2

    .prologue
    .line 188
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/cloud/CloudMediaItem;->getJsonExifInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    .local v0, result:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->exifOrientationToDegrees(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0}, Lcom/miui/gallery/data/DBCloud;->getThumbnailFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 222
    const-string v0, "imageWidth"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getJsonExifInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected updateContent(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/DBCloud;->reloadData(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/miui/gallery/cloud/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/CloudMediaItem;->mDataVersion:J

    .line 153
    :cond_0
    return-void
.end method
