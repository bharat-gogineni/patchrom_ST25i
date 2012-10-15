.class public Lcom/miui/gallery/gadget/LocalPhotoSource;
.super Ljava/lang/Object;
.source "LocalPhotoSource.java"

# interfaces
.implements Lcom/miui/gallery/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_EXTERNAL:Landroid/net/Uri;

.field private static final CONTENT_URI_INTERNAL:Landroid/net/Uri;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final ORDER:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;


# instance fields
.field private mContentDirty:Z

.field private mContentListener:Lcom/miui/gallery/data/ContentListener;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/miui/gallery/data/DataManager;

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    .line 52
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->PROJECTION:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    .line 57
    const-string v0, "%s != %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bucket_id"

    aput-object v2, v1, v3

    invoke-static {}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getDownloadBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    .line 59
    const-string v0, "%s DESC"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "datetaken"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->ORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    .line 65
    iput-boolean v3, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentDirty:Z

    .line 69
    iput-object p1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mDataManager:Lcom/miui/gallery/data/DataManager;

    .line 71
    new-instance v0, Lcom/miui/gallery/gadget/LocalPhotoSource$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/gadget/LocalPhotoSource$1;-><init>(Lcom/miui/gallery/gadget/LocalPhotoSource;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/gadget/LocalPhotoSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/gallery/gadget/LocalPhotoSource;)Lcom/miui/gallery/data/ContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;

    return-object v0
.end method

.method private getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "resolver"
    .parameter "uri"
    .parameter "countProjection"
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 143
    const/4 v6, 0x0

    .local v6, count:I
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 146
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 147
    const-string v0, "LocalPhotoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open local database:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 152
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 155
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getDownloadBucketId()I
    .locals 2

    .prologue
    .line 259
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, downloadsPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getExponentialIndice(II)[I
    .locals 12
    .parameter "total"
    .parameter "count"

    .prologue
    .line 116
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 117
    .local v3, random:Ljava/util/Random;
    if-le p2, p1, :cond_0

    move p2, p1

    .line 118
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    .local v5, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ge v8, p2, :cond_2

    .line 120
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    neg-double v8, v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 121
    .local v4, row:I
    if-ge v4, p1, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v4           #row:I
    :cond_2
    new-array v7, p2, [I

    .line 124
    .local v7, values:[I
    const/4 v1, 0x0

    .line 125
    .local v1, index:I
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 126
    .local v6, value:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aput v6, v7, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 128
    .end local v6           #value:I
    :cond_3
    return-object v7
.end method

.method private getPhotoCount(Landroid/content/ContentResolver;)I
    .locals 5
    .parameter "resolver"

    .prologue
    .line 132
    sget-object v2, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    sget-object v3, Lcom/miui/gallery/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/miui/gallery/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, externalCount:I
    sget-object v2, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    sget-object v3, Lcom/miui/gallery/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/miui/gallery/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, internalCount:I
    add-int v2, v0, v1

    return v2
.end method

.method private isContentSound(I)Z
    .locals 14
    .parameter "totalCount"

    .prologue
    .line 161
    iget-object v7, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x80

    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 162
    const/4 v7, 0x0

    .line 194
    :goto_0
    return v7

    .line 163
    :cond_0
    iget-object v7, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 164
    const/4 v7, 0x1

    goto :goto_0

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v1, builderExternal:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v2, builderInternal:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 169
    .local v3, externalCount:I
    const/4 v5, 0x0

    .line 170
    .local v5, internalCount:I
    const/4 v0, 0x0

    .line 172
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;

    .line 173
    .local v6, photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    iget-boolean v7, v6, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->isInternal:Z

    if-eqz v7, :cond_3

    move-object v0, v2

    .line 174
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 175
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2
    iget-wide v7, v6, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->id:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 173
    goto :goto_2

    .line 180
    .end local v6           #photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    :cond_4
    iget-object v7, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    sget-object v9, Lcom/miui/gallery/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v10, "%s in (%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 187
    iget-object v7, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    sget-object v9, Lcom/miui/gallery/gadget/LocalPhotoSource;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string v10, "%s in (%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 194
    add-int v7, v3, v5

    iget-object v8, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 5
    .parameter "index"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;

    .line 93
    .local v0, photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    iget-boolean v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->isInternal:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    .line 95
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v3, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 98
    .end local v0           #photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_1
    return-object v2

    .line 93
    .restart local v0       #photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    :cond_0
    sget-object v1, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    goto :goto_0

    .line 98
    .end local v0           #photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v6, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v5

    .line 104
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;

    .line 105
    .local v4, photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    iget-wide v0, v4, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->id:J

    .line 106
    .local v0, id:J
    iget-boolean v6, v4, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->isInternal:Z

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getInternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    .line 108
    .local v3, path:Lcom/miui/gallery/data/Path;
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mDataManager:Lcom/miui/gallery/data/DataManager;

    invoke-virtual {v3, v0, v1}, Lcom/miui/gallery/data/Path;->getChild(J)Lcom/miui/gallery/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaItem;

    .line 110
    .local v2, image:Lcom/miui/gallery/data/MediaItem;
    if-eqz v2, :cond_0

    .line 112
    invoke-static {v2}, Lcom/miui/gallery/gadget/WidgetUtils;->createWidgetBitmap(Lcom/miui/gallery/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 106
    .end local v2           #image:Lcom/miui/gallery/data/MediaItem;
    .end local v3           #path:Lcom/miui/gallery/data/Path;
    :cond_2
    invoke-static {}, Lcom/miui/gallery/data/LocalImage;->getExternalItemPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    goto :goto_1
.end method

.method public reload()V
    .locals 19

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentDirty:Z

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentDirty:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 202
    .local v18, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getPhotoCount(Landroid/content/ContentResolver;)I

    move-result v17

    .line 203
    .local v17, photoCount:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/gallery/gadget/LocalPhotoSource;->isContentSound(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const/16 v2, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/gadget/LocalPhotoSource;->getExponentialIndice(II)[I

    move-result-object v9

    .line 210
    .local v9, choosedIndexs:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_EXTERNAL:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/gadget/LocalPhotoSource;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/miui/gallery/gadget/LocalPhotoSource;->ORDER:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 213
    .local v11, cursorExternal:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/gadget/LocalPhotoSource;->CONTENT_URI_INTERNAL:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/gadget/LocalPhotoSource;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/miui/gallery/gadget/LocalPhotoSource;->SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/miui/gallery/gadget/LocalPhotoSource;->ORDER:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 215
    .local v12, cursorInternal:Landroid/database/Cursor;
    if-nez v12, :cond_2

    if-eqz v11, :cond_0

    .line 218
    :cond_2
    const/4 v10, 0x0

    .line 219
    .local v10, countExternal:I
    if-eqz v11, :cond_3

    .line 221
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 223
    :cond_3
    move-object v8, v9

    .local v8, arr$:[I
    array-length v15, v8

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v15, :cond_6

    aget v14, v8, v13

    .line 224
    .local v14, index:I
    new-instance v16, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;-><init>(Lcom/miui/gallery/gadget/LocalPhotoSource;)V

    .line 226
    .local v16, photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    if-ge v14, v10, :cond_4

    .line 227
    invoke-interface {v11, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->id:J

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->isInternal:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_4
    if-eqz v12, :cond_5

    if-lt v14, v10, :cond_5

    .line 234
    sub-int v2, v14, v10

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 235
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->id:J

    .line 236
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->isInternal:Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 241
    .end local v14           #index:I
    .end local v16           #photo:Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
    :cond_6
    if-eqz v12, :cond_7

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_7
    if-eqz v11, :cond_0

    .line 244
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 241
    .end local v8           #arr$:[I
    .end local v13           #i$:I
    .end local v15           #len$:I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_8

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_8
    if-eqz v11, :cond_9

    .line 244
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method public setContentListener(Lcom/miui/gallery/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mContentListener:Lcom/miui/gallery/data/ContentListener;

    .line 268
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/miui/gallery/gadget/LocalPhotoSource;->reload()V

    .line 251
    iget-object v0, p0, Lcom/miui/gallery/gadget/LocalPhotoSource;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
