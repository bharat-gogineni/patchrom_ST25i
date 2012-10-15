.class public Lcom/miui/gallery/data/UriImage;
.super Lcom/miui/gallery/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/UriImage$BitmapJob;,
        Lcom/miui/gallery/data/UriImage$RegionDecoderJob;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;Landroid/net/Uri;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 65
    invoke-static {}, Lcom/miui/gallery/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/miui/gallery/data/MediaItem;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 66
    iput-object p3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    .line 67
    invoke-static {p1}, Lcom/miui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 68
    invoke-direct {p0, p3}, Lcom/miui/gallery/data/UriImage;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/gallery/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    return p1
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 85
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 92
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private openFileOrDownloadTempFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->openOrDownloadInner(Lcom/miui/gallery/util/ThreadPool$JobContext;)I

    move-result v0

    .line 107
    .local v0, state:I
    monitor-enter p0

    .line 108
    :try_start_0
    iput v0, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 109
    iget v1, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/miui/gallery/util/ThreadPool$JobContext;)I
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 120
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, scheme:Ljava/lang/String;
    const-string v9, "content"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.resource"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "file"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 125
    :cond_0
    :try_start_0
    const-string v9, "image/jpeg"

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    .local v2, is:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/miui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    .line 129
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    .end local v2           #is:Ljava/io/InputStream;
    :cond_1
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 133
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    :cond_2
    :goto_0
    return v6

    :cond_3
    move v6, v8

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "UriImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to open: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 137
    goto :goto_0

    .line 141
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    .line 142
    .local v5, url:Ljava/net/URL;
    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v9}, Lcom/miui/gallery/app/GalleryApp;->getDownloadCache()Lcom/miui/gallery/data/DownloadCache;

    move-result-object v0

    .line 143
    .local v0, downloadCache:Lcom/miui/gallery/data/DownloadCache;
    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v0, p1, v5}, Lcom/miui/gallery/data/DownloadCache;->download(Lcom/miui/gallery/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/miui/gallery/data/DownloadCache$Entry;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    .line 145
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 147
    :cond_5
    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    if-nez v6, :cond_6

    .line 148
    const-string v6, "UriImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 149
    goto :goto_0

    .line 151
    :cond_6
    const-string v6, "image/jpeg"

    iget-object v9, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 152
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    iget-object v6, v6, Lcom/miui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 153
    .restart local v2       #is:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/miui/gallery/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v6

    iput v6, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    .line 154
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 156
    .end local v2           #is:Ljava/io/InputStream;
    :cond_7
    iget-object v6, p0, Lcom/miui/gallery/data/UriImage;->mCacheEntry:Lcom/miui/gallery/data/DownloadCache$Entry;

    iget-object v6, v6, Lcom/miui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v9, 0x1000

    invoke-static {v6, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v8

    .line 158
    goto/16 :goto_0

    .line 159
    .end local v0           #downloadCache:Lcom/miui/gallery/data/DownloadCache;
    .end local v5           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 160
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "UriImage"

    const-string v8, "download error"

    invoke-static {v6, v8, v4}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 161
    goto/16 :goto_0
.end method

.method private prepareInputFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    new-instance v2, Lcom/miui/gallery/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/miui/gallery/data/UriImage$1;-><init>(Lcom/miui/gallery/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/miui/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/miui/gallery/util/ThreadPool$CancelListener;)V

    .line 178
    iput v0, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 181
    :goto_0
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-interface {p1}, Lcom/miui/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 189
    :goto_1
    return v0

    .line 183
    :cond_0
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 184
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/UriImage;->openFileOrDownloadTempFile(Lcom/miui/gallery/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 186
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 187
    monitor-exit p0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 188
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/miui/gallery/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 189
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 192
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUriForExternal()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentUriForGallery()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 5

    .prologue
    .line 275
    invoke-super {p0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 277
    .local v1, details:Lcom/miui/gallery/data/MediaDetails;
    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    if-nez v3, :cond_1

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 280
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/miui/gallery/data/UriImage;->isSchemeFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 281
    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/MediaDetails;->decodeImageSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 285
    :goto_0
    if-eqz v0, :cond_1

    .line 286
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    .line 287
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    .line 290
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    if-eqz v3, :cond_2

    .line 291
    const/4 v3, 0x5

    iget v4, p0, Lcom/miui/gallery/data/UriImage;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 292
    const/4 v3, 0x6

    iget v4, p0, Lcom/miui/gallery/data/UriImage;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 296
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 297
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 301
    :cond_3
    const-string v3, "file"

    iget-object v4, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, filePath:Ljava/lang/String;
    const/16 v3, 0xc8

    invoke-virtual {v1, v3, v2}, Lcom/miui/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 304
    invoke-static {v1, v2}, Lcom/miui/gallery/data/MediaDetails;->extractExifInfo(Lcom/miui/gallery/data/MediaDetails;Ljava/lang/String;)V

    .line 306
    .end local v2           #filePath:Ljava/lang/String;
    :cond_4
    return-object v1

    .line 283
    .restart local v0       #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    iget-object v3, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/miui/gallery/data/MediaDetails;->decodeImageSize(Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    const-string v0, ""

    .line 78
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/UriImage;->isSchemeFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/miui/gallery/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 248
    const v0, 0x20024

    .line 249
    .local v0, supported:I
    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    or-int/lit8 v0, v0, 0x40

    .line 252
    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public isSchemeFile()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/miui/gallery/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/data/UriImage$BitmapJob;-><init>(Lcom/miui/gallery/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/gallery/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/data/UriImage$RegionDecoderJob;-><init>(Lcom/miui/gallery/data/UriImage;Lcom/miui/gallery/data/UriImage$1;)V

    return-object v0
.end method
