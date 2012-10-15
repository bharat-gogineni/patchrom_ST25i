.class public Lcom/miui/gallery/util/MediaItemComparator$NameComparator;
.super Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;
.source "MediaItemComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/MediaItemComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "isASC"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/MediaItemComparator$ComparatorBase;-><init>(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/data/MediaItem;)I
    .locals 4
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getNameForCompare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, result:I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;->mSortCoefficient:I

    mul-int/2addr v1, v0

    .line 51
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;->mSortCoefficient:I

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Lcom/miui/gallery/data/MediaItem;

    .end local p1
    check-cast p2, Lcom/miui/gallery/data/MediaItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/MediaItemComparator$NameComparator;->compare(Lcom/miui/gallery/data/MediaItem;Lcom/miui/gallery/data/MediaItem;)I

    move-result v0

    return v0
.end method
