.class public Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;
.super Lcom/miui/home/launcher/gadget/ConfigableGadget;
.source "ClockGadgetDelegate.java"


# static fields
.field private static final DENSITY_SCALE:F

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field final mClock:Lcom/miui/home/launcher/gadget/Clock;

.field private mEditView:Landroid/view/View;

.field private mErrorDisplay:Landroid/view/View;

.field private final mRequestCode:I

.field mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->TAG:Ljava/lang/String;

    .line 255
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "requestCode"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    .line 69
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/Clock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    .line 70
    iput p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRequestCode:I

    .line 71
    return-void
.end method

.method private adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V
    .locals 5
    .parameter "root"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 258
    const-string v3, "clock_x"

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, clockX:I
    const-string v3, "clock_y"

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, clockY:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    sget v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 262
    sget v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->DENSITY_SCALE:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method

.method private static extractClock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "dest"
    .parameter "zipPath"
    .parameter "entryName"
    .parameter "dftZip"

    .prologue
    const/4 v9, 0x0

    .line 304
    const/4 v5, 0x0

    .line 305
    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 307
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 308
    .local v8, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 309
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_0

    .line 310
    new-instance v8, Ljava/util/zip/ZipFile;

    .end local v8           #zip:Ljava/util/zip/ZipFile;
    invoke-direct {v8, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 311
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v8, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 313
    :cond_0
    if-eqz v3, :cond_6

    .line 314
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v4, f:Ljava/io/File;
    invoke-virtual {v8, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 316
    if-eqz v5, :cond_4

    .line 317
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 318
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v0, v10, [B

    .line 319
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 320
    .local v1, c:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    .line 321
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    .end local v0           #buf:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 328
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v7           #os:Ljava/io/FileOutputStream;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v6, :cond_1

    .line 332
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 334
    :cond_1
    if-eqz v5, :cond_2

    .line 335
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 341
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return v9

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #c:I
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    move-object v6, v7

    .line 324
    .end local v0           #buf:[B
    .end local v1           #c:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v9, 0x1

    .line 331
    if-eqz v6, :cond_5

    .line 332
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 334
    :cond_5
    if-eqz v5, :cond_2

    .line 335
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 337
    :catch_1
    move-exception v10

    goto :goto_2

    .line 331
    .end local v4           #f:Ljava/io/File;
    :cond_6
    if-eqz v6, :cond_7

    .line 332
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 334
    :cond_7
    if-eqz v5, :cond_2

    .line 335
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 337
    :catch_2
    move-exception v10

    goto :goto_2

    .line 330
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v9

    .line 331
    :goto_3
    if-eqz v6, :cond_8

    .line 332
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 334
    :cond_8
    if-eqz v5, :cond_9

    .line 335
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 338
    :cond_9
    :goto_4
    throw v9

    .line 337
    :catch_3
    move-exception v10

    goto :goto_4

    .line 330
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #f:Ljava/io/File;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 337
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #f:Ljava/io/File;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 327
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private getIntFromElement(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 3
    .parameter "element"
    .parameter "key"
    .parameter "dftValue"

    .prologue
    .line 268
    move v0, p3

    .line 270
    .local v0, ret:I
    :try_start_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 169
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v3, 0x7f030011

    invoke-static {v2, v3, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    .line 171
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, editView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const v2, 0x7f020040

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    .line 181
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method public static updateBackup(Landroid/content/Context;)V
    .locals 29
    .parameter "context"

    .prologue
    .line 345
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 351
    .local v4, CLOCK_GADGET_ARR:[I
    const-string v5, "clock_changed_time"

    .line 353
    .local v5, CLOCK_PREFIX:Ljava/lang/String;
    move-object v6, v4

    .local v6, arr$:[I
    array-length v0, v6

    move/from16 v20, v0

    .local v20, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v6           #arr$:[I
    .end local v12           #i$:I
    .end local v20           #len$:I
    .local v13, i$:I
    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_3

    aget v11, v6, v13

    .line 354
    .local v11, gadgetId:I
    new-instance v8, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-direct {v8, v11}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(I)V

    .line 355
    .local v8, backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "clock_changed_time_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 357
    .local v17, key:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v9, dir:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-nez v24, :cond_1

    .line 353
    .end local v13           #i$:I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .restart local v12       #i$:I
    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-wide/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 363
    .local v18, lastModified:J
    invoke-virtual {v8}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v23

    .line 364
    .local v23, prefix:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .local v7, arr$:[Ljava/io/File;
    array-length v0, v7

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_1
    move/from16 v0, v21

    if-ge v12, v0, :cond_0

    aget-object v10, v7, v12

    .line 365
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    .line 366
    .local v22, name:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    cmp-long v24, v24, v18

    if-gez v24, :cond_2

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 367
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 369
    .local v16, idStr:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 370
    .local v14, id:J
    invoke-virtual {v8, v14, v15}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    sget-object v24, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->TAG:Ljava/lang/String;

    const-string v25, "delete gadget config id=%d, path=%s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v14           #id:J
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 364
    .end local v16           #idStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 379
    .end local v7           #arr$:[Ljava/io/File;
    .end local v8           #backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    .end local v9           #dir:Ljava/io/File;
    .end local v10           #f:Ljava/io/File;
    .end local v11           #gadgetId:I
    .end local v12           #i$:I
    .end local v17           #key:Ljava/lang/String;
    .end local v18           #lastModified:J
    .end local v21           #len$:I
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #prefix:Ljava/lang/String;
    .restart local v13       #i$:I
    :cond_3
    return-void

    .line 372
    .end local v13           #i$:I
    .restart local v7       #arr$:[Ljava/io/File;
    .restart local v8       #backup:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
    .restart local v9       #dir:Ljava/io/File;
    .restart local v10       #f:Ljava/io/File;
    .restart local v11       #gadgetId:I
    .restart local v12       #i$:I
    .restart local v16       #idStr:Ljava/lang/String;
    .restart local v17       #key:Ljava/lang/String;
    .restart local v18       #lastModified:J
    .restart local v21       #len$:I
    .restart local v22       #name:Ljava/lang/String;
    .restart local v23       #prefix:Ljava/lang/String;
    :catch_0
    move-exception v24

    goto :goto_2

    .line 345
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    return-object v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onClick(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "miui.app.resourcebrowser.TRACK_ID"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "android.intent.extra.SHOW_COMPONENT_NAME"

    const-string v2, "clock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "android.intent.extra.SHOW_COMPONENT_SIZE"

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "miui.app.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->loadConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mRequestCode:I

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/LauncherApplication;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 296
    :goto_0
    return-void

    .line 293
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/LauncherApplication;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onCreate()V

    .line 77
    iget v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 78
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->setupViews()V

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/Clock;->init()V

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 87
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    return-void

    .line 84
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_0
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onDeleted()V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 98
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 119
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->onResume()V

    .line 124
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->resume()V

    .line 129
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 137
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Clock;->pause()V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 146
    :cond_0
    return-void
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 7
    .parameter "config"

    .prologue
    .line 157
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, dst:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, entryName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    invoke-virtual {v3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, systemTheme:Ljava/lang/String;
    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->extractClock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget;->saveConfig(Ljava/lang/String;)Z

    move-result v3

    .line 165
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateActualGadget()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->prepareBackup(Landroid/content/Context;J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    sget-object v7, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->TAG:Ljava/lang/String;

    const-string v8, "prepare back up failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mBackupManager:Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;

    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getItemId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, backup:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Utils;->parseManifestInZip(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 194
    .local v4, root:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_b

    .line 195
    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, type:Ljava/lang/String;
    const-string v7, "flip"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 197
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    const v8, 0x7f030012

    invoke-static {v7, v8, v11}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 202
    :goto_0
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 203
    instance-of v7, v6, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v7, :cond_1

    move-object v7, v6

    .line 204
    check-cast v7, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-interface {v7, v0}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->initConfig(Ljava/lang/String;)V

    .line 210
    .end local v5           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 211
    .local v2, old:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v2, :cond_5

    .line 212
    move-object v3, v2

    .line 213
    .local v3, oldGadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 214
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 216
    :cond_2
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 217
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 219
    :cond_3
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 220
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 222
    :cond_4
    check-cast v2, Landroid/view/View;

    .end local v2           #old:Lcom/miui/home/launcher/gadget/Gadget;
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->removeView(Landroid/view/View;)V

    .line 225
    .end local v3           #oldGadget:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_5
    instance-of v7, v6, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v7, :cond_c

    .line 226
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->addView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, v4, v6}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->adjustByAttributes(Lorg/w3c/dom/Element;Landroid/view/View;)V

    .line 229
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mEditView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    move-object v1, v6

    .line 231
    check-cast v1, Lcom/miui/home/launcher/gadget/Gadget;

    .line 232
    .local v1, newGadget:Lcom/miui/home/launcher/gadget/Gadget;
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    .line 233
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 235
    :cond_6
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    .line 236
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 238
    :cond_7
    iget v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    .line 239
    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 242
    :cond_8
    instance-of v7, v1, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v7, :cond_9

    .line 243
    iget-object v8, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    move-object v7, v1

    check-cast v7, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    invoke-virtual {v8, v7}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 245
    :cond_9
    iput-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 251
    .end local v1           #newGadget:Lcom/miui/home/launcher/gadget/Gadget;
    :goto_2
    return-void

    .line 199
    .restart local v5       #type:Ljava/lang/String;
    :cond_a
    new-instance v6, Lcom/miui/home/launcher/gadget/AwesomeClock;

    .end local v6           #view:Landroid/view/View;
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/miui/home/launcher/gadget/AwesomeClock;-><init>(Landroid/content/Context;)V

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0

    .line 207
    .end local v5           #type:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mErrorDisplay:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 247
    :cond_c
    iget-object v7, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mClock:Lcom/miui/home/launcher/gadget/Clock;

    invoke-virtual {v7, v11}, Lcom/miui/home/launcher/gadget/Clock;->setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V

    .line 248
    iput-object v11, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/miui/home/launcher/gadget/Gadget;

    goto :goto_2
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 150
    const-string v1, "miui.app.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, newResource:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->saveConfig(Ljava/lang/String;)Z

    .line 152
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 153
    return-void
.end method
