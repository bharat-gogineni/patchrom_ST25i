.class Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;
.super Ljava/lang/Object;
.source "AlbumCacheBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/AlbumCacheBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/gallery/data/DBAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field private final mReverse:Z

.field private final mSortMethod:I

.field final synthetic this$0:Lcom/miui/gallery/data/AlbumCacheBase;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/AlbumCacheBase;I)V
    .locals 1
    .parameter
    .parameter "sortMethod"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->this$0:Lcom/miui/gallery/data/AlbumCacheBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    if-gez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mReverse:Z

    .line 185
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mSortMethod:I

    .line 186
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareNameAsAsc(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I
    .locals 3
    .parameter "leftAlbum"
    .parameter "rightAlbum"

    .prologue
    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 191
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getSortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/MediaSet;->getSortName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I
    .locals 5
    .parameter "leftAlbum"
    .parameter "rightAlbum"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, result:I
    iget v1, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mSortMethod:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 200
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getVisitCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->sign(I)I

    move-result v0

    .line 207
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->compareNameAsAsc(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I

    move-result v0

    .line 211
    :cond_1
    iget-boolean v1, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mReverse:Z

    if-eqz v1, :cond_2

    neg-int v0, v0

    .end local v0           #result:I
    :cond_2
    return v0

    .line 201
    .restart local v0       #result:I
    :cond_3
    iget v1, p0, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->mSortMethod:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/DBAlbum;->getMediaSet()Lcom/miui/gallery/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaSet;->getDate()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/miui/gallery/common/Utils;->sign(J)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    check-cast p1, Lcom/miui/gallery/data/DBAlbum;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/DBAlbum;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/data/AlbumCacheBase$BaseComparator;->compare(Lcom/miui/gallery/data/DBAlbum;Lcom/miui/gallery/data/DBAlbum;)I

    move-result v0

    return v0
.end method
