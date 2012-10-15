.class public Lcom/miui/home/launcher/gadget/PhotoFramePicker;
.super Landroid/app/Activity;
.source "PhotoFramePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$1;,
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;,
        Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;
    }
.end annotation


# instance fields
.field mBackupPhotoFramePath:Ljava/lang/String;

.field private mCallbackId:J

.field mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

.field mCurrentPhotoFramePath:Ljava/lang/String;

.field private mDisplayPixels:I

.field mFilterEntryName:Ljava/lang/String;

.field mFrameEntryName:Ljava/lang/String;

.field mImageEntryName:Ljava/lang/String;

.field mImageUri:Landroid/net/Uri;

.field mImageView:Lmiui/widget/PhotoFrameView;

.field private mInitMatrixValues:[F

.field mInitRotateDegrees:I

.field mSizeDescript:Ljava/lang/String;

.field mSystemThemePath:Ljava/lang/String;

.field mThemeZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    .line 78
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 80
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    .line 299
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 301
    return-void
.end method

.method private getPhotoFramePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 407
    const/4 v3, 0x0

    .line 409
    .local v3, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v7}, Lmiui/widget/PhotoFrameView;->generatePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 411
    const/4 v7, 0x3

    invoke-virtual {p0, p1, v7}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 412
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    .local v6, tmp:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 415
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    const/16 v2, 0x1f9

    .line 419
    .local v2, extraPerms:I
    or-int/lit16 v5, v2, 0x1b0

    .line 420
    .local v5, perms:I
    or-int/lit8 v5, v5, 0x4

    .line 421
    or-int/lit8 v5, v5, 0x2

    .line 422
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v7, v5, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 424
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 428
    if-eqz v4, :cond_0

    .line 430
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v3, v4

    .line 435
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_1
    return-object v7

    .line 428
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v3, :cond_2

    .line 430
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 435
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 426
    :catch_0
    move-exception v7

    .line 428
    :goto_3
    if-eqz v3, :cond_2

    .line 430
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 431
    :catch_1
    move-exception v7

    goto :goto_2

    .line 428
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 430
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 432
    :cond_3
    :goto_5
    throw v7

    .line 431
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #extraPerms:I
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #perms:I
    .restart local v6       #tmp:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .end local v1           #dir:Ljava/io/File;
    .end local v2           #extraPerms:I
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #perms:I
    .end local v6           #tmp:Ljava/io/File;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 428
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #tmp:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 426
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private static getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 402
    const-string v1, "photo_frame_picker"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 403
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parse(Ljava/lang/String;)Z
    .locals 11
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x9

    .line 354
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, json:Lorg/json/JSONObject;
    const-string v8, "image_uri"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, photo:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 357
    .local v4, photoUri:Landroid/net/Uri;
    :cond_0
    const-string v8, "theme_path_key"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, themePath:Ljava/lang/String;
    const-string v8, "matrix"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 359
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/4 v7, 0x0

    .line 360
    .local v7, values:[F
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 361
    const/16 v8, 0x9

    new-array v7, v8, [F

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 363
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v7, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v0           #i:I
    :cond_1
    const-string v8, "rotate"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 368
    .local v5, rotate:I
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 369
    iput-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 370
    iput-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 371
    iput v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    const/4 v8, 0x1

    .line 376
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #photo:Ljava/lang/String;
    .end local v4           #photoUri:Landroid/net/Uri;
    .end local v5           #rotate:I
    .end local v6           #themePath:Ljava/lang/String;
    .end local v7           #values:[F
    :goto_1
    return v8

    .line 373
    :catch_0
    move-exception v8

    .line 376
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private toFileUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v4, v6

    invoke-static {v3, p1, v4}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 444
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 456
    .end local p1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 460
    .end local v1           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 456
    .restart local p1
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private updateViews(Z)V
    .locals 8
    .parameter "keepValues"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3}, Lmiui/widget/PhotoFrameView;->recyleAllBitmap()V

    .line 238
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_0

    .line 240
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->cancel(Z)Z

    .line 241
    iput-object v7, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 244
    :cond_0
    new-instance v0, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    invoke-static {v0, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/widget/PhotoFrameView;->setFrameBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    new-instance v0, Lmiui/util/InputStreamLoader;

    .end local v0           #loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .restart local v0       #loader:Lmiui/util/InputStreamLoader;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    invoke-static {v0, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/widget/PhotoFrameView;->setFilterBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    new-instance v2, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v2, streamLoader:Lmiui/util/InputStreamLoader;
    :goto_0
    invoke-static {v2}, Lmiui/util/ImageUtils;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 253
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v3, v4

    const/high16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 254
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    const v4, 0x7fffffff

    invoke-static {v2, v4}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    if-eqz p1, :cond_2

    .line 256
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    invoke-virtual {v3, v4, v6}, Lmiui/widget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setMatrixValues()V

    .line 267
    :goto_1
    return-void

    .line 249
    .end local v1           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #streamLoader:Lmiui/util/InputStreamLoader;
    :cond_1
    new-instance v2, Lmiui/util/InputStreamLoader;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 259
    .restart local v1       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v2       #streamLoader:Lmiui/util/InputStreamLoader;
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3, v5, v5}, Lmiui/widget/PhotoFrameView;->setRotateDegrees(IZ)V

    .line 260
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3}, Lmiui/widget/PhotoFrameView;->resetMatrix()V

    goto :goto_1

    .line 263
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v3, v7}, Lmiui/widget/PhotoFrameView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    new-instance v3, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;-><init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Z)V

    iput-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    .line 265
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method commit()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 207
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentLoadTask:Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;

    invoke-virtual {v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$AsyncLoadBitmapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_0

    .line 232
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, backupFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "photo_frame.zip"

    invoke-static {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v4, tempFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 218
    const/16 v2, 0x1f9

    .line 219
    .local v2, extraPerms:I
    or-int/lit16 v3, v2, 0x1b0

    .line 220
    .local v3, perms:I
    or-int/lit8 v3, v3, 0x4

    .line 221
    or-int/lit8 v3, v3, 0x2

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 225
    .end local v2           #extraPerms:I
    .end local v3           #perms:I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v1, data:Landroid/content/Intent;
    const-string v5, "callback_id"

    iget-wide v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v5, "config_as_json"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v5, "pick_result"

    const-string v6, "photo_frame_picker"

    const-string v7, "photo_frame_result.tmp"

    invoke-direct {p0, v6, v7}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getPhotoFramePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v5, "backup_zip"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v8, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setResult(ILandroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->finish()V

    goto :goto_0
.end method

.method protected getConfigAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    .line 380
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 382
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "theme_path_key"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 384
    const-string v4, "image_uri"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 388
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 389
    .local v3, values:[F
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v4, v3}, Lmiui/widget/PhotoFrameView;->getMatrixValues([F)V

    .line 390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 391
    aget v4, v3, v0

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const-string v4, "matrix"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v4, "rotate"

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v5}, Lmiui/widget/PhotoFrameView;->getRotateDegrees()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 398
    .end local v0           #i:I
    .end local v2           #jsonArr:Lorg/json/JSONArray;
    .end local v3           #values:[F
    :goto_1
    return-object v4

    .line 396
    :catch_0
    move-exception v4

    .line 398
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 172
    return-void

    .line 143
    :pswitch_0
    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 145
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    const-string v5, "media"

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->toFileUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 148
    :cond_1
    iput-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageUri:Landroid/net/Uri;

    .line 149
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 153
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 154
    const-string v5, "miui.app.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, theme:Ljava/lang/String;
    const-string v5, "photo_frame.zip"

    invoke-static {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, temp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photoframe_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, entryName:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    invoke-static {v1, v2, v0, v5}, Lcom/miui/home/launcher/gadget/Utils;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 160
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v5}, Lmiui/widget/PhotoFrameView;->getRotateDegrees()I

    move-result v5

    iput v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitRotateDegrees:I

    .line 161
    const/16 v5, 0x9

    new-array v4, v5, [F

    .line 162
    .local v4, values:[F
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v5, v4}, Lmiui/widget/PhotoFrameView;->getMatrixValues([F)V

    .line 163
    iput-object v4, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    .line 164
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v2, 0x7f030024

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->setContentView(I)V

    .line 89
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/Utils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mDisplayPixels:I

    .line 91
    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/PhotoFrameView;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 96
    :cond_0
    if-eqz p1, :cond_2

    .line 97
    const-string v2, "callback_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    .line 98
    const-string v2, "image_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    .line 99
    const-string v2, "frame_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    .line 100
    const-string v2, "filter_entry"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    .line 101
    const-string v2, "system_theme_path_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    .line 102
    const-string v2, "size_descript_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    .line 103
    const-string v2, "backup_photo_frame_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mBackupPhotoFramePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    .line 106
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCurrentPhotoFramePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    const-string v2, "com.android.gallery.ui.PhotoFramePicker"

    const-string v3, "No valid zip found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->finish()V

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v2, "config_as_json"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->parse(Ljava/lang/String;)Z

    .line 118
    .end local v0           #config:Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;-><init>(Lcom/miui/home/launcher/gadget/PhotoFramePicker;Lcom/miui/home/launcher/gadget/PhotoFramePicker$1;)V

    .line 119
    .local v1, listener:Lcom/miui/home/launcher/gadget/PhotoFramePicker$OnButtonClickListener;
    const v2, 0x7f070071

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v2, 0x7f070072

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->updateViews(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->recyleAllBitmap()V

    .line 177
    new-instance v0, Ljava/io/File;

    const-string v1, "photo_frame.zip"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "callback_id"

    iget-wide v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mCallbackId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    const-string v0, "config_as_json"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->getConfigAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "image_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "frame_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFrameEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "filter_entry"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mFilterEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "size_descript_key"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "system_theme_path_key"

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSystemThemePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method selectFrame()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SHOW_COMPONENT_NAME"

    const-string v2, "photo_frame"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "android.intent.extra.SHOW_COMPONENT_SIZE"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mSizeDescript:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "miui.app.resourcebrowser.CURRENT_USING_PATH"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mThemeZipPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method selectPhoto()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 188
    return-void
.end method

.method setMatrixValues()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mImageView:Lmiui/widget/PhotoFrameView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/PhotoFramePicker;->mInitMatrixValues:[F

    invoke-virtual {v0, v1}, Lmiui/widget/PhotoFrameView;->setMatrixValues([F)V

    goto :goto_0
.end method
