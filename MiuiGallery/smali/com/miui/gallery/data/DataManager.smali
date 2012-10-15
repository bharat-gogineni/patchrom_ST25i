.class public Lcom/miui/gallery/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/DataManager$NotifyBroker;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/miui/gallery/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/DataManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 110
    iput-object p1, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method public static addBracesToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageMediaItemPath(Ljava/lang/String;Z)Lcom/miui/gallery/data/Path;
    .locals 2
    .parameter "filePath"
    .parameter "isVideo"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 158
    .local v0, itemPath:Lcom/miui/gallery/data/Path;
    :goto_0
    invoke-static {p0}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    return-object v1

    .line 157
    .end local v0           #itemPath:Lcom/miui/gallery/data/Path;
    :cond_0
    sget-object v0, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    goto :goto_0
.end method

.method public static getStorageMediaSetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 153
    const-string v0, "/storage/all"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/gallery/data/DataManager;->addBracesToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const/16 v3, 0x7d

    const/4 v2, 0x2

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 149
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 145
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "/{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method addSource(Lcom/miui/gallery/data/MediaSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public delete(Lcom/miui/gallery/data/Path;Landroid/app/Activity;)V
    .locals 1
    .parameter "path"
    .parameter "activity"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/data/MediaObject;->delete(Landroid/app/Activity;)V

    .line 282
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 309
    if-nez p1, :cond_0

    move-object v1, v3

    .line 314
    :goto_0
    return-object v1

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/data/MediaSource;

    .line 311
    .local v2, source:Lcom/miui/gallery/data/MediaSource;
    invoke-virtual {v2, p1}, Lcom/miui/gallery/data/MediaSource;->findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 312
    .local v1, path:Lcom/miui/gallery/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #path:Lcom/miui/gallery/data/Path;
    .end local v2           #source:Lcom/miui/gallery/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 314
    goto :goto_0
.end method

.method public getAllMediaSet()Lcom/miui/gallery/data/MediaSet;
    .locals 2

    .prologue
    .line 230
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, allMediaPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    return-object v1
.end method

.method public getContentUriForExternal(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getContentUriForExternal()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContentUriForGallery(Lcom/miui/gallery/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getContentUriForGallery()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSource;

    .line 319
    .local v0, source:Lcom/miui/gallery/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gallery/data/MediaSource;->getDefaultSetOf(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 7
    .parameter "path"

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getObject()Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    .line 191
    .local v1, obj:Lcom/miui/gallery/data/MediaObject;
    if-eqz v1, :cond_2

    .line 194
    instance-of v4, v1, Lcom/miui/gallery/data/LocalMergeAlbum;

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/miui/gallery/data/LocalAlbum;

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    invoke-static {v1}, Lcom/miui/gallery/data/LocalAlbumSet;->isInvalidCachedAlbum(Lcom/miui/gallery/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/miui/gallery/data/LocalAlbumSet;->getBucketEntry(I)Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    .line 197
    .local v0, bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    const-string v4, "DataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMediaObject: return from cache with updated path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1, v0}, Lcom/miui/gallery/data/LocalAlbumSet;->getLocalAlbum(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    .line 214
    .end local v0           #bucketEntry:Lcom/miui/gallery/data/LocalAlbumSet$BucketEntry;
    .end local v1           #obj:Lcom/miui/gallery/data/MediaObject;
    :cond_1
    :goto_0
    return-object v1

    .line 204
    .restart local v1       #obj:Lcom/miui/gallery/data/MediaObject;
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/data/MediaSource;

    .line 205
    .local v3, source:Lcom/miui/gallery/data/MediaSource;
    if-nez v3, :cond_3

    .line 206
    const-string v4, "DataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find media source for path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {v3, p1}, Lcom/miui/gallery/data/MediaSource;->createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v2

    .line 211
    .local v2, object:Lcom/miui/gallery/data/MediaObject;
    if-nez v2, :cond_4

    .line 212
    const-string v4, "DataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create media object: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v2

    .line 214
    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 1
    .parameter "s"

    .prologue
    .line 218
    invoke-static {p1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "path"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;
    .locals 1
    .parameter "s"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/miui/gallery/data/MediaSet;
    .locals 5
    .parameter "segment"

    .prologue
    .line 235
    invoke-static {p1}, Lcom/miui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, seq:[Ljava/lang/String;
    array-length v1, v2

    .line 237
    .local v1, n:I
    new-array v3, v1, [Lcom/miui/gallery/data/MediaSet;

    .line 238
    .local v3, sets:[Lcom/miui/gallery/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 239
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/miui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/miui/gallery/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/miui/gallery/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 170
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :pswitch_1
    const-string v0, "/combo/{/local/image}"

    .line 169
    :goto_0
    return-object v0

    .line 165
    :pswitch_2
    const-string v0, "/combo/{/local/video}"

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v0, "/combo/{/local/all}"

    goto :goto_0

    .line 167
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 168
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 169
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    new-instance v2, Lcom/miui/gallery/data/LocalSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/LocalSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 119
    new-instance v2, Lcom/miui/gallery/data/MtpSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/MtpSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 120
    new-instance v2, Lcom/miui/gallery/data/ComboSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/ComboSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 121
    new-instance v2, Lcom/miui/gallery/data/ClusterSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/ClusterSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 122
    new-instance v2, Lcom/miui/gallery/data/FilterSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/FilterSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 123
    new-instance v2, Lcom/miui/gallery/data/StorageSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/StorageSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 124
    new-instance v2, Lcom/miui/gallery/cloud/CloudSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/cloud/CloudSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 126
    new-instance v2, Lcom/miui/gallery/data/UriSource;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/UriSource;-><init>(Lcom/miui/gallery/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/miui/gallery/data/DataManager;->addSource(Lcom/miui/gallery/data/MediaSource;)V

    .line 128
    iget v2, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSource;

    .line 130
    .local v1, source:Lcom/miui/gallery/data/MediaSource;
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/miui/gallery/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .parameter
    .parameter "consumer"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;",
            "Lcom/miui/gallery/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 256
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 257
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/data/Path;

    .line 258
    .local v6, path:Lcom/miui/gallery/data/Path;
    invoke-virtual {v6}, Lcom/miui/gallery/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 260
    .local v1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local v1       #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    new-instance v9, Lcom/miui/gallery/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/miui/gallery/data/MediaSource$PathId;-><init>(Lcom/miui/gallery/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;"
    .end local v6           #path:Lcom/miui/gallery/data/Path;
    .end local v7           #prefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 270
    .restart local v7       #prefix:Ljava/lang/String;
    iget-object v9, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gallery/data/MediaSource;

    .line 271
    .local v8, source:Lcom/miui/gallery/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/miui/gallery/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 273
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/miui/gallery/data/MediaSource$PathId;>;>;"
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #source:Lcom/miui/gallery/data/MediaSource;
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 364
    iget v2, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSource;

    .line 366
    .local v1, source:Lcom/miui/gallery/data/MediaSource;
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSource;->pause()V

    goto :goto_0

    .line 369
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/miui/gallery/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->getObject()Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/miui/gallery/data/ChangeNotifier;)V
    .locals 6
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 343
    .local v1, broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/miui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/miui/gallery/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 345
    if-nez v1, :cond_0

    .line 346
    new-instance v2, Lcom/miui/gallery/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/miui/gallery/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .end local v1           #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    .local v2, broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v3}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    iget-object v3, p0, Lcom/miui/gallery/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 351
    .end local v2           #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    invoke-virtual {v1, p2}, Lcom/miui/gallery/data/DataManager$NotifyBroker;->registerNotifier(Lcom/miui/gallery/data/ChangeNotifier;)V

    .line 353
    return-void

    .line 351
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    .restart local v2       #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/miui/gallery/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 356
    iget v2, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/gallery/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 357
    iget-object v2, p0, Lcom/miui/gallery/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/MediaSource;

    .line 358
    .local v1, source:Lcom/miui/gallery/data/MediaSource;
    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSource;->resume()V

    goto :goto_0

    .line 361
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/miui/gallery/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/miui/gallery/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "degrees"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/DataManager;->getMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/gallery/data/MediaObject;->rotate(I)V

    .line 286
    return-void
.end method
