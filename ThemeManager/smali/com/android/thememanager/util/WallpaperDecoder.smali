.class public Lcom/android/thememanager/util/WallpaperDecoder;
.super Lmiui/app/resourcebrowser/util/ImageCacheDecoder;
.source "WallpaperDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/thememanager/util/WallpaperDecoder;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "cacheSize"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder;-><init>(I)V

    .line 20
    return-void
.end method

.method private computeSampleSize(Ljava/lang/String;II)I
    .locals 4
    .parameter "imagePath"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 64
    new-instance v2, Lmiui/util/InputStreamLoader;

    invoke-direct {v2, p1}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 65
    .local v0, op:Landroid/graphics/BitmapFactory$Options;
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, p2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 66
    .local v1, sampleSize:I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 69
    :cond_0
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    mul-int v3, v1, v1

    div-int/2addr v2, v3

    const/high16 v3, 0xf0

    if-le v2, v3, :cond_1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return v1
.end method

.method private decodeOriginBitmapWithNativeMemory(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "imageLocalPath"
    .parameter "needWidth"
    .parameter "needHeight"

    .prologue
    const/4 v8, 0x1

    .line 76
    invoke-static {}, Lmiui/util/ImageUtils;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 77
    .local v5, op:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/thememanager/util/WallpaperDecoder;->computeSampleSize(Ljava/lang/String;II)I

    move-result v7

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 79
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 81
    const/4 v6, 0x0

    .line 82
    .local v6, srcBmp:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, decodeTry:I
    move v1, v0

    .line 83
    .end local v0           #decodeTry:I
    .local v1, decodeTry:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #decodeTry:I
    .restart local v0       #decodeTry:I
    const/4 v7, 0x3

    if-ge v1, v7, :cond_0

    if-nez v6, :cond_0

    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    .end local v3           #is:Ljava/io/FileInputStream;
    .local v4, is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v6

    .line 88
    if-nez v6, :cond_1

    .line 98
    if-eqz v4, :cond_0

    .line 100
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 107
    .end local v4           #is:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-object v6

    .line 98
    .restart local v4       #is:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v4, :cond_4

    .line 100
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    move v1, v0

    .line 105
    .end local v0           #decodeTry:I
    .restart local v1       #decodeTry:I
    goto :goto_0

    .line 101
    .end local v1           #decodeTry:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v0       #decodeTry:I
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 102
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 91
    :catch_1
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    :try_start_4
    const-string v7, "decoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode with native memory: OOM, tryCnt =  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    if-eqz v3, :cond_2

    .line 100
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 101
    :catch_2
    move-exception v7

    goto :goto_2

    .line 94
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    if-eqz v3, :cond_0

    .line 100
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 101
    :catch_4
    move-exception v7

    goto :goto_1

    .line 98
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_3

    .line 100
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 102
    :cond_3
    :goto_6
    throw v7

    .line 101
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_5
    move-exception v7

    goto :goto_1

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    goto :goto_6

    .line 98
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_5

    .line 94
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_4

    .line 91
    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :cond_4
    move-object v3, v4

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #is:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private declared-synchronized getDesiredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "srcBmp"
    .parameter "imagePath"
    .parameter "useIndex"
    .parameter "addIntoCache"

    .prologue
    const/4 v7, 0x1

    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mBitmapCache:Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;

    const/4 v8, 0x1

    invoke-virtual {v6, v8, p3}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;->removeIdleCache(ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    .local v2, destBmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 40
    iget v5, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mDecodedWidth:I

    .line 41
    .local v5, w:I
    iget v4, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mDecodedHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .local v4, h:I
    const/4 v0, 0x0

    .local v0, cnt:I
    move v1, v0

    .line 43
    .end local v0           #cnt:I
    .local v1, cnt:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    const/4 v6, 0x2

    if-ge v1, v6, :cond_1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    move v1, v0

    .line 51
    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0

    .line 46
    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    :catch_0
    move-exception v3

    .line 47
    .local v3, e:Ljava/lang/OutOfMemoryError;
    mul-int/lit8 v6, v5, 0x2

    :try_start_2
    div-int/lit8 v5, v6, 0x3

    .line 48
    mul-int/lit8 v6, v4, 0x2

    div-int/lit8 v4, v6, 0x3

    .line 49
    const-string v8, "decoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "should not occur OOM:  currentUsing = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/thememanager/util/WallpaperDecoder;->getCurrentUseBitmapIndex()I

    move-result v6

    if-ne p3, v6, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "  resize to: ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 51
    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0

    .line 49
    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 54
    .end local v0           #cnt:I
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #h:I
    .end local v5           #w:I
    :cond_1
    if-eqz v2, :cond_2

    .line 55
    const/4 v6, 0x1

    invoke-static {p1, v2, v6}, Lmiui/util/ImageUtils;->cropBitmapToAnother(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    .line 56
    if-eqz p4, :cond_2

    .line 57
    iget-object v6, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mBitmapCache:Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;

    invoke-virtual {v6, p2, v2, p3}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;->add(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    monitor-exit p0

    return-object v2

    .line 38
    .end local v2           #destBmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public decodeLocalImage(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "imagePath"
    .parameter "useIndex"
    .parameter "addIntoCache"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/thememanager/util/WallpaperDecoder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, destBmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 26
    iget v2, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mDecodedWidth:I

    iget v3, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mDecodedHeight:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/thememanager/util/WallpaperDecoder;->decodeOriginBitmapWithNativeMemory(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    .local v1, srcBmp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 28
    iget-object v2, p0, Lcom/android/thememanager/util/WallpaperDecoder;->mBitmapCache:Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;

    invoke-virtual {v2, p2}, Lmiui/app/resourcebrowser/util/ImageCacheDecoder$BitmapCache;->inCacheScope(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/thememanager/util/WallpaperDecoder;->getDesiredBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    .end local v1           #srcBmp:Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method
