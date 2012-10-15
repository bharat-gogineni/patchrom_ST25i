.class Lcom/miui/gallery/data/UriSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "UriSource.java"


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/miui/gallery/data/UriSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 35
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, segment:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 41
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, decoded:Ljava/lang/String;
    new-instance v2, Lcom/miui/gallery/data/UriImage;

    iget-object v3, p0, Lcom/miui/gallery/data/UriSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/miui/gallery/data/UriImage;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/Path;Landroid/net/Uri;)V

    return-object v2
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 3
    .parameter "uri"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/miui/gallery/data/UriSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/uri/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
