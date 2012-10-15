.class Lcom/miui/gallery/data/FilterSource;
.super Lcom/miui/gallery/data/MediaSource;
.source "FilterSource.java"


# instance fields
.field private mApplication:Lcom/miui/gallery/app/GalleryApp;

.field private mMatcher:Lcom/miui/gallery/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 29
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/miui/gallery/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/miui/gallery/data/FilterSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    .line 31
    new-instance v0, Lcom/miui/gallery/data/PathMatcher;

    invoke-direct {v0}, Lcom/miui/gallery/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/FilterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    .line 32
    iget-object v0, p0, Lcom/miui/gallery/data/FilterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/miui/gallery/data/Path;)Lcom/miui/gallery/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 40
    iget-object v5, p0, Lcom/miui/gallery/data/FilterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/miui/gallery/data/PathMatcher;->match(Lcom/miui/gallery/data/Path;)I

    move-result v1

    .line 41
    .local v1, matchType:I
    iget-object v5, p0, Lcom/miui/gallery/data/FilterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/miui/gallery/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 42
    .local v2, mediaType:I
    iget-object v5, p0, Lcom/miui/gallery/data/FilterSource;->mMatcher:Lcom/miui/gallery/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/miui/gallery/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, setsName:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/gallery/data/FilterSource;->mApplication:Lcom/miui/gallery/app/GalleryApp;

    invoke-interface {v5}, Lcom/miui/gallery/app/GalleryApp;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v0

    .line 44
    .local v0, dataManager:Lcom/miui/gallery/data/DataManager;
    invoke-virtual {v0, v4}, Lcom/miui/gallery/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    .line 45
    .local v3, sets:[Lcom/miui/gallery/data/MediaSet;
    packed-switch v1, :pswitch_data_0

    .line 49
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :pswitch_0
    new-instance v5, Lcom/miui/gallery/data/FilterSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/miui/gallery/data/FilterSet;-><init>(Lcom/miui/gallery/data/Path;Lcom/miui/gallery/data/DataManager;Lcom/miui/gallery/data/MediaSet;I)V

    return-object v5

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
