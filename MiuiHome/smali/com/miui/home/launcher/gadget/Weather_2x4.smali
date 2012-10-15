.class public Lcom/miui/home/launcher/gadget/Weather_2x4;
.super Landroid/widget/FrameLayout;
.source "Weather_2x4.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Gadget;


# static fields
.field private static final EXTERNAL_PACKAGE_FILE_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static mDownloadTaskId:J


# instance fields
.field private mEditView:Landroid/view/View;

.field private mGadget:Lcom/miui/home/launcher/gadget/Gadget;

.field private mIsInEdit:Z

.field private mThemeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/Weather_2x4;->SDCARD_PATH:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/home/launcher/gadget/Weather_2x4;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MIUI/weather/gadget/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "weather_1_0.mtz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/Weather_2x4;->EXTERNAL_PACKAGE_FILE_PATH:Ljava/lang/String;

    .line 49
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mDownloadTaskId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->showDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/Weather_2x4;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->isInDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Weather_2x4;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/home/launcher/gadget/Weather_2x4;->EXTERNAL_PACKAGE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->openDownloadDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/Weather_2x4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/gadget/Weather_2x4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/Weather_2x4;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Weather_2x4;->updateType(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->setupView()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/gadget/Weather_2x4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->download()V

    return-void
.end method

.method static synthetic access$902(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-wide p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mDownloadTaskId:J

    return-wide p0
.end method

.method private addGadget()V
    .locals 4

    .prologue
    .line 219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "type_id"

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTypeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v1, "widget_id"

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Weather$Widget;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static deleteConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 272
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    return-void
.end method

.method private deleteTypeConfig()V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteZipFile()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getMtzFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, file:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 263
    return-void
.end method

.method private download()V
    .locals 8

    .prologue
    .line 409
    const-string v0, "http://apkupdate.miui.com/mihome/weather/gadget/weather_1_0.mtz"

    .line 410
    .local v0, addressString:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 413
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .local v4, request:Landroid/app/DownloadManager$Request;
    const-string v6, "MIUI/weather/gadget/"

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 421
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 422
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 425
    :cond_0
    :try_start_1
    const-string v6, "MIUI/weather/gadget/"

    const-string v7, "weather_1_0.mtz"

    invoke-virtual {v4, v6, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    const-string v6, "weather_1_0.mtz"

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 432
    const-string v6, "http://apkupdate.miui.com/mihome/weather/gadget/"

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 433
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 435
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 437
    .local v3, manager:Landroid/app/DownloadManager;
    new-instance v6, Lcom/miui/home/launcher/gadget/Weather_2x4$6;

    const-string v7, "weather download"

    invoke-direct {v6, p0, v7, v3, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4$6;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;Ljava/lang/String;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)V

    invoke-virtual {v6}, Lcom/miui/home/launcher/gadget/Weather_2x4$6;->start()V

    .line 442
    .end local v2           #folder:Ljava/io/File;
    .end local v3           #manager:Landroid/app/DownloadManager;
    .end local v4           #request:Landroid/app/DownloadManager$Request;
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #folder:Ljava/io/File;
    .restart local v4       #request:Landroid/app/DownloadManager$Request;
    :catch_1
    move-exception v1

    .line 427
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private getPrefKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weather_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThemeType()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 242
    :goto_0
    return v1

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getTypeId()J
    .locals 2

    .prologue
    .line 215
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private isInDownloading()Z
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    sget-wide v6, Lcom/miui/home/launcher/gadget/Weather_2x4;->mDownloadTaskId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_0

    .line 377
    :goto_0
    return v4

    .line 351
    :cond_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 352
    .local v2, query:Landroid/app/DownloadManager$Query;
    new-array v6, v5, [J

    sget-wide v7, Lcom/miui/home/launcher/gadget/Weather_2x4;->mDownloadTaskId:J

    aput-wide v7, v6, v4

    invoke-virtual {v2, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 354
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 356
    .local v1, manager:Landroid/app/DownloadManager;
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 358
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    :try_start_1
    const-string v6, "status"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 362
    .local v3, status:I
    if-eq v3, v5, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 372
    :cond_1
    if-eqz v0, :cond_2

    .line 373
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v4, v5

    goto :goto_0

    .line 367
    .end local v3           #status:I
    :catch_0
    move-exception v5

    .line 372
    :cond_3
    if-eqz v0, :cond_4

    .line 373
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_4
    sput-wide v9, Lcom/miui/home/launcher/gadget/Weather_2x4;->mDownloadTaskId:J

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 373
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method private openDownloadDialog()V
    .locals 7

    .prologue
    .line 382
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0076

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0077

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "weather_1_0.mtz"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2.15MB"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0078

    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_2x4$5;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4$5;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0039

    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_2x4$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4$4;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 405
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 406
    return-void
.end method

.method private removeGadget()V
    .locals 7

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Weather$Widget;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type_id=? AND widget_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTypeId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setupView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/16 v6, 0x14

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, isChangeGadget:Z
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 155
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 156
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 158
    const/4 v1, 0x1

    .line 159
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4;->removeView(Landroid/view/View;)V

    .line 162
    :cond_0
    iget v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    if-nez v4, :cond_4

    .line 163
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;-><init>(Landroid/content/Context;)V

    .local v3, view:Landroid/view/View;
    move-object v4, v3

    .line 164
    check-cast v4, Lcom/miui/home/launcher/gadget/Gadget;

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 165
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4;->addView(Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 176
    new-instance v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, editView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x35

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const v4, 0x7f020040

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    .line 183
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4;->addView(Landroid/view/View;)V

    .line 186
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    new-instance v5, Lcom/miui/home/launcher/gadget/Weather_2x4$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4$1;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .end local v0           #editView:Landroid/widget/ImageView;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 196
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 197
    if-eqz v1, :cond_2

    .line 198
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 200
    :cond_2
    iget-boolean v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mIsInEdit:Z

    if-eqz v4, :cond_3

    .line 201
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v4}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 203
    :cond_3
    return-void

    .line 169
    .end local v3           #view:Landroid/view/View;
    :cond_4
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getMtzFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miui/home/launcher/gadget/Weather_2x4_custom;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v3       #view:Landroid/view/View;
    move-object v4, v3

    .line 170
    check-cast v4, Lcom/miui/home/launcher/gadget/Gadget;

    iput-object v4, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    .line 171
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 278
    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, types:[Ljava/lang/String;
    array-length v3, v4

    .line 281
    .local v3, size:I
    iget v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    .line 283
    .local v2, selectedIndex:I
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0075

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0039

    new-instance v7, Lcom/miui/home/launcher/gadget/Weather_2x4$2;

    invoke-direct {v7, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4$2;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 295
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/miui/home/launcher/gadget/Weather_2x4$3;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4$3;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4;)V

    invoke-virtual {v1, v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 343
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 344
    return-void
.end method

.method private updateType(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method protected getEditView()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mEditView:Landroid/view/View;

    return-object v0
.end method

.method public getItemId()J
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 211
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getMtzFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mContext:Landroid/content/Context;

    const-string v2, "weather_bak"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weather_2x4_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weather.mtz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->addGadget()V

    .line 76
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getThemeType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mThemeType:I

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->setupView()V

    .line 64
    return-void
.end method

.method public onDeleted()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->removeGadget()V

    .line 82
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->deleteTypeConfig()V

    .line 83
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->deleteZipFile()V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    .line 70
    return-void
.end method

.method public onEditDisable()V
    .locals 2

    .prologue
    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mIsInEdit:Z

    .line 120
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 123
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public onEditNormal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mIsInEdit:Z

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v1}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 91
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    .line 103
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    .line 109
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4;->mGadget:Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method
