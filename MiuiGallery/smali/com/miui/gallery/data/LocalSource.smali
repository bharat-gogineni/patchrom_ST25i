.class Lcom/miui/gallery/data/LocalSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocalSource$1;,
        Lcom/miui/gallery/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/gallery/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/miui/gallery/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/miui/gallery/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocalSource$IdComparator;-><init>(Lcom/miui/gallery/data/LocalSource$1;)V

    sput-object v0, Lcom/miui/gallery/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 62
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 63
    iput-object p1, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 64
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 65
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/all"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v4}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v5}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/all/*"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/image/item/external/*"

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/image/item/internal/*"

    invoke-virtual {v0, v1, v6}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/video/item/external/*"

    invoke-virtual {v0, v1, v7}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/local/video/item/internal/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "internal/images/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "internal/video/media/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "internal/images/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "internal/video/media"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/miui/gallery/data/Path;
    .locals 7
    .parameter "uri"
    .parameter "defaultType"

    .prologue
    .line 157
    const-string v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/miui/gallery/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 160
    .local v3, mediaType:I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, bucketId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 163
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    packed-switch v3, :pswitch_data_0

    .line 174
    :pswitch_0
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v4, 0x0

    goto :goto_0

    .line 170
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v4

    goto :goto_0

    .line 172
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v4

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .parameter "type"
    .parameter "defaultType"

    .prologue
    .line 141
    if-nez p0, :cond_1

    .line 149
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 143
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 144
    .local v1, value:I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    .line 145
    goto :goto_0

    .line 146
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;ZZ)V
    .locals 14
    .parameter
    .parameter "consumer"
    .parameter "isInternalMedia"
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/miui/gallery/data/MediaSet$ItemConsumer;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    sget-object v12, Lcom/miui/gallery/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 259
    .local v8, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_3

    .line 260
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gallery/data/MediaSource$PathId;

    .line 263
    .local v9, pid:Lcom/miui/gallery/data/MediaSource$PathId;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, v9, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v12}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 265
    .local v11, startId:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v6, v3, 0x1

    .local v6, j:I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 269
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/data/MediaSource$PathId;

    .line 270
    .local v10, pid2:Lcom/miui/gallery/data/MediaSource$PathId;
    iget-object v12, v10, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v12}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, curId:I
    sub-int v12, v2, v11

    const/16 v13, 0x1f4

    if-lt v12, v13, :cond_1

    .line 277
    .end local v2           #curId:I
    .end local v10           #pid2:Lcom/miui/gallery/data/MediaSource$PathId;
    :cond_0
    iget-object v12, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v12, v0, v1, v4}, Lcom/miui/gallery/data/LocalAlbum;->getMediaItemById(Lcom/miui/gallery/app/GalleryApp;ZZLjava/util/ArrayList;)[Lcom/miui/gallery/data/MediaItem;

    move-result-object v5

    .line 279
    .local v5, items:[Lcom/miui/gallery/data/MediaItem;
    move v7, v3

    .local v7, k:I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 280
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/gallery/data/MediaSource$PathId;

    .line 281
    .restart local v10       #pid2:Lcom/miui/gallery/data/MediaSource$PathId;
    iget v12, v10, Lcom/miui/gallery/data/MediaSource$PathId;->id:I

    sub-int v13, v7, v3

    aget-object v13, v5, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/miui/gallery/data/MediaSet$ItemConsumer;->consume(ILcom/miui/gallery/data/MediaItem;)V

    .line 279
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 274
    .end local v5           #items:[Lcom/miui/gallery/data/MediaItem;
    .end local v7           #k:I
    .restart local v2       #curId:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 284
    .end local v2           #curId:I
    .end local v10           #pid2:Lcom/miui/gallery/data/MediaSource$PathId;
    .restart local v5       #items:[Lcom/miui/gallery/data/MediaItem;
    .restart local v7       #k:I
    :cond_2
    move v3, v6

    .line 285
    goto :goto_0

    .line 286
    .end local v4           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #items:[Lcom/miui/gallery/data/MediaItem;
    .end local v6           #j:I
    .end local v7           #k:I
    .end local v9           #pid:Lcom/miui/gallery/data/MediaSource$PathId;
    .end local v11           #startId:I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 99
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    iget-object v10, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v10, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v4

    .line 100
    .local v4, matchResult:I
    packed-switch v4, :pswitch_data_0

    .line 136
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bad path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 104
    :pswitch_0
    new-instance v6, Lcom/miui/gallery/data/LocalAlbumSet;

    iget-object v8, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v6, p1, v8}, Lcom/miui/gallery/data/LocalAlbumSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;)V

    .line 134
    :goto_0
    return-object v6

    .line 107
    :pswitch_1
    new-instance v6, Lcom/miui/gallery/data/LocalAlbum;

    iget-object v10, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v10

    if-ne v4, v11, :cond_0

    :goto_1
    invoke-direct {v6, p1, v0, v10, v8}, Lcom/miui/gallery/data/LocalAlbum;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;IZ)V

    .line 108
    .local v6, result:Lcom/miui/gallery/data/LocalAlbum;
    goto :goto_0

    .end local v6           #result:Lcom/miui/gallery/data/LocalAlbum;
    :cond_0
    move v8, v9

    .line 107
    goto :goto_1

    .line 110
    :pswitch_2
    iget-object v10, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v10, v9}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 111
    .local v1, bucketId:I
    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v2

    .line 112
    .local v2, dataManager:Lcom/miui/gallery/data/DataManager;
    sget-object v10, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/miui/gallery/data/Path;

    invoke-virtual {v10, v1}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/MediaSet;

    .line 114
    .local v3, imageSet:Lcom/miui/gallery/data/MediaSet;
    sget-object v10, Lcom/miui/gallery/data/LocalAlbumSet;->PATH_VIDEO:Lcom/miui/gallery/data/Path;

    invoke-virtual {v10, v1}, Lcom/miui/gallery/data/Path;->getChild(I)Lcom/miui/gallery/data/Path;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/miui/gallery/data/MediaSet;

    .line 116
    .local v7, videoSet:Lcom/miui/gallery/data/MediaSet;
    const/4 v5, 0x0

    .line 117
    .local v5, mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    if-nez v3, :cond_1

    if-nez v7, :cond_1

    .line 118
    new-array v5, v9, [Lcom/miui/gallery/data/MediaSet;

    .line 127
    :goto_2
    new-instance v6, Lcom/miui/gallery/data/LocalMergeAlbum;

    invoke-direct {v6, p1, v5}, Lcom/miui/gallery/data/LocalMergeAlbum;-><init>(Lcom/miui/gallery/data/Path;[Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_0

    .line 119
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v7, :cond_2

    .line 120
    new-array v5, v11, [Lcom/miui/gallery/data/MediaSet;

    .end local v5           #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    aput-object v3, v5, v9

    aput-object v7, v5, v8

    .restart local v5       #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    goto :goto_2

    .line 121
    :cond_2
    if-eqz v3, :cond_3

    .line 122
    new-array v5, v8, [Lcom/miui/gallery/data/MediaSet;

    .end local v5           #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    aput-object v3, v5, v9

    .restart local v5       #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    goto :goto_2

    .line 124
    :cond_3
    new-array v5, v8, [Lcom/miui/gallery/data/MediaSet;

    .end local v5           #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    aput-object v7, v5, v9

    .restart local v5       #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    goto :goto_2

    .line 131
    .end local v1           #bucketId:I
    .end local v2           #dataManager:Lcom/miui/gallery/data/DataManager;
    .end local v3           #imageSet:Lcom/miui/gallery/data/MediaSet;
    .end local v5           #mergeMediaSet:[Lcom/miui/gallery/data/MediaSet;
    .end local v7           #videoSet:Lcom/miui/gallery/data/MediaSet;
    :pswitch_3
    new-instance v6, Lcom/miui/gallery/data/LocalImage;

    iget-object v10, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    const/4 v11, 0x5

    if-ne v4, v11, :cond_4

    :goto_3
    iget-object v11, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v11, v9}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v9

    invoke-direct {v6, p1, v10, v8, v9}, Lcom/miui/gallery/data/LocalImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZI)V

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_3

    .line 134
    :pswitch_4
    new-instance v6, Lcom/miui/gallery/data/LocalVideo;

    iget-object v10, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    const/4 v11, 0x7

    if-ne v4, v11, :cond_5

    :goto_4
    iget-object v11, p0, Lcom/miui/gallery/data/LocalSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v11, v9}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v9

    invoke-direct {v6, p1, v10, v8, v9}, Lcom/miui/gallery/data/LocalVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;ZI)V

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_4

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 11
    .parameter "uri"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 181
    :try_start_0
    iget-object v8, p0, Lcom/miui/gallery/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 182
    .local v3, matchResult:I
    packed-switch v3, :pswitch_data_0

    .line 205
    .end local v3           #matchResult:I
    :cond_0
    :goto_0
    return-object v5

    .line 185
    .restart local v3       #matchResult:I
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 186
    .local v1, id:J
    const/4 v8, 0x5

    if-ne v3, v8, :cond_1

    :goto_1
    invoke-static {v6}, Lcom/miui/gallery/data/LocalImage;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 187
    .local v4, path:Lcom/miui/gallery/data/Path;
    cmp-long v6, v1, v9

    if-ltz v6, :cond_0

    invoke-virtual {v4, v1, v2}, Lcom/miui/gallery/data/Path;->getChild(J)Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .end local v4           #path:Lcom/miui/gallery/data/Path;
    :cond_1
    move v6, v7

    .line 186
    goto :goto_1

    .line 191
    .end local v1           #id:J
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 192
    .restart local v1       #id:J
    const/4 v8, 0x7

    if-ne v3, v8, :cond_2

    :goto_2
    invoke-static {v6}, Lcom/miui/gallery/data/LocalVideo;->getItemPath(Z)Lcom/miui/gallery/data/Path;

    move-result-object v4

    .line 193
    .restart local v4       #path:Lcom/miui/gallery/data/Path;
    cmp-long v6, v1, v9

    if-ltz v6, :cond_0

    invoke-virtual {v4, v1, v2}, Lcom/miui/gallery/data/Path;->getChild(J)Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .end local v4           #path:Lcom/miui/gallery/data/Path;
    :cond_2
    move v6, v7

    .line 192
    goto :goto_2

    .line 196
    .end local v1           #id:J
    :pswitch_2
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/miui/gallery/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/miui/gallery/data/Path;

    move-result-object v5

    goto :goto_0

    .line 199
    :pswitch_3
    const/4 v6, 0x4

    invoke-direct {p0, p1, v6}, Lcom/miui/gallery/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/miui/gallery/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 202
    .end local v3           #matchResult:I
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "LocalSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    .line 211
    .local v1, object:Lcom/miui/gallery/data/MediaObject;
    instance-of v3, v1, Lcom/miui/gallery/data/LocalMediaItem;

    if-eqz v3, :cond_0

    .line 212
    check-cast v1, Lcom/miui/gallery/data/LocalMediaItem;

    .end local v1           #object:Lcom/miui/gallery/data/MediaObject;
    invoke-virtual {v1}, Lcom/miui/gallery/data/LocalMediaItem;->getBucketId()I

    move-result v0

    .line 213
    .local v0, bucketId:I
    if-nez v0, :cond_1

    .line 219
    .end local v0           #bucketId:I
    :cond_0
    :goto_0
    return-object v2

    .line 216
    .restart local v0       #bucketId:I
    :cond_1
    const-string v2, "/local/all"

    invoke-static {v2}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v2

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V
    .locals 13
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/MediaSource$PathId;",
            ">;",
            "Lcom/miui/gallery/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v7, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 227
    .local v4, n:I
    const/4 v2, 0x0

    .line 228
    .local v2, isInternalMedia:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/MediaSource$PathId;

    .line 232
    .local v6, pid:Lcom/miui/gallery/data/MediaSource$PathId;
    iget-object v8, v6, Lcom/miui/gallery/data/MediaSource$PathId;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v8}, Lcom/miui/gallery/data/Path;->getParent()Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 233
    .local v5, parent:Lcom/miui/gallery/data/Path;
    invoke-static {v5}, Lcom/miui/gallery/util/GalleryDBHelper;->getImageVideoPathType(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;

    move-result-object v3

    .line 234
    .local v3, itemPathType:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    iget-boolean v8, v3, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isValid:Z

    const-string v11, "the form is: /local/{image,video}/item/{external, internal}/#"

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v8, v11, v12}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-boolean v8, v3, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isImage:Z

    if-eqz v8, :cond_0

    .line 236
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_1
    if-lez v0, :cond_2

    .line 243
    iget-boolean v8, v3, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    if-ne v2, v8, :cond_1

    move v8, v9

    :goto_2
    const-string v11, "all media in the list should be the same type"

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v8, v11, v12}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v8, v10

    .line 243
    goto :goto_2

    .line 246
    :cond_2
    iget-boolean v2, v3, Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;->isInternalMedia:Z

    goto :goto_3

    .line 250
    .end local v3           #itemPathType:Lcom/miui/gallery/util/GalleryDBHelper$ItemPathType;
    .end local v5           #parent:Lcom/miui/gallery/data/Path;
    .end local v6           #pid:Lcom/miui/gallery/data/MediaSource$PathId;
    :cond_3
    invoke-direct {p0, v1, p2, v2, v9}, Lcom/miui/gallery/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;ZZ)V

    .line 251
    invoke-direct {p0, v7, p2, v2, v10}, Lcom/miui/gallery/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;ZZ)V

    .line 252
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 317
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 309
    return-void
.end method
