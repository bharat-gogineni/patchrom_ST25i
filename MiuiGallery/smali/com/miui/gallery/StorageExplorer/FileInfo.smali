.class public Lcom/miui/gallery/StorageExplorer/FileInfo;
.super Lcom/miui/gallery/StorageExplorer/BaseMeta;
.source "FileInfo.java"


# instance fields
.field protected mFile:Ljava/io/File;

.field public mFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFile:Ljava/io/File;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mTitle:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->updateTimeAndSize()V

    .line 47
    return-void
.end method

.method public static getFileInfo(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 2
    .parameter "f"
    .parameter "filter"

    .prologue
    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/miui/gallery/StorageExplorer/DirInfo;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/StorageExplorer/DirInfo;-><init>(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)V

    .line 37
    .local v0, info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :goto_1
    goto :goto_0

    .line 36
    .end local v0           #info:Lcom/miui/gallery/StorageExplorer/FileInfo;
    :cond_2
    new-instance v0, Lcom/miui/gallery/StorageExplorer/FileInfo;

    invoke-direct {v0, p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;-><init>(Ljava/io/File;)V

    goto :goto_1
.end method

.method public static getFileInfo(Ljava/lang/String;)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getFileInfo(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method private loadExifInfo()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 93
    iget-boolean v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsVideo:Z

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v10, 0x0

    .line 96
    .local v10, result:Z
    iget-boolean v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsJpeg:Z

    if-eqz v2, :cond_3

    .line 97
    const/4 v7, 0x0

    .line 99
    .local v7, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v7           #exif:Landroid/media/ExifInterface;
    .local v8, exif:Landroid/media/ExifInterface;
    const/4 v10, 0x1

    move-object v7, v8

    .line 104
    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v7, :cond_3

    .line 106
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    .line 110
    iget-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 111
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    .line 114
    :cond_2
    invoke-virtual {v7}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mHasExifThumbnail:Z

    .line 115
    const-string v2, "ImageWidth"

    invoke-virtual {v7, v2, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mWidth:I

    .line 116
    const-string v2, "ImageLength"

    invoke-virtual {v7, v2, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mHeight:I

    .line 117
    const-string v2, "Orientation"

    invoke-virtual {v7, v2, v11}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->exifOrientationToDegrees(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    .line 120
    new-array v9, v13, [F

    fill-array-data v9, :array_0

    .line 121
    .local v9, output:[F
    invoke-virtual {v7, v9}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    aget v2, v9, v12

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    .line 123
    aget v2, v9, v11

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    .line 128
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v9           #output:[F
    :cond_3
    if-nez v10, :cond_0

    .line 129
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->isInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 132
    .local v1, baseUri:Landroid/net/Uri;
    :goto_2
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "orientation"

    aput-object v3, v2, v12

    const-string v3, "latitude"

    aput-object v3, v2, v11

    const-string v3, "longitude"

    aput-object v3, v2, v13

    const-string v3, "_data = ?"

    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    .line 146
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLatitude:D

    .line 147
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mLongitude:D

    .line 149
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 129
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #baseUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 101
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 120
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private updateTimeAndSize()V
    .locals 7

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    .line 70
    iget-object v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    .line 73
    iget-wide v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, cal:Ljava/util/Calendar;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 77
    .local v2, zoneOffset:I
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 78
    .local v1, dstOffset:I
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 79
    const/16 v3, 0xe

    add-int v4, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateTaken:J

    .line 83
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #dstOffset:I
    .end local v2           #zoneOffset:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearModifiedFlags()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->clearModifiedFlags()V

    .line 65
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->updateTimeAndSize()V

    .line 66
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    .line 181
    return-void
.end method

.method protected getSize()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mAllDataLoaded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAllDataInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->loadExifInfo()V

    .line 88
    invoke-super {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllDataInternal()V

    .line 89
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    .line 90
    return-void
.end method

.method public updateOrientation(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 155
    iget v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    add-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    .line 157
    invoke-static {p0, v6, v6}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, big:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v7, v6}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, full:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mOrientation:I

    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsJpeg:Z

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->updateOrientation(ILjava/lang/String;Z)V

    .line 162
    iget-boolean v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mIsJpeg:Z

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->clearModifiedFlags()V

    .line 168
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Lcom/miui/gallery/StorageExplorer/BaseMeta;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, key:Ljava/lang/String;
    invoke-static {v2, v6, v0}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-static {v2, v7, v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 171
    return-void
.end method
