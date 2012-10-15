.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotation:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 76
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 79
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 91
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 97
    return-void

    .line 72
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 6

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 169
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 170
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 173
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 174
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    if-eqz v1, :cond_0

    .line 185
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    return-void

    .line 176
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 177
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 179
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    if-eqz v1, :cond_0

    .line 185
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    .line 188
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 186
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 185
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 189
    :cond_2
    :goto_2
    throw v3

    .line 186
    :catch_3
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static exifOrientationToDegrees(I)I
    .locals 1
    .parameter "exifOrientation"

    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    .line 438
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 432
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 434
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 436
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getGifImageData(III)[B
    .locals 10
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x3

    .line 248
    const/16 v0, 0x1000

    .line 250
    .local v0, BUFFERSIZE:I
    iget v7, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    if-gt v7, p1, :cond_0

    iget v7, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    if-gt v7, p2, :cond_0

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, gifInput:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 254
    const/4 v7, 0x3

    new-array v1, v7, [B

    .line 255
    .local v1, b:[B
    new-instance v5, Lorg/apache/http/util/ByteArrayBuffer;

    array-length v7, v1

    add-int/lit16 v7, v7, 0x1000

    invoke-direct {v5, v7}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 256
    .local v5, result:Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 257
    .local v4, read:I
    if-ne v4, v9, :cond_3

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    const/16 v8, 0x47

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_3

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    const/16 v8, 0x46

    if-ne v7, v8, :cond_3

    .line 258
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 259
    const/16 v7, 0x1000

    new-array v1, v7, [B

    .line 260
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 261
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v7

    add-int/2addr v7, v4

    if-le v7, p3, :cond_1

    .line 273
    if-eqz v3, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 281
    .end local v1           #b:[B
    .end local v3           #gifInput:Ljava/io/InputStream;
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_0
    :goto_1
    return-object v6

    .line 264
    .restart local v1       #b:[B
    .restart local v3       #gifInput:Ljava/io/InputStream;
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v5, v1, v7, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 268
    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v2

    .line 269
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    if-eqz v3, :cond_0

    .line 275
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 276
    :catch_1
    move-exception v7

    goto :goto_1

    .line 266
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #b:[B
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v6

    .line 273
    if-eqz v3, :cond_0

    .line 275
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 276
    :catch_2
    move-exception v7

    goto :goto_1

    .line 273
    :cond_3
    if-eqz v3, :cond_0

    .line 275
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 276
    :catch_3
    move-exception v7

    goto :goto_1

    .line 270
    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_4
    move-exception v2

    .line 271
    .local v2, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 273
    if-eqz v3, :cond_0

    .line 275
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 276
    :catch_5
    move-exception v7

    goto :goto_1

    .line 273
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 275
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 277
    :cond_4
    :goto_2
    throw v6

    .line 276
    .restart local v1       #b:[B
    .restart local v4       #read:I
    .restart local v5       #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_6
    move-exception v7

    goto :goto_1

    .end local v1           #b:[B
    .end local v4           #read:I
    .end local v5           #result:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method private getResizedImageData(III)[B
    .locals 17
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 337
    .local v9, outWidth:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 338
    .local v8, outHeight:I
    const/16 v10, 0x5f

    .line 339
    .local v10, quality:I
    const/high16 v11, 0x3f80

    .line 340
    .local v11, scaleFactor:F
    :goto_0
    int-to-float v14, v9

    mul-float/2addr v14, v11

    move/from16 v0, p1

    int-to-float v15, v0

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_0

    int-to-float v14, v8

    mul-float/2addr v14, v11

    move/from16 v0, p2

    int-to-float v15, v0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1

    .line 341
    :cond_0
    const/high16 v14, 0x3f40

    mul-float/2addr v11, v14

    goto :goto_0

    .line 344
    :cond_1
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 345
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getResizedImageData: wlimit="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", hlimit="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", sizeLimit="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", initialScaleFactor="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mUri="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    const/4 v6, 0x0

    .line 354
    .local v6, os:Ljava/io/ByteArrayOutputStream;
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/mms/ui/UriImage;->getBitmap(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 355
    .local v2, b:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 356
    const/4 v14, 0x0

    .line 425
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v14

    .line 359
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    :cond_3
    const/4 v1, 0x1

    .local v1, attempts:I
    move-object v7, v6

    .line 364
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v0, p1

    if-gt v14, v0, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v0, p2

    if-gt v14, v0, :cond_4

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    move/from16 v0, p3

    if-le v14, v0, :cond_6

    .line 368
    :cond_4
    int-to-float v14, v9

    mul-float/2addr v14, v11

    float-to-int v13, v14

    .line 369
    .local v13, scaledWidth:I
    int-to-float v14, v8

    mul-float/2addr v14, v11

    float-to-int v12, v14

    .line 371
    .local v12, scaledHeight:I
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 372
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", h="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_5
    move-object v5, v2

    .line 378
    .local v5, oldBitmap:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    invoke-static {v2, v13, v12, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 379
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 380
    if-nez v2, :cond_6

    .line 381
    const/4 v14, 0x0

    goto :goto_1

    .line 388
    .end local v5           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v12           #scaledHeight:I
    .end local v13           #scaledWidth:I
    :cond_6
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v14, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 390
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 391
    .local v4, jpgFileSize:I
    move/from16 v0, p3

    if-le v4, v0, :cond_9

    .line 392
    mul-int v14, v10, p3

    div-int v10, v14, v4

    .line 393
    const/16 v14, 0x32

    if-ge v10, v14, :cond_7

    .line 394
    const/16 v10, 0x32

    .line 397
    :cond_7
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 398
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_8
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_3
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v14, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .line 409
    .end local v4           #jpgFileSize:I
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    :cond_9
    :goto_3
    :try_start_4
    const-string v14, "Mms:app"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 410
    const-string v15, "Mms/image"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attempt="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " size="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v6, :cond_d

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " width="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-float v0, v9

    move/from16 v16, v0

    mul-float v16, v16, v11

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " height="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-float v0, v8

    move/from16 v16, v0

    mul-float v16, v16, v11

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " scaleFactor="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " quality="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_a
    const/high16 v14, 0x3f40

    mul-float/2addr v11, v14

    .line 418
    add-int/lit8 v1, v1, 0x1

    .line 419
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    move/from16 v0, p3

    if-le v14, v0, :cond_c

    :cond_b
    const/16 v14, 0x8

    if-lt v1, v14, :cond_f

    .line 420
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    if-nez v6, :cond_e

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 404
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 405
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .local v3, e:Ljava/lang/OutOfMemoryError;
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    :goto_5
    const-string v14, "Mms/image"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 423
    .end local v1           #attempts:I
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    .line 424
    .restart local v3       #e:Ljava/lang/OutOfMemoryError;
    const-string v14, "Mms/image"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 410
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v1       #attempts:I
    .restart local v2       #b:Landroid/graphics/Bitmap;
    :cond_d
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    goto/16 :goto_4

    .line 422
    :cond_e
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    goto/16 :goto_1

    .line 404
    :catch_2
    move-exception v3

    goto :goto_5

    :cond_f
    move-object v7, v6

    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 140
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 159
    :goto_0
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 163
    return-void

    .line 149
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 150
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 152
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 153
    .local v9, orientationIndex:I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_5

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/UriImage;->mRotation:I

    goto :goto_0

    .line 156
    :cond_5
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/mms/ui/UriImage;->mRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 101
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    .line 102
    .local v3, mimeTypeMap:Landroid/webkit/MimeTypeMap;
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, extension:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 107
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .end local v0           #dotPos:I
    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    iput-object v4, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 113
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/ui/UriImage;->exifOrientationToDegrees(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/UriImage;->mRotation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #exif:Landroid/media/ExifInterface;
    :goto_1
    return-void

    .line 111
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 116
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "sampleSize"

    .prologue
    .line 285
    const/4 v7, 0x1

    .line 286
    .local v7, attempts:I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    .line 293
    .local v8, b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v11, 0x0

    .line 295
    .local v11, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 299
    :goto_0
    if-nez v11, :cond_1

    .line 300
    const/4 v1, 0x0

    .line 324
    :goto_1
    return-object v1

    .line 296
    :catch_0
    move-exception v10

    .line 297
    .local v10, e1:Ljava/io/FileNotFoundException;
    const-string v1, "Cannot open bitmap %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    .end local v10           #e1:Ljava/io/FileNotFoundException;
    :cond_1
    iput p1, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 304
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v11, v1, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, src:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_3

    .line 306
    move-object v8, v0

    .line 321
    :goto_2
    invoke-static {v11}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 323
    .end local v0           #src:Landroid/graphics/Bitmap;
    :goto_3
    if-nez v8, :cond_2

    const/16 v1, 0x8

    if-lt v7, v1, :cond_0

    :cond_2
    move-object v1, v8

    .line 324
    goto :goto_1

    .line 308
    .restart local v0       #src:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 311
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 312
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 314
    .end local v0           #src:Landroid/graphics/Bitmap;
    .end local v5           #m:Landroid/graphics/Matrix;
    :catch_1
    move-exception v9

    .line 315
    .local v9, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResizedImageData: img too large to decode (OutOfMemoryError), may try with larger sampleSize. Curr sampleSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    mul-int/lit8 p1, p1, 0x2

    .line 318
    add-int/lit8 v7, v7, 0x1

    .line 321
    invoke-static {v11}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_3

    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    invoke-static {v11}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 4
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 225
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 227
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getGifImageData(III)[B

    move-result-object v0

    .line 228
    .local v0, gifData:[B
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 230
    const-string v3, "image/gif"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 242
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 232
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 233
    .local v1, jpgData:[B
    if-nez v1, :cond_1

    .line 237
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 240
    const-string v3, "image/jpeg"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotation:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
