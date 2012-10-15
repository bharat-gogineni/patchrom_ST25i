.class public Lcom/miui/gallery/cloud/CloudSource;
.super Lcom/miui/gallery/data/StorageCloudSourceBase;
.source "CloudSource.java"


# static fields
.field static final sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    invoke-direct {v0}, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    .line 21
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "com.miui.gallery.cloud.provider"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/com.miui.gallery.cloud.provider/all"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternTopSetPath:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/com.miui.gallery.cloud.provider/image/item"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternImagePath:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/com.miui.gallery.cloud.provider/video/item"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternVideoPath:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    sget-object v1, Lcom/miui/gallery/cloud/CloudImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->imageItemPath:Lcom/miui/gallery/data/Path;

    .line 26
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    sget-object v1, Lcom/miui/gallery/cloud/CloudVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->videoItemPath:Lcom/miui/gallery/data/Path;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    iget-object v0, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/data/StorageCloudSourceBase;-><init>(Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected createImageItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 50
    new-instance v0, Lcom/miui/gallery/cloud/CloudImage;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/cloud/CloudImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V

    return-object v0
.end method

.method protected createMediaSet(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 45
    new-instance v0, Lcom/miui/gallery/cloud/CloudMediaSet;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/cloud/CloudMediaSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V

    return-object v0
.end method

.method protected createMediaSetSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 40
    new-instance v0, Lcom/miui/gallery/cloud/CloudMediaSetSet;

    invoke-direct {v0, p1}, Lcom/miui/gallery/cloud/CloudMediaSetSet;-><init>(Lcom/miui/gallery/data/Path;)V

    return-object v0
.end method

.method protected createVideoItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 55
    new-instance v0, Lcom/miui/gallery/cloud/CloudVideo;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/cloud/CloudVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;I)V

    return-object v0
.end method

.method protected getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/miui/gallery/cloud/CloudSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    return-object v0
.end method
