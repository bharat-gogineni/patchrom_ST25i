.class Lcom/miui/gallery/data/ComboSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "ComboSource.java"


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/miui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 28
    const-string v0, "combo"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/miui/gallery/data/ComboSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 30
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/ComboSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 31
    iget-object v0, p0, Lcom/miui/gallery/data/ComboSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/combo/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/data/ComboSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/combo/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, segments:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_0

    .line 40
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

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/miui/gallery/data/ComboSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 44
    .local v0, dataManager:Lcom/miui/gallery/data/DataManager;
    iget-object v2, p0, Lcom/miui/gallery/data/ComboSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 46
    :pswitch_0
    new-instance v2, Lcom/miui/gallery/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/miui/gallery/data/ComboSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/miui/gallery/data/ComboAlbumSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/app/GalleryApp;[Lcom/miui/gallery/data/MediaSet;)V

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance v2, Lcom/miui/gallery/data/ComboAlbum;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/miui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-direct {v2, p1, v3, v4}, Lcom/miui/gallery/data/ComboAlbum;-><init>(Lcom/miui/gallery/data/Path;[Lcom/miui/gallery/data/MediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
