.class public Lcom/miui/gallery/app/SaveWallPaper;
.super Ljava/lang/Object;
.source "SaveWallPaper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mIsSaveWallPaper:Z

.field private mSaveType:I

.field private mSaveWallPaperListener:Lcom/miui/gallery/app/SaveWallPaperListener;

.field private mSpotlightX:F

.field private mSpotlightY:F

.field private mThemeManagerConnection:Landroid/content/ServiceConnection;

.field private mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/gallery/app/SaveWallPaperListener;I)V
    .locals 10
    .parameter "activity"
    .parameter "saveWallPaperListener"
    .parameter "saveType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v8, p0, Lcom/miui/gallery/app/SaveWallPaper;->mIsSaveWallPaper:Z

    .line 398
    iput-object v9, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    .line 399
    new-instance v6, Lcom/miui/gallery/app/SaveWallPaper$2;

    invoke-direct {v6, p0}, Lcom/miui/gallery/app/SaveWallPaper$2;-><init>(Lcom/miui/gallery/app/SaveWallPaper;)V

    iput-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeManagerConnection:Landroid/content/ServiceConnection;

    .line 68
    iput-object p1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSaveWallPaperListener:Lcom/miui/gallery/app/SaveWallPaperListener;

    .line 70
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    const v7, 0x7f040033

    invoke-static {v6, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, container:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    invoke-direct {p0, p3}, Lcom/miui/gallery/app/SaveWallPaper;->setSaveType(I)V

    .line 77
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0b009f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 78
    .local v4, tabLockScreen:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0b00a2

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 79
    .local v5, tabWallPaper:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0b00a5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 81
    .local v2, tabAll:Landroid/widget/LinearLayout;
    new-instance v3, Lcom/miui/gallery/app/SaveWallPaper$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/app/SaveWallPaper$1;-><init>(Lcom/miui/gallery/app/SaveWallPaper;)V

    .line 105
    .local v3, tabClickListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/SaveWallPaper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/SaveWallPaper;->setSaveType(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/app/SaveWallPaper;)Lcom/miui/gallery/app/SaveWallPaperListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSaveWallPaperListener:Lcom/miui/gallery/app/SaveWallPaperListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/app/SaveWallPaper;Lmiui/app/resourcebrowser/service/IThemeManagerService;)Lmiui/app/resourcebrowser/service/IThemeManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    return-object p1
.end method

.method private callRpcSaveLockWallpaper(Ljava/lang/String;)Z
    .locals 4
    .parameter "srcImagePath"

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, cnt:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 387
    mul-int/lit16 v2, v0, 0xc8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 389
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    invoke-interface {v2, p1}, Lmiui/app/resourcebrowser/service/IThemeManagerService;->saveLockWallpaper(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1
.end method

.method private getLockScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "context"

    .prologue
    .line 246
    invoke-static {p1}, Lcom/miui/gallery/util/GalleryUtils;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private initThemeMangerService()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 229
    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lmiui/app/resourcebrowser/service/IThemeManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 236
    :cond_0
    return v0
.end method

.method private setAsAllPaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 10
    .parameter "jc"
    .parameter "srcBmp"
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/SaveWallPaper;->setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v5

    .line 294
    :cond_1
    if-eqz p2, :cond_2

    .line 295
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    const/4 p2, 0x0

    .line 300
    :cond_2
    iget v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightX:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightY:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 304
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightX:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 305
    .local v4, spotWidth:I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightY:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 306
    .local v3, spotHeight:I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 307
    .local v0, centerX:I
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 308
    .local v1, centerY:I
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v0, v6

    div-int/lit8 v7, v3, 0x2

    sub-int v7, v1, v7

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v0

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v1

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 310
    .local v2, lockRect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSaveWallPaperListener:Lcom/miui/gallery/app/SaveWallPaperListener;

    iget v7, p0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayWidth:I

    iget v8, p0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayHeight:I

    invoke-interface {v6, v2, v7, v8}, Lcom/miui/gallery/app/SaveWallPaperListener;->onGetCropBitmap(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 311
    if-eqz p2, :cond_0

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/SaveWallPaper;->setAsLockScreen(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private setAsLockScreen(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 17
    .parameter "jc"
    .parameter "srcBmp"

    .prologue
    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, result:Z
    const-string v13, "lock.tmp"

    .line 332
    .local v13, tmpLockpaperName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/gallery/app/SaveWallPaper;->getLockScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 333
    .local v5, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 334
    .local v12, srcWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 335
    .local v11, srcHeight:I
    iget v10, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 336
    .local v10, screenWidth:I
    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 339
    .local v9, screenHeight:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    const-string v15, "lock.tmp"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 341
    .local v6, outputStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 345
    .local v2, destBmp:Landroid/graphics/Bitmap;
    if-ne v12, v10, :cond_0

    if-eq v11, v9, :cond_3

    .line 346
    :cond_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    .local v4, matrix:Landroid/graphics/Matrix;
    const/high16 v14, 0x3f80

    int-to-float v15, v10

    mul-float/2addr v14, v15

    int-to-float v15, v12

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    int-to-float v0, v9

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 349
    .local v7, ratio:F
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 350
    int-to-float v14, v10

    int-to-float v15, v12

    mul-float/2addr v15, v7

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    int-to-float v15, v9

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 353
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 356
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 359
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 363
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v4           #matrix:Landroid/graphics/Matrix;
    .end local v7           #ratio:F
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 365
    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_1
    if-eqz p2, :cond_2

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "lock.tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/gallery/app/SaveWallPaper;->callRpcSaveLockWallpaper(Ljava/lang/String;)Z

    move-result v8

    .line 378
    .end local v2           #destBmp:Landroid/graphics/Bitmap;
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return v8

    .line 361
    .restart local v2       #destBmp:Landroid/graphics/Bitmap;
    .restart local v6       #outputStream:Ljava/io/FileOutputStream;
    :cond_3
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 374
    .end local v2           #destBmp:Landroid/graphics/Bitmap;
    .end local v6           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 375
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 376
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v14

    goto :goto_1
.end method

.method private setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SaveWallPaper"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setSaveType(I)V
    .locals 18
    .parameter "saveType"

    .prologue
    .line 115
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/SaveWallPaper;->mSaveType:I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08000f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 118
    .local v12, textColorNormal:Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08000e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 122
    .local v11, textColorHighlight:Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 123
    .local v8, tabLockScreenText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a3

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 124
    .local v10, tabWallPaperText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a6

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, tabAllText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a1

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 126
    .local v7, tabLockScreenBottom:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a4

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 127
    .local v9, tabWallPaperBottom:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    const v17, 0x7f0b00a7

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 130
    .local v5, tabAllBottom:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 131
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 132
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #extras:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/miui/gallery/app/SaveWallPaper;->getLockScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 137
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayWidth:I

    .line 138
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayHeight:I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getWallpaperDesiredMinimumWidth()I

    move-result v14

    .line 140
    .local v14, wallpaperWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getWallpaperDesiredMinimumHeight()I

    move-result v13

    .line 142
    .local v13, wallpaperHeight:I
    const/4 v15, 0x0

    .line 143
    .local v15, width:I
    const/4 v3, 0x0

    .line 144
    .local v3, height:I
    packed-switch p1, :pswitch_data_0

    .line 216
    :cond_1
    :goto_0
    const-string v16, "outputX"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v16, "outputY"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v16, "aspectX"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v16, "aspectY"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v16, "scale"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    const-string v16, "noFaceDetection"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    const-string v16, "isInitFullSelection"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 226
    :goto_1
    return-void

    .line 146
    :pswitch_0
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    const v16, 0x7f020002

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayWidth:I

    .line 157
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayHeight:I

    .line 159
    const-string v16, "spotlightX"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 160
    const-string v16, "spotlightY"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/app/SaveWallPaper;->initThemeMangerService()Z

    move-result v16

    if-nez v16, :cond_1

    goto :goto_1

    .line 170
    :pswitch_1
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    const v16, 0x7f020002

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    move v15, v14

    .line 181
    move v3, v13

    .line 183
    const-string v16, "spotlightX"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 184
    const-string v16, "spotlightY"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    const v16, 0x7f020003

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    const v16, 0x7f020002

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    move v15, v14

    .line 199
    move v3, v13

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightX:F

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v13

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightY:F

    .line 203
    const-string v16, "spotlightX"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightX:F

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 204
    const-string v16, "spotlightY"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/gallery/app/SaveWallPaper;->mSpotlightY:F

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/miui/gallery/app/SaveWallPaper;->initThemeMangerService()Z

    move-result v16

    if-nez v16, :cond_1

    goto/16 :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getSavingMessageId()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSaveType:I

    packed-switch v0, :pswitch_data_0

    .line 261
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 252
    :pswitch_0
    const v0, 0x7f0d00ea

    goto :goto_0

    .line 255
    :pswitch_1
    const v0, 0x7f0d00e9

    goto :goto_0

    .line 258
    :pswitch_2
    const v0, 0x7f0d00e8

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveOutput(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "jc"
    .parameter "cropped"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 265
    iget v1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mSaveType:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 267
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/SaveWallPaper;->setAsWallpaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/SaveWallPaper;->setAsLockScreen(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/app/SaveWallPaper;->setAsAllPaper(Lcom/miui/gallery/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public unbindThemeMangerService()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/gallery/app/SaveWallPaper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/app/SaveWallPaper;->mThemeManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 243
    :cond_0
    return-void
.end method
