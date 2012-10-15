.class Lcom/miui/gallery/data/StorageSource;
.super Lcom/miui/gallery/data/StorageCloudSourceBase;
.source "StorageSource.java"


# static fields
.field static final sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    invoke-direct {v0}, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;-><init>()V

    sput-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    .line 17
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "storage"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/storage/all"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternTopSetPath:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/storage/image/item"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternImagePath:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    const-string v1, "/storage/video/item"

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternVideoPath:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    sget-object v1, Lcom/miui/gallery/data/StorageImage;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->imageItemPath:Lcom/miui/gallery/data/Path;

    .line 22
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    sget-object v1, Lcom/miui/gallery/data/StorageVideo;->ITEM_PATH:Lcom/miui/gallery/data/Path;

    iput-object v1, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->videoItemPath:Lcom/miui/gallery/data/Path;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    iget-object v0, v0, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/data/StorageCloudSourceBase;-><init>(Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createImageItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 47
    new-instance v0, Lcom/miui/gallery/data/StorageImage;

    invoke-static {p3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/data/StorageImage;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createMediaSet(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 42
    new-instance v0, Lcom/miui/gallery/data/StorageMediaSet;

    invoke-static {p3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/data/StorageMediaSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    return-object v0
.end method

.method protected createMediaSetSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 36
    const-string v0, "createMediaSetSet() is not supported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createVideoItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
    .locals 2
    .parameter "path"
    .parameter "app"
    .parameter "matcherVar"

    .prologue
    .line 52
    new-instance v0, Lcom/miui/gallery/data/StorageVideo;

    invoke-static {p3}, Lcom/miui/gallery/data/DataManager;->removeBracesFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/gallery/data/StorageVideo;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miui/gallery/data/StorageSource;->sSourceConst:Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    return-object v0
.end method
