.class public Lcom/miui/gallery/photoeditor/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/SaveCopyTask$SaveCopyTaskMimeType;,
        Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final albumName:Ljava/lang/String;

.field private final callback:Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;)V
    .locals 1
    .parameter "context"
    .parameter "sourceUri"
    .parameter "callback"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 100
    iput-object p3, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->callback:Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;

    .line 102
    const v0, 0x7f0d0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->albumName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private findFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 138
    const-string v1, ""

    .line 141
    .local v1, filePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 156
    :goto_0
    return-object v5

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 147
    .local v4, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v3

    .line 152
    .local v3, isInternalMedia:Z
    invoke-static {v3}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, baseUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/miui/gallery/util/GalleryDBHelper;->findFilePathById(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 156
    goto :goto_0
.end method

.method private getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 160
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 161
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 164
    .end local p1
    :cond_0
    return-object p1
.end method

.method private insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 19
    .parameter "file"

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v15, v3, v5

    .line 223
    .local v15, now:J
    move-wide v9, v15

    .line 224
    .local v9, dateTaken:J
    const-wide/16 v11, 0x0

    .line 225
    .local v11, latitude:D
    const-wide/16 v13, 0x0

    .line 227
    .local v13, longitude:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 228
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 230
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/photoeditor/SaveCopyTask;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 233
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 234
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 239
    :cond_0
    if-eqz v8, :cond_1

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_1
    :goto_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "_display_name"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v3, "mime_type"

    invoke-static {}, Lcom/miui/gallery/photoeditor/SaveCopyTask$SaveCopyTaskMimeType;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    const-string v3, "date_modified"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v3, "date_added"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v3, "orientation"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v3, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-wide/16 v3, 0x0

    cmpl-double v3, v11, v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x0

    cmpl-double v3, v13, v3

    if-eqz v3, :cond_3

    .line 257
    :cond_2
    const-string v3, "latitude"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 258
    const-string v3, "longitude"

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 260
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v3

    invoke-static {v3}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Z)Landroid/net/Uri;

    move-result-object v17

    .line 261
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 236
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 239
    if-eqz v8, :cond_1

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 239
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_4

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private save(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 14
    .parameter "bitmap"

    .prologue
    .line 168
    iget-object v10, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v10}, Lcom/miui/gallery/util/GalleryDBHelper;->isInternalMedia(Landroid/net/Uri;)Z

    move-result v6

    .line 171
    .local v6, isInternalMedia:Z
    const-string v5, ""

    .line 172
    .local v5, filename:Ljava/lang/String;
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->findFilePath()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, filePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, directory:Ljava/io/File;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 176
    const-string v2, ""

    .line 177
    .local v2, directoryPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/miui/gallery/StorageExplorer/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->albumName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    :goto_0
    new-instance v1, Ljava/io/File;

    .end local v1           #directory:Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v1       #directory:Ljava/io/File;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .end local v2           #directoryPath:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/miui/gallery/photoeditor/SaveCopyTask$SaveCopyTaskMimeType;->getFileExtension()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v5, v10}, Lcom/miui/gallery/util/GalleryUtils;->getFileForSaving(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, candidate:Ljava/io/File;
    if-nez v0, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 215
    .end local v0           #candidate:Ljava/io/File;
    :goto_2
    return-object v0

    .line 180
    .restart local v2       #directoryPath:Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->albumName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 188
    .end local v2           #directoryPath:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, oldPath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #directory:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v1       #directory:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 200
    .end local v7           #oldPath:Ljava/io/File;
    .restart local v0       #candidate:Ljava/io/File;
    :cond_2
    const/4 v8, 0x0

    .line 203
    .local v8, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v8           #os:Ljava/io/OutputStream;
    .local v9, os:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {}, Lcom/miui/gallery/photoeditor/SaveCopyTask$SaveCopyTaskMimeType;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v10

    const/16 v11, 0x5a

    invoke-virtual {p1, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_3

    .line 206
    const/4 v0, 0x0

    .line 212
    .end local v0           #candidate:Ljava/io/File;
    invoke-static {v9}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .restart local v0       #candidate:Ljava/io/File;
    :cond_3
    invoke-static {v9}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 208
    .end local v9           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 209
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    const/4 v0, 0x0

    .line 212
    .end local v0           #candidate:Ljava/io/File;
    invoke-static {v8}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #candidate:Ljava/io/File;
    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v8}, Lcom/miui/gallery/util/GalleryUtils;->closeStream(Ljava/io/Closeable;)V

    throw v10

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v9       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 208
    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v9       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    move-object v8, v9

    .end local v9           #os:Ljava/io/OutputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    goto :goto_3
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 111
    aget-object v4, p1, v5

    if-nez v4, :cond_0

    .line 122
    :goto_0
    return-object v3

    .line 114
    :cond_0
    aget-object v0, p1, v5

    .line 115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->save(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 117
    .local v3, uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    new-instance v2, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;

    invoke-direct {v2}, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;-><init>()V

    .line 120
    .local v2, result:Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;
    iput-object v3, v2, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;->uri:Landroid/net/Uri;

    .line 121
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v2, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;->filePath:Ljava/lang/String;

    move-object v3, v2

    .line 122
    goto :goto_0

    .line 121
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->doInBackground([Landroid/graphics/Bitmap;)Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v2, p1, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;->uri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 130
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 131
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 133
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->callback:Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;

    iget-object v3, p1, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;->uri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/miui/gallery/photoeditor/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 134
    return-void

    .line 127
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0d0003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;->filePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/SaveCopyTask;->onPostExecute(Lcom/miui/gallery/photoeditor/SaveCopyTaskResult;)V

    return-void
.end method
