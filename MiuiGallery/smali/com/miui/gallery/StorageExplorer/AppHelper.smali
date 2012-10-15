.class public final Lcom/miui/gallery/StorageExplorer/AppHelper;
.super Ljava/lang/Object;
.source "AppHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;,
        Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;
    }
.end annotation


# static fields
.field public static sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 405
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 406
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 407
    sget-object v0, Lcom/miui/gallery/StorageExplorer/AppHelper;->sSingleTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setThreadPriority(I)V

    .line 408
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method public static ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "message"
    .parameter "title"

    .prologue
    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->shouldMoveToThumbnail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->convertToCloudThumbnail(Ljava/lang/String;)V

    return-void
.end method

.method public static confirmDelete(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 5
    .parameter "context"
    .parameter "deleteListener"
    .parameter "deleteCount"

    .prologue
    const/4 v2, 0x1

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0048

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method

.method private static convertToCloudThumbnail(Ljava/lang/String;)V
    .locals 11
    .parameter "filePath"

    .prologue
    .line 288
    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->getCloudGroupIdByFilePath(Ljava/lang/String;)I

    move-result v2

    .line 289
    .local v2, groupID:I
    invoke-static {v2, p0}, Lcom/miui/gallery/cloud/CloudUtils;->convertOneDownload(ILjava/lang/String;)I

    move-result v4

    .line 290
    .local v4, ret:I
    invoke-static {p0}, Lmiui/os/ExtraFileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 293
    .local v5, thumbnailFilePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 294
    .local v3, microThumbnailFilePath:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 296
    .local v6, values:Landroid/content/ContentValues;
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_0

    .line 297
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    const-string v7, "thumbnailFile"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_1

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/miui/gallery/cloud/CloudUtils;->getMicroThumbnailFolderPathByCloudGroupId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v7, "microthumbfile"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lmiui/provider/GalleryCloudUtils;->CLOUD_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thumbnailFile = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " COLLATE NOCASE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createWallpaperIntent(ZLcom/miui/gallery/StorageExplorer/BaseMeta;)Landroid/content/Intent;
    .locals 2
    .parameter "forLockscreen"
    .parameter "meta"

    .prologue
    const/4 v0, 0x0

    .line 411
    iget-boolean v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    if-nez v1, :cond_0

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper;->prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/miui/gallery/StorageExplorer/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    if-nez p2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v4, Lcom/miui/gallery/StorageExplorer/AppHelper$1;

    invoke-direct {v4, p3, p0, p2}, Lcom/miui/gallery/StorageExplorer/AppHelper$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/miui/gallery/StorageExplorer/FileBucket;)V

    .line 213
    .local v4, delete:Ljava/lang/Runnable;
    invoke-interface {p2, p3}, Lcom/miui/gallery/StorageExplorer/FileBucket;->deleteMedias(Ljava/util/ArrayList;)V

    .line 215
    const/4 v1, 0x0

    const v2, 0x7f0d00f5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/StorageExplorer/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "context"
    .parameter "post"
    .parameter "bucket"
    .parameter
    .parameter "confirmMessageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Runnable;",
            "Lcom/miui/gallery/StorageExplorer/FileBucket;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/miui/gallery/StorageExplorer/FileBucket;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static deleteMediaItem(Landroid/app/Activity;Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
    .locals 2
    .parameter "activity"
    .parameter "localMediaItem"
    .parameter "deleteDatabaseInfo"

    .prologue
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p2}, Lcom/miui/gallery/StorageExplorer/AppHelper;->deleteMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V

    .line 233
    return-void
.end method

.method public static deleteMediaItems(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;)V
    .locals 4
    .parameter "activity"
    .parameter "folderPath"
    .parameter
    .parameter "deleteDatabaseInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaItem;",
            ">;",
            "Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaItem;>;"
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AppHelper$2;

    invoke-direct {v0, p2, p1}, Lcom/miui/gallery/StorageExplorer/AppHelper$2;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 260
    .local v0, delete:Ljava/lang/Runnable;
    new-instance v1, Lcom/miui/gallery/StorageExplorer/AppHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/gallery/StorageExplorer/AppHelper$3;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 273
    .local v1, runOnUiThread:Ljava/lang/Runnable;
    invoke-interface {p3}, Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;->delete()V

    .line 275
    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 277
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getSendIntent(Landroid/content/Context;Lcom/miui/gallery/data/MediaItem;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 7
    .parameter "context"
    .parameter "item"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, id:I
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 434
    const v0, 0x7f0d00fa

    .line 435
    const-string v3, "video/*"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :cond_0
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, title:Ljava/lang/String;
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    return-object v1

    .line 436
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 437
    const v0, 0x7f0d00f9

    .line 438
    const-string v3, "image/*"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static prepareWallpaper(ZLandroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "forLockscreen"
    .parameter "data"
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    if-eqz p0, :cond_0

    const-string v1, "save_lockscreen"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    return-object v0

    .line 422
    :cond_0
    const-string v1, "save_wallpaper"

    goto :goto_0
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/StorageExplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/StorageExplorer/FileInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v6, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-wide/16 v2, 0x0

    .line 89
    .local v2, totalFileSize:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 90
    .local v1, meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    iget-wide v7, v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mSize:J

    add-long/2addr v2, v7

    .line 91
    iget-object v7, v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/common/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 92
    .local v5, u:Landroid/net/Uri;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v1           #meta:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v5           #u:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/StorageExplorer/FileInfo;

    iget-object v7, v7, Lcom/miui/gallery/StorageExplorer/FileInfo;->mPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, type:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v6, v4, v2, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 100
    return-void

    .line 95
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    const-string v4, "image/*"

    goto :goto_1
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;Lcom/miui/gallery/data/DataManager;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "manager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;",
            "Lcom/miui/gallery/data/DataManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v8, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x0

    .line 65
    .local v7, type:I
    const-wide/16 v5, 0x0

    .line 67
    .local v5, totalFileSize:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/Path;

    .line 68
    .local v3, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getSupportedOperations(Lcom/miui/gallery/data/Path;)I

    move-result v4

    .line 69
    .local v4, support:I
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaType(Lcom/miui/gallery/data/Path;)I

    move-result v9

    or-int/2addr v7, v9

    .line 71
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_0

    .line 72
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getContentUriForExternal(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p2, v3}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    .line 74
    .local v2, obj:Lcom/miui/gallery/data/MediaObject;
    instance-of v9, v2, Lcom/miui/gallery/cloud/CloudMediaItem;

    if-eqz v9, :cond_1

    .line 75
    new-instance v9, Ljava/io/File;

    check-cast v2, Lcom/miui/gallery/cloud/CloudMediaItem;

    .end local v2           #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v2}, Lcom/miui/gallery/cloud/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_0

    .line 76
    .restart local v2       #obj:Lcom/miui/gallery/data/MediaObject;
    :cond_1
    instance-of v9, v2, Lcom/miui/gallery/data/MediaItem;

    if-eqz v9, :cond_0

    .line 77
    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .end local v2           #obj:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaItem;->getSize()J

    move-result-wide v9

    add-long/2addr v5, v9

    goto :goto_0

    .line 82
    .end local v3           #path:Lcom/miui/gallery/data/Path;
    .end local v4           #support:I
    :cond_2
    invoke-static {v7}, Lcom/miui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, mimeType:Ljava/lang/String;
    invoke-static {p0, v8, v1, v5, v6}, Lcom/miui/gallery/StorageExplorer/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V

    .line 84
    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "mimeType"
    .parameter "totalFileSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const v2, 0x7f0d00e6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0111

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/gallery/StorageExplorer/AppHelper;->ShowInfoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local p0
    :goto_0
    return-void

    .line 110
    .restart local p0
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 112
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 119
    :goto_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const v2, 0x7f0d0112

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, title:Ljava/lang/String;
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    goto :goto_0

    .line 115
    .end local v1           #title:Ljava/lang/String;
    .restart local p0
    :cond_1
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static shouldMoveToThumbnail(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 317
    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/CloudUtils;->MICRO_THUMBNAIL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/gallery/cloud/CloudUtils;->isFileInCloudDB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "preExecute"
    .parameter "background"
    .parameter "postExecute"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 392
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    if-nez p2, :cond_1

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 395
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 396
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 397
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 399
    new-instance v1, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;

    invoke-direct {v1, v0, p3, p4, p5}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;-><init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/StorageExplorer/AppHelper$ProgressDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
