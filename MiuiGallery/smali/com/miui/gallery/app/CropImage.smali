.class public Lcom/miui/gallery/app/CropImage;
.super Lcom/miui/gallery/app/AbstractGalleryActivity;
.source "CropImage.java"

# interfaces
.implements Lcom/miui/gallery/app/SaveWallPaperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;,
        Lcom/miui/gallery/app/CropImage$LoadDataTask;,
        Lcom/miui/gallery/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_BUCKET:Ljava/io/File;

.field private static final EXIF_TAGS:[Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

.field private mCropView:Lcom/miui/gallery/ui/CropView;

.field private mDoFaceDetection:Z

.field private mLoadBitmapTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/miui/gallery/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/miui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    .line 927
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;-><init>()V

    .line 129
    iput v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    .line 145
    iput-boolean v1, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 914
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/gallery/app/CropImage;)Lcom/miui/gallery/app/SaveWallPaper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/app/CropImage;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/CropImage;->saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/gallery/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/util/Future;)Lcom/miui/gallery/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    return-object p1
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 946
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 947
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 949
    const-string v3, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v3, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    sget-object v3, Lcom/miui/gallery/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 954
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 955
    if-eqz v6, :cond_0

    .line 956
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const-string v0, "FNumber"

    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 962
    if-eqz v0, :cond_2

    .line 964
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 965
    const-string v3, "FNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x4120

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f00

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/10"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 994
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 998
    :goto_2
    return-void

    .line 967
    :catch_0
    move-exception v1

    .line 968
    const-string v1, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot parse aperture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 995
    :catch_1
    move-exception v0

    .line 996
    const-string v1, "CropImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot copy exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 13
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 663
    move/from16 v0, p5

    mul-int/lit16 v5, v0, 0x200

    .line 664
    .local v5, tileSize:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 665
    .local v4, tileRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 666
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 667
    move/from16 v0, p5

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 668
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 669
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 671
    new-instance v3, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 672
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .local v6, tx:I
    const/4 v8, 0x0

    .line 673
    .local v8, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v10, :cond_2

    .line 674
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .local v7, ty:I
    const/4 v9, 0x0

    .line 675
    .local v9, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v10, :cond_1

    .line 676
    add-int v10, v6, v5

    add-int v11, v7, v5

    invoke-virtual {v4, v6, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 677
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 681
    monitor-enter p2

    .line 682
    :try_start_0
    invoke-virtual {p2, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 683
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {p1, v1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 685
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 675
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v7, v5

    add-int/lit16 v9, v9, 0x200

    goto :goto_1

    .line 683
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 673
    :cond_1
    add-int/2addr v6, v5

    add-int/lit16 v8, v8, 0x200

    goto :goto_0

    .line 689
    .end local v7           #ty:I
    .end local v9           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "rect"
    .parameter "outputX"
    .parameter "outputY"

    .prologue
    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 530
    .local v8, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 532
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 534
    if-eqz v8, :cond_1

    .line 535
    const-string v2, "outputX"

    move/from16 v0, p2

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 536
    const-string v2, "outputY"

    move/from16 v0, p3

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 540
    :cond_1
    mul-int v2, p2, p3

    const v4, 0x4c4b40

    if-le v2, v4, :cond_2

    .line 541
    const-wide v4, 0x415312d000000000L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v4, v4, v18

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v14, v4

    .line 543
    .local v14, scale:F
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale down the cropped image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 545
    move/from16 v0, p3

    int-to-float v2, v0

    mul-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 550
    .end local v14           #scale:F
    :cond_2
    const/high16 v15, 0x3f80

    .line 551
    .local v15, scaleX:F
    const/high16 v16, 0x3f80

    .line 552
    .local v16, scaleY:F
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v6, v2, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 553
    .local v6, dest:Landroid/graphics/Rect;
    if-eqz v8, :cond_3

    const-string v2, "scale"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    :cond_3
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v15, v2, v4

    .line 555
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v16, v2, v4

    .line 556
    if-eqz v8, :cond_4

    const-string v2, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 558
    :cond_4
    const/high16 v2, 0x3f80

    cmpl-float v2, v15, v2

    if-lez v2, :cond_5

    const/high16 v15, 0x3f80

    .line 559
    :cond_5
    const/high16 v2, 0x3f80

    cmpl-float v2, v16, v2

    if-lez v2, :cond_6

    const/high16 v16, 0x3f80

    .line 564
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 565
    .local v11, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 566
    .local v10, rectHeight:I
    sub-int v2, p2, v11

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, p3, v10

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v5, p2, v11

    int-to-float v5, v5

    const/high16 v18, 0x4000

    div-float v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v18, p3, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 573
    .local v17, source:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 575
    .local v12, result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 614
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v12           #result:Landroid/graphics/Bitmap;
    .end local v17           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v12

    .line 526
    .end local v6           #dest:Landroid/graphics/Rect;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v10           #rectHeight:I
    .end local v11           #rectWidth:I
    .end local v15           #scaleX:F
    .end local v16           #scaleY:F
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 580
    .restart local v6       #dest:Landroid/graphics/Rect;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v10       #rectHeight:I
    .restart local v11       #rectWidth:I
    .restart local v15       #scaleX:F
    .restart local v16       #scaleY:F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v2, :cond_a

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v13

    .line 582
    .local v13, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v13, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 584
    rsub-int v2, v13, 0x168

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 586
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 587
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Lcom/miui/gallery/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v7

    .line 589
    .local v7, sample:I
    iput v7, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v2, v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v2, v4, :cond_9

    if-nez v13, :cond_9

    .line 594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 595
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    monitor-exit v4

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 598
    :cond_9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 600
    .restart local v12       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 601
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v13}, Lcom/miui/gallery/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/miui/gallery/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/16 :goto_1

    .line 605
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v7           #sample:I
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #result:Landroid/graphics/Bitmap;
    .end local v13           #rotation:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v13

    .line 606
    .restart local v13       #rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->getImageWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->getImageHeight()I

    move-result v4

    rsub-int v5, v13, 0x168

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 608
    rsub-int v2, v13, 0x168

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v6, v0, v1, v2}, Lcom/miui/gallery/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 609
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 610
    .restart local v12       #result:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 611
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v13}, Lcom/miui/gallery/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private getFileExtension(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;
    .locals 4
    .parameter "item"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getFileExtension(Lcom/miui/gallery/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 489
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 484
    goto :goto_0

    .line 489
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/miui/gallery/data/MediaItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 889
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    .line 890
    if-nez v1, :cond_0

    .line 891
    const-string v1, "CropImage"

    const-string v2, "no data given"

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_0
    return-object v0

    .line 894
    :cond_0
    invoke-virtual {v2, v1}, Lcom/miui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 895
    if-nez v3, :cond_1

    .line 896
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get path for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaItem;

    goto :goto_0
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/miui/gallery/app/CropImage;->getFileExtension(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initializeData()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 770
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 771
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    .line 775
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 777
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 778
    new-instance v2, Lcom/miui/gallery/ui/BitmapTileProvider;

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v6, 0x140

    invoke-direct {v2, v5, v6}, Lcom/miui/gallery/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

    .line 780
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mBitmapTileProvider:Lcom/miui/gallery/ui/BitmapTileProvider;

    invoke-virtual {v2, v5, v4}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 781
    iget-boolean v2, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_3

    .line 782
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 786
    :goto_1
    iput v3, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 833
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 772
    goto :goto_0

    .line 784
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 791
    :cond_4
    const/4 v2, 0x0

    const v5, 0x7f0d0030

    invoke-virtual {p0, v5}, Lcom/miui/gallery/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v5, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 794
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getMediaItemFromIntentData()Lcom/miui/gallery/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    .line 795
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    if-eqz v2, :cond_1

    .line 797
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    move v1, v3

    .line 800
    .local v1, supportedByBitmapRegionDecoder:Z
    :goto_3
    if-eqz v0, :cond_5

    const-string v2, "is-large-image"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 801
    const/4 v1, 0x1

    .line 804
    :cond_5
    if-eqz v1, :cond_7

    .line 805
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/app/CropImage$LoadDataTask;

    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/app/CropImage$LoadDataTask;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/data/MediaItem;)V

    new-instance v4, Lcom/miui/gallery/app/CropImage$3;

    invoke-direct {v4, p0}, Lcom/miui/gallery/app/CropImage$3;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    goto :goto_2

    .end local v1           #supportedByBitmapRegionDecoder:Z
    :cond_6
    move v1, v4

    .line 797
    goto :goto_3

    .line 819
    .restart local v1       #supportedByBitmapRegionDecoder:Z
    :cond_7
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;

    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/miui/gallery/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/data/MediaItem;)V

    new-instance v4, Lcom/miui/gallery/app/CropImage$4;

    invoke-direct {v4, p0}, Lcom/miui/gallery/app/CropImage$4;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 725
    if-nez p1, :cond_0

    .line 726
    const v0, 0x7f0d013f

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 727
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    .line 741
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-boolean v1, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 733
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 734
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    new-instance v1, Lcom/miui/gallery/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/miui/gallery/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 736
    iget-boolean v0, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 7
    .parameter "regionDecoder"

    .prologue
    const v6, 0x7f0d013f

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 694
    if-nez p1, :cond_0

    .line 695
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 696
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    .line 722
    :goto_0
    return-void

    .line 699
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 700
    iput-boolean v3, p0, Lcom/miui/gallery/app/CropImage;->mUseRegionDecoder:Z

    .line 701
    iput v3, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 703
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 704
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 705
    .local v2, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 706
    .local v0, height:I
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v2, v0, v3, v4}, Lcom/miui/gallery/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 708
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 710
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 711
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 712
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 715
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    new-instance v4, Lcom/miui/gallery/ui/TileImageViewAdapter;

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, p1}, Lcom/miui/gallery/ui/TileImageViewAdapter;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/miui/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/gallery/ui/CropView;->setDataModel(Lcom/miui/gallery/ui/TileImageView$Model;I)V

    .line 717
    iget-boolean v3, p0, Lcom/miui/gallery/app/CropImage;->mDoFaceDetection:Z

    if-eqz v3, :cond_2

    .line 718
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/miui/gallery/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v3}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 6

    .prologue
    .line 495
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 496
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, messageId:I
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    invoke-virtual {v2}, Lcom/miui/gallery/app/SaveWallPaper;->getSavingMessageId()I

    move-result v1

    .line 502
    :cond_1
    if-nez v1, :cond_2

    .line 503
    const v1, 0x7f0d003d

    .line 505
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/gallery/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 507
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getThreadPool()Lcom/miui/gallery/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/miui/gallery/app/CropImage$SaveOutput;

    invoke-direct {v3, p0, v0}, Lcom/miui/gallery/app/CropImage$SaveOutput;-><init>(Lcom/miui/gallery/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v4, Lcom/miui/gallery/app/CropImage$2;

    invoke-direct {v4, p0}, Lcom/miui/gallery/app/CropImage$2;-><init>(Lcom/miui/gallery/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/gallery/util/ThreadPool;->submit(Lcom/miui/gallery/util/ThreadPool$Job;Lcom/miui/gallery/util/FutureListener;)Lcom/miui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    goto :goto_0
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 620
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 621
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 622
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 623
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 631
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 634
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 635
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 657
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 637
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 638
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 639
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 640
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 644
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 645
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 646
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 647
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 651
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 652
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 653
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 654
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 635
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToUri(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/miui/gallery/app/CropImage;->getFileExtension(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 475
    :goto_0
    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CropImage"

    const-string v2, "cannot write output"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "cropped"
    .parameter "filePath"

    .prologue
    .line 362
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, oldPath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, filename:Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 367
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/gallery/app/CropImage;->saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 370
    .local v3, output:Ljava/io/File;
    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/miui/gallery/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;II)V

    .line 374
    :cond_1
    return-object v3
.end method

.method private saveGenericImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 13
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 430
    sget-object v7, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-static {v7, v10}, Lcom/miui/gallery/util/GalleryUtils;->createFolder(Ljava/io/File;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 432
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "cannot create download folder"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 435
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 436
    .local v2, now:J
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, filename:Ljava/lang/String;
    sget-object v7, Lcom/miui/gallery/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v7, v1}, Lcom/miui/gallery/app/CropImage;->saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 440
    .local v4, output:Ljava/io/File;
    if-nez v4, :cond_1

    const/4 v5, 0x0

    .line 464
    :goto_0
    return-object v5

    .line 442
    :cond_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v7, "_display_name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v7, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string v7, "date_modified"

    div-long v8, v2, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    const-string v7, "date_added"

    div-long v8, v2, v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    const-string v7, "mime_type"

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v7, "orientation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string v7, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v7, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    const-string v7, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v7, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const/4 v5, 0x0

    .line 459
    .local v5, ret:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CropImage"

    const-string v8, "exception happens when insert db"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private saveLocalImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 394
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    check-cast v1, Lcom/miui/gallery/data/LocalImage;

    .line 395
    .local v1, localImage:Lcom/miui/gallery/data/LocalImage;
    iget-object v7, v1, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v7}, Lcom/miui/gallery/app/CropImage;->saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 397
    .local v4, output:Ljava/io/File;
    if-nez v4, :cond_0

    .line 398
    const-string v7, "CropImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to save cropped image for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/miui/gallery/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v5, 0x0

    .line 426
    :goto_0
    return-object v5

    .line 402
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v2, v7, v9

    .line 403
    .local v2, now:J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    iget-object v8, v1, Lcom/miui/gallery/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v7, "_display_name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v7, "datetaken"

    iget-wide v8, v1, Lcom/miui/gallery/data/LocalImage;->dateTakenInMs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    const-string v7, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    const-string v7, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    const-string v7, "mime_type"

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v7, "orientation"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v7, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v7, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v7, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v7, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    iget-wide v7, v1, Lcom/miui/gallery/data/LocalImage;->latitude:D

    iget-wide v9, v1, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static {v7, v8, v9, v10}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 417
    const-string v7, "latitude"

    iget-wide v8, v1, Lcom/miui/gallery/data/LocalImage;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 418
    const-string v7, "longitude"

    iget-wide v8, v1, Lcom/miui/gallery/data/LocalImage;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 420
    :cond_1
    const/4 v5, 0x0

    .line 422
    .local v5, ret:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miui/gallery/data/LocalImage;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CropImage"

    const-string v8, "exception when insert db"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    invoke-direct {p0, v5}, Lcom/miui/gallery/app/CropImage;->getFileExtension(Lcom/miui/gallery/data/MediaItem;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, fileExtension:Ljava/lang/String;
    invoke-static {p3, p4, v2}, Lcom/miui/gallery/util/GalleryUtils;->getFileForSaving(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 324
    .local v0, candidate:Ljava/io/File;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 348
    .end local v0           #candidate:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 329
    .restart local v0       #candidate:Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v2}, Lcom/miui/gallery/util/GalleryUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    invoke-static {p1, p2, v5, v3}, Lcom/miui/gallery/util/GalleryUtils;->saveBitmapToOutputStream(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    move-object v0, v4

    .line 345
    goto :goto_0

    .line 334
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 336
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/io/File;)V

    move-object v0, v4

    .line 340
    goto :goto_0
.end method

.method private saveStorageImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    check-cast v0, Lcom/miui/gallery/data/StorageImage;

    .line 379
    .local v0, imageItem:Lcom/miui/gallery/data/StorageImage;
    invoke-virtual {v0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/gallery/app/CropImage;->saveCroppedImageToFile(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 381
    .local v1, output:Ljava/io/File;
    if-nez v1, :cond_0

    .line 382
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to save cropped image for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gallery/data/StorageImage;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v2, 0x0

    .line 390
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/gallery/data/StorageMediaItem;->getContentUriForGallery(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private saveToMediaProvider(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/LocalImage;

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveLocalImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mMediaItem:Lcom/miui/gallery/data/MediaItem;

    instance-of v0, v0, Lcom/miui/gallery/data/StorageImage;

    if-eqz v0, :cond_1

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveStorageImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/CropImage;->saveGenericImage(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 744
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 745
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 765
    :goto_0
    return-void

    .line 747
    :cond_0
    const-string v5, "aspectX"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 748
    .local v0, aspectX:I
    const-string v5, "aspectY"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 749
    .local v1, aspectY:I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 750
    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/CropView;->setAspectRatio(F)V

    .line 753
    :cond_1
    const-string v5, "spotlightX"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 754
    .local v3, spotlightX:F
    const-string v5, "spotlightY"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 755
    .local v4, spotlightY:F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_2

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_2

    .line 756
    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v5, v3, v4}, Lcom/miui/gallery/ui/CropView;->setSpotlightRatio(FF)V

    .line 764
    :goto_1
    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    const-string v6, "isInitFullSelection"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/gallery/ui/CropView;->setIsInitFullSelection(Z)V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v5, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v5, v8, v8}, Lcom/miui/gallery/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_1
.end method


# virtual methods
.method public onClickTab()V
    .locals 1

    .prologue
    .line 1002
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->setCropParameters()V

    .line 1003
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/CropView;->initializeHighlightRectangle()V

    .line 1004
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->onResume()V

    .line 1005
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/CropImage;->requestWindowFeature(I)Z

    .line 160
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/CropImage;->requestWindowFeature(I)Z

    .line 162
    const/16 v1, 0x400

    .line 163
    .local v1, fullScreenFlag:I
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 166
    const v2, 0x7f04000d

    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/CropImage;->setContentView(I)V

    .line 167
    new-instance v2, Lcom/miui/gallery/ui/CropView;

    invoke-direct {v2, p0}, Lcom/miui/gallery/ui/CropView;-><init>(Lcom/miui/gallery/app/GalleryActivity;)V

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    .line 168
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-interface {v2, v3}, Lcom/miui/gallery/ui/GLRoot;->setContentPane(Lcom/miui/gallery/ui/GLView;)V

    .line 170
    new-instance v2, Lcom/miui/gallery/app/CropImage$1;

    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/gallery/app/CropImage$1;-><init>(Lcom/miui/gallery/app/CropImage;Lcom/miui/gallery/ui/GLRoot;)V

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 202
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 204
    const-string v2, "set-as-wallpaper"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Lcom/miui/gallery/app/SaveWallPaper;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p0, v3}, Lcom/miui/gallery/app/SaveWallPaper;-><init>(Landroid/app/Activity;Lcom/miui/gallery/app/SaveWallPaperListener;I)V

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    .line 207
    :cond_0
    const-string v2, "set-as-lockscreen"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    new-instance v2, Lcom/miui/gallery/app/SaveWallPaper;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p0, v3}, Lcom/miui/gallery/app/SaveWallPaper;-><init>(Landroid/app/Activity;Lcom/miui/gallery/app/SaveWallPaperListener;I)V

    iput-object v2, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->setCropParameters()V

    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 223
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mSaveWallPaper:Lcom/miui/gallery/app/SaveWallPaper;

    invoke-virtual {v0}, Lcom/miui/gallery/app/SaveWallPaper;->unbindThemeMangerService()V

    .line 1017
    :cond_0
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onDestroy()V

    .line 1018
    return-void
.end method

.method public onGetCropBitmap(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "rect"
    .parameter "outputX"
    .parameter "outputY"

    .prologue
    .line 1009
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 235
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 261
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 248
    :sswitch_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 252
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/CropImage;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->finish()V

    goto :goto_0

    .line 257
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0022 -> :sswitch_1
        0x7f0b00ad -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 853
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onPause()V

    .line 855
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mLoadTask:Lcom/miui/gallery/util/Future;

    .line 856
    .local v1, loadTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 858
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 859
    invoke-interface {v1}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 860
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/CropImage;->mLoadBitmapTask:Lcom/miui/gallery/util/Future;

    .line 864
    .local v0, loadBitmapTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 866
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 867
    invoke-interface {v0}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 868
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 871
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/app/CropImage;->mSaveTask:Lcom/miui/gallery/util/Future;

    .line 872
    .local v3, saveTask:Lcom/miui/gallery/util/Future;,"Lcom/miui/gallery/util/Future<Landroid/content/Intent;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 874
    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->cancel()V

    .line 875
    invoke-interface {v3}, Lcom/miui/gallery/util/Future;->waitDone()V

    .line 876
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 878
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v2

    .line 879
    .local v2, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 881
    :try_start_0
    iget-object v4, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v4}, Lcom/miui/gallery/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 885
    return-void

    .line 883
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 837
    invoke-super {p0}, Lcom/miui/gallery/app/AbstractGalleryActivity;->onResume()V

    .line 838
    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->initializeData()V

    .line 839
    :cond_0
    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/app/CropImage;->onSaveClicked()V

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/miui/gallery/app/CropImage;->getGLRoot()Lcom/miui/gallery/ui/GLRoot;

    move-result-object v0

    .line 843
    .local v0, root:Lcom/miui/gallery/ui/GLRoot;
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 845
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/CropImage;->mCropView:Lcom/miui/gallery/ui/CropView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 849
    return-void

    .line 847
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/miui/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 217
    const-string v0, "state"

    iget v1, p0, Lcom/miui/gallery/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    return-void
.end method
