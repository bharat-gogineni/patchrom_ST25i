.class public Lcom/miui/gallery/data/LocalAlbumSet;
.super Lcom/miui/gallery/data/MediaSet;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    }
.end annotation


# static fields
.field public static final PATH_ALL:Lcom/miui/gallery/data/Path;

.field public static final PATH_IMAGE:Lcom/miui/gallery/data/Path;

.field public static final PATH_VIDEO:Lcom/miui/gallery/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private final mName:Ljava/lang/String;

.field private final mNotifierImageExternal:Lcom/miui/gallery/data/ChangeNotifier;

.field private final mNotifierImageInternal:Lcom/miui/gallery/data/ChangeNotifier;

.field private final mNotifierVideoExternal:Lcom/miui/gallery/data/ChangeNotifier;

.field private final mNotifierVideoInternal:Lcom/miui/gallery/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_ALL:Lcom/miui/gallery/data/Path;

    .line 46
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/miui/gallery/data/Path;

    .line 47
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/miui/gallery/data/Path;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 113
    invoke-static {}, Lcom/miui/gallery/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/gallery/data/MediaSet;-><init>(Lcom/miui/gallery/data/Path;J)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 115
    invoke-static {p1}, Lcom/miui/gallery/data/LocalAlbumSet;->getTypeFromPath(Lcom/miui/gallery/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mType:I

    .line 117
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierImageExternal:Lcom/miui/gallery/data/ChangeNotifier;

    .line 118
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierImageInternal:Lcom/miui/gallery/data/ChangeNotifier;

    .line 119
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierVideoExternal:Lcom/miui/gallery/data/ChangeNotifier;

    .line 120
    new-instance v0, Lcom/miui/gallery/data/ChangeNotifier;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/miui/gallery/data/ChangeNotifier;-><init>(Lcom/miui/gallery/data/MediaSet;Landroid/net/Uri;Lcom/miui/gallery/app/GalleryApp;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierVideoInternal:Lcom/miui/gallery/data/ChangeNotifier;

    .line 122
    invoke-interface {p2}, Lcom/miui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private static Data2FilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 152
    if-nez p0, :cond_1

    .line 153
    const-string v2, "LocalAlbumSet"

    const-string v3, "data should not be null"

    invoke-static {v2, v3}, Lcom/miui/gallery/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, ""

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    const-string v0, ""

    .line 158
    .local v0, filePath:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 159
    .local v1, pos:I
    if-ltz v1, :cond_0

    .line 160
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    .locals 2
    .parameter "bucketId"

    .prologue
    .line 270
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_EXTERNAL:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(ILandroid/net/Uri;)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 272
    .local v0, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    if-eqz v0, :cond_0

    .line 277
    .end local v0           #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :goto_0
    return-object v0

    .restart local v0       #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :cond_0
    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_INTERNAL:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(ILandroid/net/Uri;)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBucketEntry(ILandroid/net/Uri;)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    .locals 13
    .parameter "bucketId"
    .parameter "baseUri"

    .prologue
    const/4 v11, 0x0

    .line 281
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v6

    .line 282
    .local v6, application:Lcom/miui/gallery/app/GalleryApp;
    new-instance v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    invoke-direct {v7}, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;-><init>()V

    .line 284
    .local v7, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    const/4 v8, 0x0

    .line 286
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "MAX(datetaken), %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v12, "_data"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v12, "bucket_display_name"

    aput-object v12, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "_size > ? ) AND ( bucket_id = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 299
    :goto_0
    if-nez v8, :cond_1

    .line 302
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBucketEntry fails with null cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v11

    .line 337
    .end local v7           #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :cond_0
    :goto_1
    return-object v7

    .line 294
    .restart local v7       #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :catch_0
    move-exception v10

    .line 295
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    const/4 v8, 0x0

    goto :goto_0

    .line 309
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iput p0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    .line 311
    const/4 v0, 0x1

    invoke-static {v8, v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, data:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 313
    sget v0, Lcom/miui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v0, p0, :cond_3

    .line 314
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "specially handles external camera album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/miui/gallery/util/AlbumUtils;->EXTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    .line 319
    iget-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/gallery/util/AlbumUtils;->getBucketDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v9           #data:Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v8, :cond_0

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 323
    .restart local v9       #data:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v0, ""

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    .line 325
    const-string v0, ""

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 336
    .end local v9           #data:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 328
    .restart local v9       #data:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {v9}, Lcom/miui/gallery/data/LocalAlbumSet;->Data2FilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    .line 330
    iget-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v8, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/AlbumUtils;->getBucketDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static getLocalAlbum(Lcom/miui/gallery/data/Path;ILcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "parent"
    .parameter "bucketId"
    .parameter "bucketEntry"

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAlbum(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;
    .locals 13
    .parameter "path"
    .parameter "bucketEntry"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 386
    if-nez p1, :cond_0

    .line 387
    const-string v8, "LocalAlbumSet"

    const-string v9, "bucketEntry is null when create album"

    invoke-static {v8, v9}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v6, 0x0

    .line 444
    :goto_0
    return-object v6

    .line 390
    :cond_0
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v10

    invoke-interface {v10}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v4

    .line 391
    .local v4, manager:Lcom/miui/gallery/data/DataManager;
    invoke-virtual {v4, p0}, Lcom/miui/gallery/data/DataManager;->peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v6

    .line 393
    .local v6, object:Lcom/miui/gallery/data/MediaObject;
    const/4 v2, 0x0

    .line 394
    .local v2, cachedLocalMergeAlbum:Lcom/miui/gallery/data/LocalMergeAlbum;
    const/4 v1, 0x0

    .line 395
    .local v1, cachedLocalAlbum:Lcom/miui/gallery/data/LocalAlbum;
    if-eqz v6, :cond_6

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, hasInvalidSource:Z
    instance-of v10, v6, Lcom/miui/gallery/data/LocalMergeAlbum;

    if-eqz v10, :cond_3

    move-object v2, v6

    .line 398
    check-cast v2, Lcom/miui/gallery/data/LocalMergeAlbum;

    .line 399
    invoke-virtual {v2}, Lcom/miui/gallery/data/LocalMergeAlbum;->hasInvalidSource()Z

    move-result v3

    .line 406
    :cond_1
    :goto_1
    if-nez v3, :cond_5

    .line 407
    if-eqz v1, :cond_2

    .line 409
    iget-wide v8, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    invoke-virtual {v1, v8, v9}, Lcom/miui/gallery/data/LocalAlbum;->setBucketDate(J)V

    .line 411
    :cond_2
    check-cast v6, Lcom/miui/gallery/data/MediaSet;

    goto :goto_0

    .line 400
    :cond_3
    instance-of v10, v6, Lcom/miui/gallery/data/LocalAlbum;

    if-eqz v10, :cond_1

    move-object v1, v6

    .line 401
    check-cast v1, Lcom/miui/gallery/data/LocalAlbum;

    .line 402
    invoke-virtual {v1}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v10

    if-nez v10, :cond_4

    move v3, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v3, v9

    goto :goto_2

    .line 413
    :cond_5
    const-string v10, "LocalAlbumSet"

    const-string v11, "invalid source: will update source"

    invoke-static {v10, v11}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v3           #hasInvalidSource:Z
    :cond_6
    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v0

    .line 418
    .local v0, application:Lcom/miui/gallery/app/GalleryApp;
    invoke-static {p0}, Lcom/miui/gallery/data/LocalAlbumSet;->getTypeFromPath(Lcom/miui/gallery/data/Path;)I

    move-result v7

    .line 419
    .local v7, type:I
    packed-switch v7, :pswitch_data_0

    .line 447
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 422
    :pswitch_1
    if-nez v1, :cond_8

    .line 423
    new-instance v6, Lcom/miui/gallery/data/LocalAlbum;

    .end local v6           #object:Lcom/miui/gallery/data/MediaObject;
    if-ne v7, v12, :cond_7

    :goto_3
    invoke-direct {v6, p0, v0, v8, p1}, Lcom/miui/gallery/data/LocalAlbum;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZLcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    goto :goto_0

    :cond_7
    move v8, v9

    goto :goto_3

    .line 425
    .restart local v6       #object:Lcom/miui/gallery/data/MediaObject;
    :cond_8
    const-string v9, "LocalAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update cached local album: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_9

    const-string v8, "null"

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/LocalAlbum;->updateBucketSource(Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)V

    move-object v6, v1

    .line 428
    goto/16 :goto_0

    .line 425
    :cond_9
    iget-object v8, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    goto :goto_4

    .line 431
    :pswitch_2
    new-array v5, v12, [Lcom/miui/gallery/data/MediaSet;

    sget-object v10, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/miui/gallery/data/Path;

    iget v11, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    invoke-static {v10, v11, p1}, Lcom/miui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/miui/gallery/data/Path;ILcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v10

    aput-object v10, v5, v9

    sget-object v9, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/miui/gallery/data/Path;

    iget v10, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    invoke-static {v9, v10, p1}, Lcom/miui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/miui/gallery/data/Path;ILcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v9

    aput-object v9, v5, v8

    .line 436
    .local v5, mediaSetSources:[Lcom/miui/gallery/data/MediaSet;
    if-nez v2, :cond_a

    .line 438
    new-instance v6, Lcom/miui/gallery/data/LocalMergeAlbum;

    .end local v6           #object:Lcom/miui/gallery/data/MediaObject;
    invoke-direct {v6, p0, v5}, Lcom/miui/gallery/data/LocalMergeAlbum;-><init>(Lcom/miui/gallery/data/Path;[Lcom/miui/gallery/data/MediaSet;)V

    goto/16 :goto_0

    .line 440
    .restart local v6       #object:Lcom/miui/gallery/data/MediaObject;
    :cond_a
    const-string v9, "LocalAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update cached local merge album: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_b

    const-string v8, "null"

    :goto_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v2, v5}, Lcom/miui/gallery/data/LocalMergeAlbum;->setMediaSource([Lcom/miui/gallery/data/MediaSet;)V

    move-object v6, v2

    .line 444
    goto/16 :goto_0

    .line 440
    :cond_b
    iget-object v8, p1, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    goto :goto_5

    .line 419
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/miui/gallery/data/Path;)I
    .locals 5
    .parameter "path"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, name:[Ljava/lang/String;
    array-length v2, v0

    if-ge v2, v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    const-string v2, "all"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    .line 132
    :cond_1
    :goto_0
    return v1

    .line 131
    :cond_2
    const-string v2, "image"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const-string v1, "video"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 133
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isInvalidCachedAlbum(Lcom/miui/gallery/data/MediaObject;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 455
    if-nez p0, :cond_0

    .line 465
    .end local p0
    :goto_0
    return v1

    .line 458
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 459
    .local v0, hasInvalidSource:Z
    instance-of v2, p0, Lcom/miui/gallery/data/LocalMergeAlbum;

    if-eqz v2, :cond_2

    .line 460
    check-cast p0, Lcom/miui/gallery/data/LocalMergeAlbum;

    .end local p0
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalMergeAlbum;->hasInvalidSource()Z

    move-result v0

    :cond_1
    :goto_1
    move v1, v0

    .line 465
    goto :goto_0

    .line 461
    .restart local p0
    :cond_2
    instance-of v2, p0, Lcom/miui/gallery/data/LocalAlbum;

    if-eqz v2, :cond_1

    .line 462
    check-cast p0, Lcom/miui/gallery/data/LocalAlbum;

    .end local p0
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbum;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private loadBucketEntries()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const-string v0, "LocalAlbumSet"

    const-string v1, "test LocalAlbumSet.loadBucketEntries(): start"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/miui/gallery/util/GalleryUtils;->assertNotInRenderThread()V

    .line 206
    const/4 v10, 0x0

    .line 207
    .local v10, externalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v12, 0x0

    .line 211
    .local v12, internalEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    const-string v0, "LocalAlbumSet"

    const-string v1, "test LocalAlbumSet.loadBucketEntries(): query external start"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v6, 0x0

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_EXTERNAL:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "_size > ? ) AND (1) GROUP BY 1,(2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 224
    :goto_0
    const-string v0, "LocalAlbumSet"

    const-string v1, "test LocalAlbumSet.loadBucketEntries(): query external end"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-nez v6, :cond_0

    .line 228
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open local database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_EXTERNAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_INTERNAL:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "_size > ? ) AND (1) GROUP BY 1,(2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/gallery/settings/PreferenceHelper;->getFilterMinSize()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 243
    :goto_2
    if-nez v6, :cond_1

    .line 244
    const-string v0, "LocalAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open local database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/util/GalleryDBHelper;->BASE_URI_INTERNAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_3
    if-nez v10, :cond_2

    if-nez v12, :cond_2

    .line 250
    const/4 v8, 0x0

    .line 264
    :goto_4
    return-object v8

    .line 219
    :catch_0
    move-exception v7

    .line 220
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const/4 v6, 0x0

    goto :goto_0

    .line 230
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/gallery/data/LocalAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_1

    .line 238
    :catch_1
    move-exception v7

    .line 239
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const/4 v6, 0x0

    goto :goto_2

    .line 246
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v6}, Lcom/miui/gallery/data/LocalAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_3

    .line 251
    :cond_2
    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    .line 253
    move-object v8, v10

    .line 254
    .local v8, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    .line 255
    .local v9, entry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 258
    .end local v9           #entry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :cond_3
    const-string v0, "LocalAlbumSet"

    const-string v1, "test LocalAlbumSet.loadBucketEntries(): return & end"

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 261
    .end local v8           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v10, :cond_5

    move-object v8, v10

    .line 262
    goto :goto_4

    :cond_5
    move-object v8, v12

    .line 264
    goto :goto_4
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 6
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v2, 0x0

    .line 169
    .local v2, typeBits:I
    iget v3, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 170
    or-int/lit8 v2, v2, 0x2

    .line 172
    :cond_0
    iget v3, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 173
    or-int/lit8 v2, v2, 0x8

    .line 176
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    shl-int v3, v5, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 178
    new-instance v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    invoke-direct {v0}, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;-><init>()V

    .line 179
    .local v0, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    .line 180
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->date:J

    .line 181
    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/data/LocalAlbumSet;->Data2FilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    .line 182
    iget-object v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->filePath:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/miui/gallery/util/GalleryDBHelper;->getCursorString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/AlbumUtils;->getBucketDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->name:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_2

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 191
    :cond_3
    if-eqz p1, :cond_4

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_4
    return-object v1
.end method


# virtual methods
.method public getAllAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected loadSubMediaSets()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 353
    const-string v7, "LocalAlbumSet"

    const-string v9, "test LocalAlbumSet.loadSubMediaSets() start"

    invoke-static {v7, v9}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lcom/miui/gallery/data/LocalAlbumSet;->loadBucketEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;>;"
    if-nez v1, :cond_0

    .line 359
    const-string v7, "LocalAlbumSet"

    const-string v8, "return empty media sets"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    :goto_0
    return-object v0

    .line 364
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v0, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSet;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    .line 366
    .local v2, entry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    iget-object v7, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mPath:Lcom/miui/gallery/data/Path;

    iget v9, v2, Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;->bucketId:I

    invoke-static {v7, v9, v2}, Lcom/miui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/miui/gallery/data/Path;ILcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v5

    .line 367
    .local v5, mediaSet:Lcom/miui/gallery/data/MediaSet;
    if-eqz v5, :cond_1

    const/4 v7, 0x1

    :goto_2
    const-string v9, "Should not return null media set"

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v7, v8

    .line 367
    goto :goto_2

    .line 372
    .end local v2           #entry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    .end local v5           #mediaSet:Lcom/miui/gallery/data/MediaSet;
    :cond_2
    const-string v7, "LocalAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test LocalAlbumSet.loadSubMediaSets() enter for loop to reload albums: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, n:I
    :goto_3
    if-ge v3, v6, :cond_3

    .line 376
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/MediaSet;

    invoke-virtual {v7}, Lcom/miui/gallery/data/MediaSet;->reload()J

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 380
    :cond_3
    const-string v7, "LocalAlbumSet"

    const-string v8, "test LocalAlbumSet.loadSubMediaSets() end"

    invoke-static {v7, v8}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized reload()J
    .locals 2

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierImageExternal:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierVideoExternal:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierImageInternal:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mNotifierVideoInternal:Lcom/miui/gallery/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/miui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lcom/miui/gallery/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mDataVersion:J

    .line 479
    invoke-virtual {p0}, Lcom/miui/gallery/data/LocalAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 481
    :cond_0
    iget-wide v0, p0, Lcom/miui/gallery/data/LocalAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
