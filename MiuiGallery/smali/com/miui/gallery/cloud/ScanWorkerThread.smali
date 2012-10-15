.class public Lcom/miui/gallery/cloud/ScanWorkerThread;
.super Ljava/lang/Thread;
.source "ScanWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;,
        Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    }
.end annotation


# static fields
.field private static sRequestRun:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertDownloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;",
            ">;"
        }
    .end annotation
.end field

.field private mDBCloudMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/DBCloud;",
            ">;"
        }
    .end annotation
.end field

.field private mForceStop:Z

.field private mMicroThumbnailNotNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mMicroThumbnailNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDeleteFromMicroThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDeleteFromThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedInsertDB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedSyncAgain:Z

.field private mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedUpdateThumbnailNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mSubFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailNotNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailNull:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    sput v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 80
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    .line 58
    iput-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedSyncAgain:Z

    .line 81
    iput-object p1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNull:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNotNull:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNull:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNotNull:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mSubFiles:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromMicroThumbnail:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromThumbnail:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mDBCloudMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mConvertDownloadList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public static canStart()Z
    .locals 8

    .prologue
    .line 101
    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getLastSlowScanTime()J

    move-result-wide v2

    .line 102
    .local v2, lastWrite:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    .local v0, current:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v4, v0, v2

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 106
    :cond_0
    const/4 v4, 0x1

    .line 109
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 127
    iget-object v0, p1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method private createKey(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doConvertDownloadFiles()V
    .locals 13

    .prologue
    .line 328
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "groupId"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "microthumbfile"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "thumbnailFile"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "downloadFile"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thumbnailFile like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "microthumbfile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/gallery/cloud/CloudUtils;->DOWNLOAD_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 342
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_6

    .line 348
    new-instance v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;

    invoke-direct {v6, p0}, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;-><init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V

    .line 349
    .local v6, convertDownload:Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->recordID:J

    .line 350
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->groupID:I

    .line 351
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->microThumbnailFile:Ljava/lang/String;

    .line 352
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->thumbnailFile:Ljava/lang/String;

    .line 353
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->downloadFile:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mConvertDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 356
    .end local v6           #convertDownload:Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;
    :catch_0
    move-exception v11

    .line 357
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    if-eqz v10, :cond_2

    .line 360
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mConvertDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v7, convertMicroIds:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v9, convertThumbnailIds:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mConvertDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;

    .line 373
    .restart local v6       #convertDownload:Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;
    iget v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->groupID:I

    iget-object v1, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->downloadFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/gallery/cloud/CloudUtils;->convertOneDownload(ILjava/lang/String;)I

    move-result v8

    .line 376
    .local v8, convertResult:I
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_4

    .line 377
    iget-wide v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->recordID:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_4
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_5

    .line 380
    iget-wide v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->recordID:J

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_5
    const/4 v0, 0x3

    if-ne v8, v0, :cond_3

    .line 383
    iget-object v0, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->downloadFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    .line 384
    const-string v0, "ScanWorkerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "covert all success, convertResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delete download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->downloadFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 359
    .end local v6           #convertDownload:Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;
    .end local v7           #convertMicroIds:Ljava/lang/StringBuilder;
    .end local v8           #convertResult:I
    .end local v9           #convertThumbnailIds:Ljava/lang/StringBuilder;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v10, :cond_2

    .line 360
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 359
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    .line 360
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 389
    .restart local v7       #convertMicroIds:Ljava/lang/StringBuilder;
    .restart local v9       #convertThumbnailIds:Ljava/lang/StringBuilder;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 390
    const-string v0, "microthumbfile"

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->execConvertDownloadSQL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 395
    const-string v0, "microthumbfile"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->execConvertDownloadSQL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 401
    :cond_9
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    const-string v0, "thumbnailFile"

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->execConvertDownloadSQL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 407
    const-string v0, "thumbnailFile"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v9, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->execConvertDownloadSQL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_0
.end method

.method private doDeleteInDownloadFolder(II)V
    .locals 8
    .parameter "groupID"
    .parameter "doType"

    .prologue
    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, needDeleteFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    packed-switch p2, :pswitch_data_0

    .line 310
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 322
    :cond_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromMicroThumbnail:Ljava/util/HashMap;

    .line 300
    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromThumbnail:Ljava/util/HashMap;

    .line 304
    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 316
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    .line 319
    .local v1, file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    const-string v4, "ScanWorkerThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doDeleteInDownloadFolder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dateModified:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v4, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private doInsertDBToUpload(I)V
    .locals 8
    .parameter "groupID"

    .prologue
    const/4 v7, 0x1

    .line 278
    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 292
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 285
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    .line 288
    .local v1, file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    const-string v3, "ScanWorkerThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInsertDBToUpload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dateModified:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    invoke-static {v3, v4, p1, v7, v7}, Lmiui/provider/GalleryCloudUtils;->saveToCloudDBWithoutSync(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private doUpdateLocalDB(II)V
    .locals 16
    .parameter "groupID"
    .parameter "doType"

    .prologue
    .line 437
    const/4 v9, 0x0

    .line 438
    .local v9, needUpdateNullFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/4 v1, 0x0

    .line 439
    .local v1, columnName:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 455
    :goto_0
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 502
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 441
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    .line 442
    const-string v1, "microthumbfile"

    .line 443
    goto :goto_0

    .line 446
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    .line 447
    const-string v1, "thumbnailFile"

    .line 448
    goto :goto_0

    .line 459
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, ""

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v7, inStrBuilder:Ljava/lang/StringBuilder;
    const-string v12, "_id in ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 467
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;>;"
    const/4 v5, 0x1

    .line 468
    .local v5, firstTime:Z
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 469
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 470
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    .line 472
    .local v4, file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mDBCloudMap:Ljava/util/HashMap;

    iget-object v13, v4, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/data/DBCloud;

    invoke-static {v12}, Lcom/miui/gallery/cloud/CloudDownloadArrayList;->addItemToBothList(Lcom/miui/gallery/data/DBCloud;)V

    .line 474
    const-string v12, "ScanWorkerThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doUpdateLocalDB:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", columnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-nez v5, :cond_2

    .line 476
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    iget-wide v12, v4, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->recordID:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 479
    const/4 v5, 0x0

    .line 480
    goto :goto_2

    .line 483
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    .end local v4           #file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_3
    const-string v12, ")"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 486
    .local v6, inStr:Ljava/lang/String;
    const/4 v10, 0x0

    .line 489
    .local v10, rowCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "groupId"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 499
    :goto_3
    if-nez v10, :cond_0

    .line 500
    const-string v12, "ScanWorkerThread"

    const-string v13, "the count of deleted rows is zero"

    invoke-static {v12, v13}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private execConvertDownloadSQL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)V
    .locals 5
    .parameter "columnName"
    .parameter "folderPath"
    .parameter "convertIds"
    .parameter "groupId"

    .prologue
    .line 417
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 418
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " UPDATE cloud SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    const-string v3, "execSQL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 433
    return-void
.end method

.method private findDBAndDownloadFolderDelta(II)V
    .locals 30
    .parameter "groupID"
    .parameter "doType"

    .prologue
    .line 506
    const/16 v17, 0x0

    .line 507
    .local v17, needUpdateNullFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/16 v16, 0x0

    .line 508
    .local v16, needDeleteFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/4 v3, 0x0

    .line 509
    .local v3, DBNotNull:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/4 v4, 0x0

    .line 510
    .local v4, DBNull:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/4 v7, 0x0

    .line 511
    .local v7, downloadPath:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 533
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/CloudUtils;->getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v20

    .line 534
    .local v20, sourcePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v6, downloadFolder:Ljava/io/File;
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .local v19, sourceFolder:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    .line 537
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 647
    .end local v6           #downloadFolder:Ljava/io/File;
    .end local v19           #sourceFolder:Ljava/io/File;
    .end local v20           #sourcePath:Ljava/lang/String;
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 513
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v7

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromMicroThumbnail:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNotNull:Ljava/util/HashMap;

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNull:Ljava/util/HashMap;

    .line 518
    goto :goto_0

    .line 521
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v7

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromThumbnail:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNotNull:Ljava/util/HashMap;

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNull:Ljava/util/HashMap;

    .line 526
    goto :goto_0

    .line 541
    .restart local v6       #downloadFolder:Ljava/io/File;
    .restart local v19       #sourceFolder:Ljava/io/File;
    .restart local v20       #sourcePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 542
    .local v10, downloadSubFiles:[Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v22

    .line 543
    .local v22, sourceSubFiles:[Ljava/io/File;
    if-eqz v10, :cond_2

    array-length v0, v10

    move/from16 v24, v0

    if-nez v24, :cond_4

    :cond_2
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 545
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 550
    :cond_4
    new-instance v9, Ljava/util/HashMap;

    const/16 v24, 0x64

    move/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 551
    .local v9, downloadSubFileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    if-eqz v10, :cond_6

    .line 552
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_6

    .line 553
    aget-object v8, v10, v14

    .line 555
    .local v8, downloadSubFile:Ljava/io/File;
    invoke-static {v8}, Lmiui/os/ExtraFileUtils;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/cloud/CloudUtils;->isSuffixNotNeedDelete(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 552
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 558
    :cond_5
    new-instance v18, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;-><init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V

    .line 559
    .local v18, oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    aget-object v24, v10, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    .line 560
    aget-object v24, v10, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    .line 561
    aget-object v24, v10, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    .line 562
    aget-object v24, v10, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 568
    .end local v8           #downloadSubFile:Ljava/io/File;
    .end local v14           #i:I
    .end local v18           #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_6
    new-instance v21, Ljava/util/HashMap;

    const/16 v24, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 569
    .local v21, sourceSubFileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    if-eqz v22, :cond_7

    .line 570
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v14, v0, :cond_7

    .line 571
    new-instance v18, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;-><init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V

    .line 572
    .restart local v18       #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    aget-object v24, v22, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    .line 573
    aget-object v24, v22, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    .line 574
    aget-object v24, v22, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    .line 575
    aget-object v24, v22, v14

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 581
    .end local v14           #i:I
    .end local v18           #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 582
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;>;"
    :cond_8
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 583
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 584
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    const/4 v13, 0x0

    .line 585
    .local v13, filePath:Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 599
    :goto_6
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v11

    .line 600
    .local v11, downloadTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    if-eqz v11, :cond_a

    iget-object v0, v11, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 602
    iget-object v0, v11, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    move-wide/from16 v26, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    move-wide/from16 v28, v0

    invoke-static/range {v25 .. v29}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/lang/String;JJ)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 605
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v11, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->canFoundInDB:Z

    goto :goto_5

    .line 587
    .end local v11           #downloadTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :pswitch_3
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->microThumbnailFile:Ljava/lang/String;

    .line 588
    goto :goto_6

    .line 591
    :pswitch_4
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->thumbnailFile:Ljava/lang/String;

    .line 592
    goto :goto_6

    .line 609
    .restart local v11       #downloadTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_9
    iget-object v0, v11, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/miui/gallery/util/GalleryUtils;->deleteFile(Ljava/lang/String;)V

    .line 610
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 613
    :cond_a
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v23

    .line 614
    .local v23, sourceTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    move-wide/from16 v26, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    move-wide/from16 v28, v0

    invoke-static/range {v25 .. v29}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/lang/String;JJ)Z

    move-result v24

    if-nez v24, :cond_8

    .line 623
    :cond_b
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 629
    .end local v11           #downloadTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    .end local v13           #filePath:Ljava/lang/String;
    .end local v23           #sourceTemp:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_c
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 630
    :cond_d
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 631
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 632
    .restart local v12       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v5

    .line 633
    .local v5, canFoundFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    if-eqz v5, :cond_d

    iget-object v0, v5, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    move-wide/from16 v26, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    move-wide/from16 v28, v0

    invoke-static/range {v25 .. v29}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/lang/String;JJ)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 635
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v5, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->canFoundInDB:Z

    goto :goto_7

    .line 640
    .end local v5           #canFoundFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    :cond_e
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 641
    :cond_f
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 642
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 643
    .restart local v12       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->canFoundInDB:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    .line 644
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v24

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 585
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private findFilesNotInDB(I)V
    .locals 8
    .parameter "groupID"

    .prologue
    .line 244
    invoke-static {p1}, Lcom/miui/gallery/cloud/CloudUtils;->getExternalStoragePathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, folderPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 251
    const-string v6, "ScanWorkerThread"

    const-string v7, "The camera/screenshot is a file but not folder"

    invoke-static {v6, v7}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 257
    .local v5, subFiles:[Ljava/io/File;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-eqz v6, :cond_0

    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, found:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    iget-boolean v6, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v6, :cond_0

    .line 264
    aget-object v6, v5, v4

    invoke-static {v6, p1}, Lcom/miui/gallery/cloud/CloudUtils;->canUpload(Ljava/io/File;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    aget-object v6, v5, v4

    invoke-direct {p0, v6}, Lcom/miui/gallery/cloud/ScanWorkerThread;->findOneFileInSet(Ljava/io/File;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v3

    .line 266
    if-nez v3, :cond_3

    .line 267
    new-instance v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    invoke-direct {v0, p0}, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;-><init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V

    .line 268
    .local v0, file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    .line 269
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->filePath:Ljava/lang/String;

    .line 270
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    .line 271
    iget-object v6, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v0           #file:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private findOneFileInSet(Ljava/io/File;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    .locals 6
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x0

    .line 223
    .local v0, ret:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    iget-object v2, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNull:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNotNull:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    move-result-object v0

    .line 229
    :cond_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 238
    .end local v0           #ret:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_1
    :goto_0
    return-object v0

    .line 234
    .restart local v0       #ret:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_2
    iget-wide v2, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    iget-wide v4, v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    invoke-static {p1, v2, v3, v4, v5}, Lcom/miui/gallery/cloud/CloudUtils;->isFileCorrect(Ljava/io/File;JJ)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 235
    goto :goto_0
.end method

.method private getAllFilesInCloudDB(I)Z
    .locals 12
    .parameter "groupID"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v10

    .line 214
    :goto_0
    return v0

    .line 179
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_5

    .line 180
    new-instance v7, Lcom/miui/gallery/data/DBCloud;

    invoke-direct {v7, v6}, Lcom/miui/gallery/data/DBCloud;-><init>(Landroid/database/Cursor;)V

    .line 181
    .local v7, dbCloud:Lcom/miui/gallery/data/DBCloud;
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mDBCloudMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    invoke-direct {v9, p0}, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;-><init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V

    .line 184
    .local v9, oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->recordID:J

    .line 185
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->fileName:Ljava/lang/String;

    .line 186
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getMicroThumbnailFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->microThumbnailFile:Ljava/lang/String;

    .line 187
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getThumbnailFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->thumbnailFile:Ljava/lang/String;

    .line 188
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getSize()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->size:J

    .line 189
    invoke-virtual {v7}, Lcom/miui/gallery/data/DBCloud;->getDateModified()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->dateModified:J

    .line 191
    iget-object v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->microThumbnailFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNull:Ljava/util/HashMap;

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :goto_2
    iget-object v0, v9, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;->thumbnailFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNull:Ljava/util/HashMap;

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    .end local v7           #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .end local v9           #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :catch_0
    move-exception v8

    .line 207
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    move v0, v11

    .line 214
    goto :goto_0

    .line 194
    .restart local v7       #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .restart local v9       #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNotNull:Ljava/util/HashMap;

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 209
    .end local v7           #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .end local v9           #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 203
    .restart local v7       #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .restart local v9       #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNotNull:Ljava/util/HashMap;

    invoke-direct {p0, v9}, Lcom/miui/gallery/cloud/ScanWorkerThread;->createKey(Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 209
    .end local v7           #dbCloud:Lcom/miui/gallery/data/DBCloud;
    .end local v9           #oneFile:Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    :cond_5
    if-eqz v6, :cond_1

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method private getIfContainsKey(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getKey(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;

    return-object v0
.end method

.method private getKey(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/gallery/cloud/ScanWorkerThread$ScanFileDB;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private processOneFolder(I)V
    .locals 3
    .parameter "groupID"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 650
    invoke-direct {p0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->resetAllData()V

    .line 652
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->getAllFilesInCloudDB(I)Z

    .line 656
    :cond_0
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_1

    .line 658
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->findFilesNotInDB(I)V

    .line 662
    :cond_1
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_2

    .line 663
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->findDBAndDownloadFolderDelta(II)V

    .line 665
    :cond_2
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_3

    .line 666
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->findDBAndDownloadFolderDelta(II)V

    .line 669
    :cond_3
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_4

    .line 670
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doInsertDBToUpload(I)V

    .line 673
    :cond_4
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_5

    .line 674
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doDeleteInDownloadFolder(II)V

    .line 676
    :cond_5
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_6

    .line 677
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doDeleteInDownloadFolder(II)V

    .line 680
    :cond_6
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_7

    .line 681
    invoke-direct {p0, p1, v1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doUpdateLocalDB(II)V

    .line 683
    :cond_7
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_8

    .line 684
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doUpdateLocalDB(II)V

    .line 687
    :cond_8
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v0, :cond_9

    .line 688
    invoke-direct {p0, p1}, Lcom/miui/gallery/cloud/ScanWorkerThread;->resetSyncFlag(I)V

    .line 690
    :cond_9
    return-void
.end method

.method private resetAllData()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mMicroThumbnailNotNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mThumbnailNotNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mSubFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromMicroThumbnail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 120
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 121
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedDeleteFromThumbnail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 122
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mDBCloudMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    return-void
.end method

.method private resetSyncFlag(I)V
    .locals 4
    .parameter "groupID"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 151
    .local v0, needSync:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 152
    const-string v1, "ScanWorkerThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "need insertDB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedInsertDB:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";need update thumbnail null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";need update microThumbnail null? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedUpdateMicroThumbnailNull:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedSyncAgain:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedSyncAgain:Z

    .line 157
    return-void

    .line 147
    .end local v0           #needSync:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private triggerSyncIfNeeded()V
    .locals 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedSyncAgain:Z

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "ScanWorkerThread"

    const-string v1, "we trigger another sync"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/provider/GalleryCloudUtils;->requestSync(Landroid/content/Context;)V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mNeedSyncAgain:Z

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    .line 98
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 704
    :goto_0
    sget v4, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    .line 705
    sget v4, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    if-le v4, v8, :cond_0

    .line 706
    const-string v4, "ScanWorkerThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanner request run = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :goto_1
    return-void

    .line 710
    :cond_0
    const-string v4, "ScanWorkerThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start scan name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 715
    .local v2, start:J
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v4, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->doConvertDownloadFiles()V

    .line 720
    :cond_1
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v4, :cond_2

    .line 721
    invoke-direct {p0, v8}, Lcom/miui/gallery/cloud/ScanWorkerThread;->processOneFolder(I)V

    .line 724
    :cond_2
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v4, :cond_3

    .line 725
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/miui/gallery/cloud/ScanWorkerThread;->processOneFolder(I)V

    .line 728
    :cond_3
    iget-boolean v4, p0, Lcom/miui/gallery/cloud/ScanWorkerThread;->mForceStop:Z

    if-nez v4, :cond_4

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 730
    .local v0, current:J
    invoke-static {v0, v1}, Lcom/miui/gallery/settings/PreferenceHelper;->setLastSlowScanTime(J)V

    .line 733
    .end local v0           #current:J
    :cond_4
    invoke-direct {p0}, Lcom/miui/gallery/cloud/ScanWorkerThread;->triggerSyncIfNeeded()V

    .line 734
    const-string v4, "ScanWorkerThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan end. time costing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget v4, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    if-le v4, v8, :cond_5

    .line 738
    sput v9, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    goto/16 :goto_0

    .line 741
    :cond_5
    sput v9, Lcom/miui/gallery/cloud/ScanWorkerThread;->sRequestRun:I

    .line 742
    const-string v4, "SyncStateManager"

    const-string v5, "slow scanner \u8fd0\u884c\u7ed3\u675f"

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
