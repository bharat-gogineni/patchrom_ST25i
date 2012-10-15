.class public Lcom/miui/gallery/cloud/CloudVideo;
.super Lcom/miui/gallery/cloud/CloudMediaItem;
.source "CloudVideo.java"


# static fields
.field static final CLOUD_VIDEO_URI:Landroid/net/Uri;

.field static final ITEM_PATH:Lcom/miui/gallery/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "/com.miui.gallery.cloud.provider/video/item"

    invoke-static {v0}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    .line 25
    const-string v0, "content://com.miui.gallery.cloud.provider/video/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/cloud/CloudVideo;->CLOUD_VIDEO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "cursor"

    .prologue
    .line 29
    invoke-static {}, Lcom/miui/gallery/cloud/CloudVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/gallery/cloud/CloudMediaItem;-><init>(Lcom/miui/gallery/data/Path;JLandroid/database/Cursor;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 33
    invoke-static {}, Lcom/miui/gallery/cloud/CloudVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/miui/gallery/cloud/CloudMediaItem;-><init>(Lcom/miui/gallery/data/Path;JI)V

    .line 34
    return-void
.end method

.method public static getItemPath()Lcom/miui/gallery/data/Path;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miui/gallery/cloud/CloudVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/cloud/CloudVideo;->delete(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method protected getBaseUriForContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/miui/gallery/cloud/CloudVideo;->CLOUD_VIDEO_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/miui/gallery/cloud/CloudMediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    .line 84
    .local v0, details:Lcom/miui/gallery/data/MediaDetails;
    iget-object v1, p0, Lcom/miui/gallery/cloud/CloudVideo;->mDBCloud:Lcom/miui/gallery/data/DBCloud;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBCloud;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GalleryDBHelper;->appendVideoDetails(Lcom/miui/gallery/data/MediaDetails;I)Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x4

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/miui/gallery/cloud/CloudVideo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/util/GalleryDBHelper;->getVideoSupportedOperations(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/miui/gallery/util/ThreadPool$Job;
    .locals 2
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
    .line 42
    new-instance v0, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;

    invoke-static {}, Lcom/miui/gallery/app/GalleryAppImpl;->sGetGalleryContext()Lcom/miui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/gallery/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/miui/gallery/app/GalleryApp;Lcom/miui/gallery/data/MediaItem;I)V

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
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a cloud video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 68
    const-string v0, "CloudVideo"

    const-string v1, "video does not support rotate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
