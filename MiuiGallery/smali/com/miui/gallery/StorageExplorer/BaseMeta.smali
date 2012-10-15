.class public Lcom/miui/gallery/StorageExplorer/BaseMeta;
.super Ljava/lang/Object;
.source "BaseMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;,
        Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;,
        Lcom/miui/gallery/StorageExplorer/BaseMeta$BaseMetaComparator;
    }
.end annotation


# static fields
.field private static sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;


# instance fields
.field protected mAllDataLoaded:Z

.field public mDateModified:J

.field public mDateTaken:J

.field public mDuration:J

.field public mHasExifThumbnail:Z

.field protected mHeight:I

.field public mIsGif:Z

.field public mIsImage:Z

.field public mIsJpeg:Z

.field public mIsVideo:Z

.field public mLatitude:D

.field public mLongitude:D

.field protected mOrientation:I

.field public mPath:Ljava/lang/String;

.field public mSize:J

.field public mTitle:Ljava/lang/String;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 333
    new-instance v0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    .line 334
    sget-object v0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 335
    sget-object v0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 336
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/miui/gallery/StorageExplorer/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsVideo:Z

    .line 63
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    .line 64
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsJpeg:Z

    .line 65
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsGif:Z

    .line 66
    return-void
.end method

.method private getVideoThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, key:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    .end local v0           #file:Ljava/io/File;
    .end local v1           #key:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 247
    :catch_0
    move-exception v2

    .line 250
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static pushLoadAllDataTask(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V
    .locals 2
    .parameter "meta"
    .parameter "listener"
    .parameter "view"

    .prologue
    .line 293
    new-instance v0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;-><init>(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 294
    .local v0, task:Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;
    if-eqz p2, :cond_0

    .line 295
    sget-object v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBack(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->pushBackAsLow(Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;)V

    goto :goto_0
.end method

.method public static setMaxTaskNum(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 339
    sget-object v0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->clearPendingTask()V

    .line 340
    sget-object v0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->sLoadAllDataTaskManager:Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;

    invoke-virtual {v0, p0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 341
    return-void
.end method


# virtual methods
.method protected clearModifiedFlags()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mAllDataLoaded:Z

    .line 81
    return-void
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 156
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHeight:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 151
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mOrientation:I

    return v0
.end method

.method public getRawImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 236
    const v0, 0x5b8d80

    invoke-virtual {p0, v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->getThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pixelSize"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->getVideoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    :cond_0
    :goto_0
    return-object v1

    .line 217
    :cond_1
    iget-boolean v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsGif:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    iget v3, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHeight:I

    mul-int/2addr v2, v3

    if-gt v2, p1, :cond_2

    const v2, 0x64140

    if-lt p1, v2, :cond_2

    .line 219
    new-instance v1, Landroid/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 220
    .local v1, drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    mul-int/lit8 v2, p1, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GifAnimationDrawable;->setMaxDecodeSize(J)V

    .line 221
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    .end local v1           #drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 230
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 232
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 146
    iget v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    return v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mAllDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsVideo:Z

    return v0
.end method

.method public loadAllData()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllDataInternal()V

    .line 72
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->clearModifiedFlags()V

    goto :goto_0
.end method

.method protected loadAllDataInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 84
    iget v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    if-gtz v6, :cond_0

    .line 85
    iget-boolean v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsImage:Z

    if-eqz v6, :cond_1

    .line 86
    new-instance v6, Lmiui/util/InputStreamLoader;

    iget-object v7, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 88
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    .line 89
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHeight:I

    .line 130
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mIsVideo:Z

    if-eqz v6, :cond_0

    .line 92
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 94
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 95
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, duration:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 97
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mDuration:J

    .line 100
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, key:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    new-instance v6, Lmiui/util/InputStreamLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmapSize(Lmiui/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 105
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    .line 106
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 124
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v6

    goto :goto_0

    .line 109
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 111
    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mWidth:I

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mHeight:I

    .line 115
    const/4 v6, 0x0

    invoke-static {v0}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-static {v0, v2}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 120
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #key:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 124
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 125
    :catch_2
    move-exception v6

    goto :goto_0

    .line 121
    :catch_3
    move-exception v6

    .line 124
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 125
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 123
    :catchall_0
    move-exception v6

    .line 124
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 126
    :goto_2
    throw v6

    .line 125
    :catch_5
    move-exception v7

    goto :goto_2
.end method
