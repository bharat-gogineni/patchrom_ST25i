.class public Lcom/android/thememanager/ThemeInfo;
.super Lmiui/app/resourcebrowser/service/local/ZipResourceInfo;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;,
        Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
    }
.end annotation


# static fields
.field private static PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;


# instance fields
.field private mClockSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:J

.field private mPhotoFrameSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviewFlag:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;JLmiui/app/resourcebrowser/service/local/ZipResourceCache;)V
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "componentFlags"
    .parameter "themeCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p5}, Lmiui/app/resourcebrowser/service/local/ZipResourceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    .line 247
    iget v0, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/thememanager/ThemeInfo;->parseIdentifyFlags(Ljava/lang/String;JI)V

    .line 249
    const-string v0, "/system/media/theme/default.mtz"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget v0, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    iput v0, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeInfo;JJLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/thememanager/ThemeInfo;->apply(JJLandroid/app/ProgressDialog;)V

    return-void
.end method

.method private apply(JJLandroid/app/ProgressDialog;)V
    .locals 20
    .parameter "userRemoveFlags"
    .parameter "applyFlags"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 456
    .local v13, zipFile:Ljava/util/zip/ZipFile;
    or-long v11, p1, p3

    .line 457
    .local v11, removeFlags:J
    const/4 v10, 0x0

    .line 458
    .local v10, prepareIconStepCnt:I
    const-wide/16 v14, 0x8

    and-long/2addr v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 459
    const/16 v10, 0xa

    .line 461
    :cond_0
    move v8, v10

    .line 462
    .local v8, iconNeedStep:I
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0xd

    add-int/2addr v14, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/thememanager/ThemeHelper;->mkThemeDir(Landroid/content/Context;)V

    .line 466
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 469
    invoke-static {v11, v12}, Lcom/android/thememanager/ThemeHelper;->getComponentFilterPath(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 470
    .local v5, deleteFilters:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v14, 0x10000000

    and-long/2addr v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1

    .line 471
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllThirdAppResourcePath()Ljava/util/List;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 474
    .local v6, filter:Ljava/lang/String;
    const-string v14, "%s/%s*"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "/data/system/theme/"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 476
    .end local v6           #filter:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 479
    invoke-static/range {p3 .. p4}, Lcom/android/thememanager/ThemeHelper;->getComponentFilterPath(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 480
    .local v3, applyFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "/data/system/theme/"

    const-wide/32 v16, 0x10000000

    and-long v16, v16, p3

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p5

    invoke-static {v13, v15, v3, v14, v0}, Lcom/android/thememanager/ZipHelper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 482
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 483
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 486
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/thememanager/ThemeInfo;->convertResourcesNames(JJ)V

    .line 487
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    and-long v15, v15, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/data/system/theme/"

    invoke-static/range {v14 .. v18}, Lcom/android/thememanager/ThemeHelper;->applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 494
    const-wide/16 v14, 0x2

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/thememanager/ThemeHelper;->applyDeskWallpaperOfThemeFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 499
    const-wide/16 v14, 0x4

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/thememanager/ThemeHelper;->applyLockWallpaperOfThemeFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 505
    const-wide/32 v14, 0x8000

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    .line 508
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 511
    const-wide/16 v14, 0x20

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    .line 512
    const-string v14, "/data/local/bootanimation.zip"

    const-string v15, "root"

    invoke-static {v14, v15}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/system/theme/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "boots/bootanimation.zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/data/local/bootanimation.zip"

    const-string v16, "root"

    invoke-static/range {v14 .. v16}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    const-string v14, "/data/local/bootanimation.zip"

    const-string v15, "00775"

    const-string v16, "root"

    invoke-static/range {v14 .. v16}, Lmiui/util/CommandLineUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 522
    const-wide/16 v14, 0x8

    and-long/2addr v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7

    .line 523
    const/4 v14, 0x0

    invoke-static {v14}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 526
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v14

    invoke-virtual {v14}, Lmiui/content/res/ThemeResourcesSystem;->resetIcons()V

    .line 527
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/android/thememanager/ThemeInfo$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v15, v0, v1, v8}, Lcom/android/thememanager/ThemeInfo$1;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/app/ProgressDialog;I)V

    invoke-static {v14, v15}, Lmiui/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 546
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 550
    :cond_7
    const-wide/16 v14, 0x1000

    and-long v14, v14, p3

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    .line 551
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getLockstyleAppliedConfigFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v9, oldConfigFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 553
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 555
    :cond_8
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/thememanager/ThemeHelper;->getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v4, configFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 557
    invoke-static {v4, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 558
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1fd

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 561
    .end local v4           #configFile:Ljava/io/File;
    .end local v9           #oldConfigFile:Ljava/io/File;
    :cond_9
    invoke-virtual/range {p5 .. p5}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 562
    return-void

    .line 480
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private checkCacheValid(Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)Z
    .locals 3
    .parameter "themeCache"

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/app/resourcebrowser/service/local/ZipResourceCache;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)V

    .line 153
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private convertResourcesNames(JJ)V
    .locals 9
    .parameter "removeFlags"
    .parameter "applyFlags"

    .prologue
    const-wide/16 v7, 0x10

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 565
    and-long v1, p1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 567
    const-string v1, "/system/fonts"

    invoke-direct {p0, v1}, Lcom/android/thememanager/ThemeInfo;->createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V

    .line 569
    :cond_0
    and-long v1, p3, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 571
    const-string v0, "/data/system/theme//fonts/"

    .line 572
    .local v0, fontPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Regular.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-Bold.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Bold.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-Italic.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-Italic.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Arial-BoldItalic.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Roboto-BoldItalic.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 576
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/fonts/Chinese-Hei.ttf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DroidSansFallback.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Chinese-Hei.ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 579
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/thememanager/ThemeInfo;->createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V

    .line 581
    .end local v0           #fontPath:Ljava/lang/String;
    :cond_2
    const-string v1, "/data/system/theme//com.android.launcher"

    const-string v2, "/data/system/theme//com.miui.home"

    invoke-static {v1, v2, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 582
    return-void
.end method

.method private createFontFileLinkForPatchRomDevices(Ljava/lang/String;)V
    .locals 8
    .parameter "fontDirPath"

    .prologue
    .line 585
    if-eqz p1, :cond_0

    const-string v5, "ro.skia.use_data_fonts"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 586
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 587
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 588
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 589
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lmiui/util/CommandLineUtils;->symlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 593
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public static varargs createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/service/local/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;
    .locals 10
    .parameter "context"
    .parameter "path"
    .parameter "cache"
    .parameter "args"

    .prologue
    .line 52
    const/4 v9, 0x0

    .line 54
    .local v9, result:Lcom/android/thememanager/ThemeInfo;
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 55
    .local v7, previewFlag:J
    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 56
    .local v3, componentFlags:J
    new-instance v0, Lcom/android/thememanager/ThemeInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;JLmiui/app/resourcebrowser/service/local/ZipResourceCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .local v0, result:Lcom/android/thememanager/ThemeInfo;
    :try_start_1
    invoke-virtual {v0, v7, v8, p2}, Lcom/android/thememanager/ThemeInfo;->parsePreviewsInfo(JLmiui/app/resourcebrowser/service/local/ZipResourceCache;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .end local v3           #componentFlags:J
    .end local v7           #previewFlag:J
    :goto_0
    return-object v0

    .line 58
    .end local v0           #result:Lcom/android/thememanager/ThemeInfo;
    .restart local v9       #result:Lcom/android/thememanager/ThemeInfo;
    :catch_0
    move-exception v6

    move-object v0, v9

    .line 59
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .restart local v0       #result:Lcom/android/thememanager/ThemeInfo;
    .local v6, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #componentFlags:J
    .restart local v7       #previewFlag:J
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "animationPath"
    .parameter "previewPath"

    .prologue
    .line 419
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 421
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 424
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x0

    .line 426
    .local v4, preview:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 427
    .local v3, maxName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 428
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 429
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 430
    const-string v6, ".png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 433
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 434
    :cond_1
    move-object v4, v2

    .line 435
    move-object v3, p1

    goto :goto_0

    .line 441
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v4, :cond_3

    .line 442
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, p2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3           #maxName:Ljava/lang/String;
    .end local v4           #preview:Ljava/util/zip/ZipEntry;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_1
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .locals 4
    .parameter "zipfile"

    .prologue
    .line 328
    const-string v0, "preview/preview_cover_"

    .line 331
    .local v0, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "small_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 333
    .local v1, smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-virtual {p0, p1, v0}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private getHomePagePosition(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, homePostion:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, isHead:Z
    sget-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 231
    .local v5, tmp:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 232
    const/4 v3, 0x1

    .line 236
    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_3

    .line 241
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #isHead:Z
    .end local v4           #len$:I
    :cond_1
    return v1

    .line 230
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #isHead:Z
    .restart local v4       #len$:I
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initClockPhotoFrameSizeList()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-wide v6, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/32 v8, 0x30000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v6, "/system/media/theme/default.mtz"

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 99
    .local v3, size:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #size:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/service/local/ZipResourceCache;

    check-cast v4, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 104
    .local v4, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->valid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_0

    .line 108
    :cond_3
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 109
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    const-wide/32 v6, 0x10000

    invoke-static {v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 111
    const-wide/32 v6, 0x20000

    invoke-static {v5, v6, v7}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0
.end method

.method private loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V
    .locals 19
    .parameter "zipfile"
    .parameter "componentFlag"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p4, retThumbnail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, retPreview:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "preview"

    invoke-static/range {v16 .. v16}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p2 .. p3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, prefix:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v11, previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/32 v15, 0x10000

    cmp-long v15, p2, v15

    if-eqz v15, :cond_0

    const-wide/32 v15, 0x20000

    cmp-long v15, p2, v15

    if-nez v15, :cond_4

    .line 350
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    sget-object v15, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 351
    .local v13, sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v15, ""

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, preCnt:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 355
    .local v12, size:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, newPrefix:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 358
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 411
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #newPrefix:Ljava/lang/String;
    .end local v9           #preCnt:I
    .end local v10           #prefix:Ljava/lang/String;
    .end local v11           #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 412
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 414
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return-void

    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #preCnt:I
    .restart local v10       #prefix:Ljava/lang/String;
    .restart local v11       #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #size:Ljava/lang/String;
    .restart local v13       #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v8, v10

    .line 355
    goto :goto_1

    .line 360
    .restart local v8       #newPrefix:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 361
    goto :goto_0

    .line 363
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #newPrefix:Ljava/lang/String;
    .end local v9           #preCnt:I
    .end local v12           #size:Ljava/lang/String;
    .end local v13           #sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_6

    .line 367
    const-wide/16 v15, 0x1

    cmp-long v15, p2, v15

    if-nez v15, :cond_9

    .line 368
    const-string v15, "preview/"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 398
    :cond_6
    :goto_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v14, thumbnailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v15, 0x10

    cmp-long v15, p2, v15

    if-nez v15, :cond_c

    const/4 v15, 0x1

    move/from16 v16, v15

    :goto_5
    const-wide/16 v17, 0x8

    cmp-long v15, p2, v17

    if-nez v15, :cond_d

    const/4 v15, 0x1

    :goto_6
    or-int v15, v15, v16

    if-eqz v15, :cond_7

    .line 403
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "small_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 405
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 406
    move-object v14, v11

    .line 409
    :cond_8
    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    move-object/from16 v0, p5

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 370
    .end local v14           #thumbnailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-wide/16 v15, 0x80

    cmp-long v15, p2, v15

    if-nez v15, :cond_a

    .line 371
    const-string v15, "com.android.mms/res/drawable-hdpi/default_theme_preview.jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v11}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 372
    const-string v15, "com.android.mms/res/drawable-hdpi/theme_default.jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v11}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_4

    .line 374
    :cond_a
    const-wide/16 v15, 0x20

    cmp-long v15, p2, v15

    if-nez v15, :cond_6

    .line 375
    const-string v15, "%s%s0.png"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, extractedPreview:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, extractedFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_b

    .line 381
    const-string v15, "boots/bootanimation.zip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 382
    .local v4, entry:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_1

    .line 385
    const-string v15, "%sbootanimation.zip"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, animationFile:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15, v2}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/thememanager/ThemeInfo;->generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 391
    .end local v2           #animationFile:Ljava/lang/String;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    :cond_b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 392
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 399
    .end local v5           #extractedFile:Ljava/io/File;
    .end local v6           #extractedPreview:Ljava/lang/String;
    .restart local v14       #thumbnailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const/4 v15, 0x0

    move/from16 v16, v15

    goto/16 :goto_5

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_6
.end method

.method private parseIdentifyFlags(Ljava/lang/String;JI)V
    .locals 5
    .parameter "zipFilePath"
    .parameter "cacheFlags"
    .parameter "uiVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 256
    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    cmp-long v1, p2, v3

    if-nez v1, :cond_3

    .line 260
    const-string v1, "/system/media/theme/default.mtz"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    :cond_1
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0

    .line 264
    :cond_2
    new-instance v0, Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 265
    .local v0, zipfile:Ljava/util/zip/ZipFile;
    iget v1, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    .line 266
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0

    .line 269
    .end local v0           #zipfile:Ljava/util/zip/ZipFile;
    :cond_3
    iput-wide p2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0
.end method


# virtual methods
.method public apply_async(JJLjava/lang/Runnable;)V
    .locals 8
    .parameter "removeFlags"
    .parameter "componentFlags"
    .parameter "finishRunnable"

    .prologue
    .line 450
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;JJLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 451
    return-void
.end method

.method public containClockPhotoFrameSize(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "size"
    .parameter "forClock"

    .prologue
    const/4 v1, 0x0

    .line 119
    const-string v2, "/system/media/theme/default.mtz"

    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 123
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public filterClockPhotoFramePreviews(Ljava/lang/String;Z)V
    .locals 9
    .parameter "size"
    .parameter "forClock"

    .prologue
    const/4 v8, 0x1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p2, :cond_3

    const-wide/32 v5, 0x10000

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, prefix:Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mClockSizeList:Ljava/util/ArrayList;

    .line 135
    .local v4, removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, removeSize:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_1

    .line 138
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 130
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #prefix:Ljava/lang/String;
    .end local v3           #removeSize:Ljava/lang/String;
    .end local v4           #removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-wide/32 v5, 0x20000

    invoke-static {v5, v6}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 134
    .restart local v2       #prefix:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mPhotoFrameSizeList:Ljava/util/ArrayList;

    goto :goto_2

    .line 143
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #removeSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    .line 145
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    :cond_6
    iget-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getCacheInstance()Lmiui/app/resourcebrowser/service/local/ZipResourceCache;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    invoke-direct {v0, p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;-><init>(Lcom/android/thememanager/ThemeInfo;)V

    return-object v0
.end method

.method public getInformation()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 597
    invoke-super {p0}, Lmiui/app/resourcebrowser/service/local/ZipResourceInfo;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 598
    .local v0, information:Landroid/os/Bundle;
    const-string v1, "modulesFlag"

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 599
    return-object v0
.end method

.method protected loadPreviewsFromCache(Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)V
    .locals 15
    .parameter "cache"

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p1

    .line 170
    check-cast v10, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 171
    .local v10, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 172
    const-wide/32 v4, -0x8001

    .line 173
    .local v4, mask:J
    const/4 v11, 0x1

    invoke-virtual {v10, v4, v5, v11}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    .line 174
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/16 v13, 0x8

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_6

    const-wide/16 v11, 0x4000

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImageNumber(JZ)I

    move-result v11

    if-nez v11, :cond_6

    .line 176
    const-wide/16 v11, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 177
    .local v3, iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 178
    const-wide/16 v11, -0x9

    and-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 179
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/android/thememanager/ThemeInfo;->getHomePagePosition(Ljava/util/ArrayList;)I

    move-result v1

    .line 180
    .local v1, homeInsertPosition:I
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 182
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    .end local v1           #homeInsertPosition:I
    .end local v3           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #mask:J
    :cond_2
    :goto_1
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    const-string v11, "/system/media/theme/default.mtz"

    iget-object v12, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 197
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 200
    new-instance v9, Ljava/io/File;

    const-string v11, "/system/media/audio/ui"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v9, systemDir:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v8, previewDir:Ljava/io/File;
    sget-object v11, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 203
    .local v6, name:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v7, originFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 208
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lmiui/app/resourcebrowser/util/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 216
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #originFile:Ljava/io/File;
    .end local v8           #previewDir:Ljava/io/File;
    .end local v9           #systemDir:Ljava/io/File;
    .restart local v3       #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #mask:J
    :cond_5
    invoke-virtual {v10, v4, v5}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto :goto_1

    .line 188
    .end local v3           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-wide/16 v11, -0x9

    and-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 191
    .end local v4           #mask:J
    :cond_7
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    invoke-virtual {v10, v11, v12}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 192
    iget-wide v11, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 213
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #originFile:Ljava/io/File;
    .restart local v8       #previewDir:Ljava/io/File;
    .restart local v9       #systemDir:Ljava/io/File;
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 219
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #originFile:Ljava/io/File;
    :cond_9
    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 209
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #originFile:Ljava/io/File;
    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method public loadResourcePreviews()V
    .locals 23

    .prologue
    .line 275
    const/4 v15, 0x0

    .line 277
    .local v15, previewCacheSize:I
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, zipfile:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/service/local/ZipResourceCache;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 280
    .local v17, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v2, v2

    if-ge v10, v2, :cond_4

    .line 281
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v4, v2, v10

    .line 282
    .local v4, componentFlag:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide/from16 v19, v0

    and-long v19, v19, v4

    const-wide/16 v21, 0x0

    cmp-long v2, v19, v21

    if-nez v2, :cond_0

    .line 280
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 286
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v6, componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v2, p0

    .line 288
    invoke-direct/range {v2 .. v7}, Lcom/android/thememanager/ThemeInfo;->loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V

    .line 290
    const-wide/16 v19, 0x8

    cmp-long v2, v4, v19

    if-nez v2, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 291
    const-string v2, "icons/com.android.mms.png"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v6}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 299
    :cond_1
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheThumbnail(JLjava/util/ArrayList;)V

    .line 300
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCachePreview(JLjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 322
    .end local v3           #zipfile:Ljava/util/zip/ZipFile;
    .end local v4           #componentFlag:J
    .end local v6           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #i:I
    .end local v17           #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :catch_0
    move-exception v2

    .line 324
    :goto_3
    const-string v2, "ResourceBrowser"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "load preview for file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cachSize: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 292
    .restart local v3       #zipfile:Ljava/util/zip/ZipFile;
    .restart local v4       #componentFlag:J
    .restart local v6       #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #i:I
    .restart local v17       #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :cond_2
    const-wide/32 v19, 0x8000

    cmp-long v2, v4, v19

    if-nez v2, :cond_1

    .line 293
    :try_start_1
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 294
    .local v13, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "audioeffect"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v7}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_4

    .line 296
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 302
    .end local v4           #componentFlag:J
    .end local v6           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/thememanager/ThemeInfo;->getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCoverThumbnail(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {v17 .. v17}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->finishCached()V

    .line 307
    const-string v2, "/system/media/theme/default.mtz"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 308
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v18, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v12, v8

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_5
    if-ge v11, v12, :cond_5

    aget-object v16, v8, v11

    .line 310
    .local v16, size:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 312
    .end local v16           #size:Ljava/lang/String;
    :cond_5
    move-object/from16 v9, v18

    .line 313
    .local v9, clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v14, v18

    .line 318
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v18           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setClockPhotoFrameSize(Ljava/util/List;Z)V

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setClockPhotoFrameSize(Ljava/util/List;Z)V

    .line 321
    invoke-virtual/range {v17 .. v17}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheSize()I

    move-result v15

    goto/16 :goto_3

    .line 315
    .end local v9           #clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const-wide/32 v19, 0x10000

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;

    move-result-object v9

    .line 316
    .restart local v9       #clockList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/32 v19, 0x20000

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .restart local v14       #photoFrameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_6
.end method

.method public parsePreviewsInfo(JLmiui/app/resourcebrowser/service/local/ZipResourceCache;)V
    .locals 5
    .parameter "previewFlag"
    .parameter "cache"

    .prologue
    const-wide/16 v3, 0x0

    .line 66
    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    .line 87
    .end local p1
    :goto_0
    return-void

    .line 69
    .restart local p1
    :cond_0
    iget-wide v1, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ThemeInfo.parsePreviewInfo() can only be called once."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    const-wide/16 v1, 0x1

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-wide/16 p1, -0x1

    .end local p1
    :cond_2
    iput-wide p1, p0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    .line 74
    invoke-direct {p0, p3}, Lcom/android/thememanager/ThemeInfo;->checkCacheValid(Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo;->loadResourcePreviews()V

    .line 76
    iget-object p3, p0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/service/local/ZipResourceCache;

    .line 78
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lmiui/app/resourcebrowser/service/local/ZipResourceCache;)V

    .line 79
    if-eqz p3, :cond_4

    .line 80
    iput-object p3, p0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/service/local/ZipResourceCache;

    .line 83
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/thememanager/ThemeInfo;->initClockPhotoFrameSizeList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method saveUserPreference(JJ)V
    .locals 14
    .parameter "removeFlags"
    .parameter "applyFlags"

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide v10

    .line 606
    .local v10, componentFlags:J
    :goto_0
    and-long v12, p3, v10

    .line 607
    .local v12, saveFlags:J
    move-wide v8, p1

    .line 609
    .local v8, clearFlags:J
    sget-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    or-long v6, v0, v2

    .line 612
    .local v6, audioImageFlagMask:J
    const-wide/16 v0, -0x1

    xor-long/2addr v0, v6

    and-long v1, v12, v0

    const-wide/16 v3, -0x1

    xor-long/2addr v3, v6

    and-long/2addr v3, v8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 613
    and-long v1, v12, v6

    and-long v3, v8, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 614
    return-void

    .line 603
    .end local v6           #audioImageFlagMask:J
    .end local v8           #clearFlags:J
    .end local v10           #componentFlags:J
    .end local v12           #saveFlags:J
    :cond_0
    iget-wide v10, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0
.end method
