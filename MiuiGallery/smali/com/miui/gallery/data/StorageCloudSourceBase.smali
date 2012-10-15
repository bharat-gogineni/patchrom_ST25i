.class public abstract Lcom/miui/gallery/data/StorageCloudSourceBase;
.super Lcom/miui/gallery/data/MediaSource;
.source "StorageCloudSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/miui/gallery/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "autority"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 40
    invoke-direct {p0, p2}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mUriMatcher:Landroid/content/UriMatcher;

    .line 41
    iput-object p1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 42
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternTopSetPath:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->matcherPatternVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    const-string v2, "image/item/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->authority:Ljava/lang/String;

    const-string v2, "video/item/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract createImageItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
.end method

.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 56
    .local v0, app:Lcom/miui/gallery/app/GalleryApp;
    iget-object v1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v1, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/gallery/data/StorageCloudSourceBase;->createMediaSetSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 61
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/data/StorageCloudSourceBase;->createMediaSet(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    goto :goto_0

    .line 64
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/data/StorageCloudSourceBase;->createImageItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/gallery/data/StorageCloudSourceBase;->createVideoItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;

    move-result-object v1

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract createMediaSet(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
.end method

.method protected abstract createMediaSetSet(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
.end method

.method protected abstract createVideoItem(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;Ljava/lang/String;)Lcom/miui/gallery/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;)Lcom/miui/gallery/data/Path;
    .locals 2
    .parameter "uri"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/miui/gallery/data/StorageCloudSourceBase;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 78
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, pathSegment:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->imageItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0

    .line 82
    .end local v0           #pathSegment:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #pathSegment:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/gallery/data/StorageCloudSourceBase;->getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;->videoItemPath:Lcom/miui/gallery/data/Path;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract getSourceConst()Lcom/miui/gallery/data/StorageCloudSourceBase$SourceConst;
.end method
